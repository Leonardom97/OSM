<?php
/**
 * Session Manager
 * Handles session tracking, concurrent login prevention, and session management
 */

require_once __DIR__ . '/db_postgres.php';

class SessionManager {
    private $pg;
    
    public function __construct($pg_connection) {
        $this->pg = $pg_connection;
    }
    
    /**
     * Register a new login session
     * @return array ['success' => bool, 'message' => string, 'existing_session' => array|null]
     */
    public function registerLogin($usuario_id, $tipo_usuario, $cedula) {
        try {
            // Check for existing active sessions
            $stmt = $this->pg->prepare("
                SELECT s.id, s.session_id, s.ip_address, s.host_name, s.fecha_inicio
                FROM adm_sesiones s
                WHERE s.usuario_id = :usuario_id 
                AND s.tipo_usuario = :tipo_usuario
                AND s.activa = TRUE
                ORDER BY s.fecha_actividad DESC
                LIMIT 1
            ");
            $stmt->execute([
                ':usuario_id' => $usuario_id,
                ':tipo_usuario' => $tipo_usuario
            ]);
            $existingSession = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if ($existingSession) {
                // Return existing session info for notification
                return [
                    'success' => false,
                    'message' => 'Ya existe una sesión activa para este usuario',
                    'existing_session' => $existingSession
                ];
            }
            
            // Get client information
            $ip_address = $this->getClientIP();
            $user_agent = $_SERVER['HTTP_USER_AGENT'] ?? 'Unknown';
            $host_name = gethostbyaddr($ip_address);
            $session_id = session_id();
            
            // Log login attempt
            $this->logLoginAttempt($cedula, $tipo_usuario, true, $ip_address, $user_agent, $host_name, null);
            
            // Delete old inactive sessions with the same session_id to prevent unique constraint violation
            // This can happen when browser is closed and restored, reusing the same PHP session_id
            $stmt = $this->pg->prepare("
                DELETE FROM adm_sesiones 
                WHERE session_id = :session_id 
                AND activa = FALSE
            ");
            $stmt->execute([':session_id' => $session_id]);
            
            // Create new session record
            $stmt = $this->pg->prepare("
                INSERT INTO adm_sesiones 
                (usuario_id, tipo_usuario, session_id, ip_address, user_agent, host_name, fecha_inicio, fecha_actividad, activa)
                VALUES (:usuario_id, :tipo_usuario, :session_id, :ip_address, :user_agent, :host_name, NOW(), NOW(), TRUE)
                RETURNING id
            ");
            $stmt->execute([
                ':usuario_id' => $usuario_id,
                ':tipo_usuario' => $tipo_usuario,
                ':session_id' => $session_id,
                ':ip_address' => $ip_address,
                ':user_agent' => $user_agent,
                ':host_name' => $host_name
            ]);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            
            // Store session tracking ID in PHP session
            $_SESSION['sesion_db_id'] = $result['id'];
            
            return [
                'success' => true,
                'message' => 'Sesión registrada exitosamente',
                'session_db_id' => $result['id']
            ];
            
        } catch (PDOException $e) {
            error_log("Session registration error: " . $e->getMessage());
            return [
                'success' => false,
                'message' => 'Error al registrar la sesión: ' . $e->getMessage()
            ];
        }
    }
    
    /**
     * Force login by closing existing session
     */
    public function forceLogin($usuario_id, $tipo_usuario, $cedula) {
        try {
            // Close existing sessions
            $stmt = $this->pg->prepare("
                UPDATE adm_sesiones 
                SET activa = FALSE, 
                    razon_cierre = 'concurrent_login',
                    fecha_cierre = NOW()
                WHERE usuario_id = :usuario_id 
                AND tipo_usuario = :tipo_usuario
                AND activa = TRUE
            ");
            $stmt->execute([
                ':usuario_id' => $usuario_id,
                ':tipo_usuario' => $tipo_usuario
            ]);
            
            // Now register the new login
            return $this->registerLogin($usuario_id, $tipo_usuario, $cedula);
            
        } catch (PDOException $e) {
            error_log("Force login error: " . $e->getMessage());
            return [
                'success' => false,
                'message' => 'Error al forzar inicio de sesión: ' . $e->getMessage()
            ];
        }
    }
    
    /**
     * Update session activity timestamp
     */
    public function updateActivity($session_db_id) {
        try {
            $stmt = $this->pg->prepare("
                UPDATE adm_sesiones 
                SET fecha_actividad = NOW()
                WHERE id = :session_id AND activa = TRUE
            ");
            $stmt->execute([':session_id' => $session_db_id]);
            return true;
        } catch (PDOException $e) {
            error_log("Update activity error: " . $e->getMessage());
            return false;
        }
    }
    
    /**
     * Close a session (logout)
     */
    public function closeSession($session_db_id, $razon = 'logout', $cerrada_por = null) {
        try {
            $stmt = $this->pg->prepare("
                UPDATE adm_sesiones 
                SET activa = FALSE,
                    razon_cierre = :razon,
                    cerrada_por = :cerrada_por,
                    fecha_cierre = NOW()
                WHERE id = :session_id
            ");
            $stmt->execute([
                ':session_id' => $session_db_id,
                ':razon' => $razon,
                ':cerrada_por' => $cerrada_por
            ]);
            return true;
        } catch (PDOException $e) {
            error_log("Close session error: " . $e->getMessage());
            return false;
        }
    }
    
    /**
     * Get all active sessions (for admin panel)
     */
    public function getActiveSessions() {
        try {
            $stmt = $this->pg->query("
                SELECT 
                    s.id,
                    s.usuario_id,
                    s.tipo_usuario,
                    s.ip_address,
                    s.host_name,
                    s.fecha_inicio,
                    s.fecha_actividad,
                    CASE 
                        WHEN s.tipo_usuario = 'admin' THEN u.nombre1 || ' ' || u.apellido1
                        WHEN s.tipo_usuario = 'colaborador' THEN c.ac_nombre1 || ' ' || c.ac_apellido1
                    END as nombre_usuario,
                    CASE 
                        WHEN s.tipo_usuario = 'admin' THEN u.id_usuario
                        WHEN s.tipo_usuario = 'colaborador' THEN c.ac_cedula
                    END as identificador,
                    CASE 
                        WHEN s.tipo_usuario = 'admin' THEN u.cedula
                        WHEN s.tipo_usuario = 'colaborador' THEN c.ac_cedula
                    END as cedula
                FROM adm_sesiones s
                LEFT JOIN adm_usuarios u ON s.usuario_id = u.id AND s.tipo_usuario = 'admin'
                LEFT JOIN adm_colaboradores c ON s.usuario_id = c.ac_id AND s.tipo_usuario = 'colaborador'
                WHERE s.activa = TRUE
                ORDER BY s.fecha_actividad DESC
            ");
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            error_log("Get active sessions error: " . $e->getMessage());
            return [];
        }
    }
    
    /**
     * Get session history for a user
     */
    public function getUserSessionHistory($usuario_id, $tipo_usuario, $limit = 10) {
        try {
            $stmt = $this->pg->prepare("
                SELECT 
                    s.id,
                    s.ip_address,
                    s.host_name,
                    s.fecha_inicio,
                    s.fecha_cierre,
                    s.activa,
                    s.razon_cierre,
                    CASE 
                        WHEN s.cerrada_por IS NOT NULL THEN u.nombre1 || ' ' || u.apellido1
                        ELSE NULL
                    END as cerrada_por_nombre
                FROM adm_sesiones s
                LEFT JOIN adm_usuarios u ON s.cerrada_por = u.id
                WHERE s.usuario_id = :usuario_id AND s.tipo_usuario = :tipo_usuario
                ORDER BY s.fecha_inicio DESC
                LIMIT :limit
            ");
            $stmt->execute([
                ':usuario_id' => $usuario_id,
                ':tipo_usuario' => $tipo_usuario,
                ':limit' => $limit
            ]);
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            error_log("Get session history error: " . $e->getMessage());
            return [];
        }
    }
    
    /**
     * Get login attempts history
     */
    public function getLoginAttempts($limit = 50, $exitoso = null) {
        try {
            $sql = "
                SELECT 
                    usuario_identificador,
                    tipo_usuario,
                    exitoso,
                    ip_address,
                    host_name,
                    mensaje_error,
                    fecha
                FROM adm_intentos_login
            ";
            
            if ($exitoso !== null) {
                $sql .= " WHERE exitoso = :exitoso";
            }
            
            $sql .= " ORDER BY fecha DESC LIMIT :limit";
            
            $stmt = $this->pg->prepare($sql);
            
            if ($exitoso !== null) {
                $stmt->bindValue(':exitoso', $exitoso, PDO::PARAM_BOOL);
            }
            $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
            
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            error_log("Get login attempts error: " . $e->getMessage());
            return [];
        }
    }
    
    /**
     * Log a login attempt
     */
    private function logLoginAttempt($cedula, $tipo_usuario, $exitoso, $ip_address, $user_agent, $host_name, $mensaje_error) {
        try {
            $stmt = $this->pg->prepare("
                INSERT INTO adm_intentos_login 
                (usuario_identificador, tipo_usuario, exitoso, ip_address, user_agent, host_name, mensaje_error)
                VALUES (:cedula, :tipo_usuario, :exitoso, :ip_address, :user_agent, :host_name, :mensaje_error)
            ");
            $stmt->execute([
                ':cedula' => $cedula,
                ':tipo_usuario' => $tipo_usuario,
                ':exitoso' => $exitoso,
                ':ip_address' => $ip_address,
                ':user_agent' => $user_agent,
                ':host_name' => $host_name,
                ':mensaje_error' => $mensaje_error
            ]);
        } catch (PDOException $e) {
            error_log("Log login attempt error: " . $e->getMessage());
        }
    }
    
    /**
     * Get client IP address
     */
    private function getClientIP() {
        $ip = '';
        if (isset($_SERVER['HTTP_CLIENT_IP'])) {
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } elseif (isset($_SERVER['HTTP_X_FORWARDED'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED'];
        } elseif (isset($_SERVER['HTTP_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_FORWARDED_FOR'];
        } elseif (isset($_SERVER['HTTP_FORWARDED'])) {
            $ip = $_SERVER['HTTP_FORWARDED'];
        } elseif (isset($_SERVER['REMOTE_ADDR'])) {
            $ip = $_SERVER['REMOTE_ADDR'];
        } else {
            $ip = 'UNKNOWN';
        }
        return $ip;
    }
    
    /**
     * Check if session is still valid in database
     */
    public function isSessionValid($session_db_id) {
        try {
            $stmt = $this->pg->prepare("
                SELECT activa FROM adm_sesiones 
                WHERE id = :session_id
            ");
            $stmt->execute([':session_id' => $session_db_id]);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            
            return $result && $result['activa'];
        } catch (PDOException $e) {
            error_log("Session validation error: " . $e->getMessage());
            return false;
        }
    }
    
    /**
     * Close inactive sessions (older than timeout)
     */
    public function closeInactiveSessions($timeout_minutes = 120) {
        try {
            $stmt = $this->pg->prepare("
                UPDATE adm_sesiones 
                SET activa = FALSE,
                    razon_cierre = 'timeout',
                    fecha_cierre = NOW()
                WHERE activa = TRUE 
                AND fecha_actividad < NOW() - INTERVAL '1 minute' * :timeout
            ");
            $stmt->execute([':timeout' => $timeout_minutes]);
            return $stmt->rowCount();
        } catch (PDOException $e) {
            error_log("Close inactive sessions error: " . $e->getMessage());
            return 0;
        }
    }
}
