<?php
session_start();
header('Content-Type: application/json');

require_once __DIR__ . '/db_postgres.php';
require_once __DIR__ . '/session_manager.php';

// Obtener datos del formulario
$cedula = trim($_POST['Ingreso_cedula'] ?? '');
$clave = trim($_POST['Password_colaborador'] ?? '');
$force_login = isset($_POST['force_login']) && $_POST['force_login'] === 'true';

// Validación básica
if (empty($cedula) || empty($clave)) {
    echo json_encode(['success' => false, 'message' => 'La cédula y la contraseña son obligatorias']);
    exit;
}

// Initialize session manager
$sessionManager = new SessionManager($pg);

// Get client information for logging
$ip_address = $_SERVER['REMOTE_ADDR'] ?? 'Unknown';
$user_agent = $_SERVER['HTTP_USER_AGENT'] ?? 'Unknown';
$host_name = gethostbyaddr($ip_address);

try {
    // Buscar colaborador ACTIVO (situación válida) por cédula
    $stmt = $pg->prepare("
        SELECT ac_id, ac_cedula, ac_contraseña, ac_nombre1, ac_apellido1
        FROM adm_colaboradores
        WHERE ac_cedula = :cedula
        AND ac_id_situación IN ('P', 'A', 'V')
        ORDER BY ac_id DESC
        LIMIT 1
    ");
    $stmt->execute([':cedula' => $cedula]);
    $usuario = $stmt->fetch();

    if (!$usuario) {
        // Log failed attempt
        $stmt = $pg->prepare("
            INSERT INTO adm_intentos_login 
            (usuario_identificador, tipo_usuario, exitoso, ip_address, user_agent, host_name, mensaje_error)
            VALUES (:cedula, 'colaborador', FALSE, :ip, :agent, :host, 'Colaborador no autorizado o no activo')
        ");
        $stmt->execute([
            ':cedula' => $cedula,
            ':ip' => $ip_address,
            ':agent' => $user_agent,
            ':host' => $host_name
        ]);
        
        echo json_encode(['success' => false, 'message' => 'Colaborador no autorizado o no activo']);
        exit;
    }

    // Validar contraseña directamente (en texto plano, como lo tienes por ahora)
    // SECURITY NOTE: Consider using password_hash() and password_verify() in the future
    if ($usuario['ac_contraseña'] !== $clave) {
        // Log failed attempt
        $stmt = $pg->prepare("
            INSERT INTO adm_intentos_login 
            (usuario_identificador, tipo_usuario, exitoso, ip_address, user_agent, host_name, mensaje_error)
            VALUES (:cedula, 'colaborador', FALSE, :ip, :agent, :host, 'Contraseña incorrecta')
        ");
        $stmt->execute([
            ':cedula' => $cedula,
            ':ip' => $ip_address,
            ':agent' => $user_agent,
            ':host' => $host_name
        ]);
        
        echo json_encode(['success' => false, 'message' => 'Contraseña incorrecta']);
        exit;
    }

    // Check for existing active session
    if ($force_login) {
        // Force login by closing existing sessions
        $sessionResult = $sessionManager->forceLogin($usuario['ac_id'], 'colaborador', $cedula);
    } else {
        // Try to register login normally
        $sessionResult = $sessionManager->registerLogin($usuario['ac_id'], 'colaborador', $cedula);
    }
    
    if (!$sessionResult['success']) {
        // Existing session found
        $existingSession = $sessionResult['existing_session'] ?? null;
        echo json_encode([
            'success' => false,
            'message' => $sessionResult['message'],
            'concurrent_session' => true,
            'existing_session' => [
                'ip' => $existingSession['ip_address'] ?? 'Desconocida',
                'host' => $existingSession['host_name'] ?? 'Desconocido',
                'fecha_inicio' => $existingSession['fecha_inicio'] ?? null
            ]
        ]);
        exit;
    }

    // Guardar sesión
    $_SESSION['usuario_id'] = $usuario['ac_id'];
    $_SESSION['usuario'] = $usuario['ac_cedula'];
    $_SESSION['cedula'] = $usuario['ac_cedula'];  // Also store cedula explicitly
    $_SESSION['nombre'] = $usuario['ac_nombre1'] . ' ' . $usuario['ac_apellido1'];
    $_SESSION['rol'] = 'usuario';
    $_SESSION['rol_id'] = 2;
    $_SESSION['tipo_usuario'] = 'colaborador'; // ✅ IMPORTANTE para verificar_sesion.php

    echo json_encode(['success' => true, 'redirect' => '../panel.html']);
} catch (PDOException $e) {
    error_log("Login error: " . $e->getMessage());
    echo json_encode(['success' => false, 'message' => 'Error en el servidor: ' . $e->getMessage()]);
    exit;
}
