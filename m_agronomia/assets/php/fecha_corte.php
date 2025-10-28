<?php
// assets/php/fecha_corte.php
// Endpoint que depende exclusivamente de la sesión PHP y del rol en $_SESSION.
// NO aceptar headers como fuente de rol en producción.

ini_set('display_errors', 0);
error_reporting(E_ALL);

if (session_status() !== PHP_SESSION_ACTIVE) {
    session_start();
}

header('Content-Type: application/json; charset=utf-8');

// CORS mínimo (solo si tu front y backend están en distinto origen ajústalo con cuidado)
if (!empty($_SERVER['HTTP_ORIGIN'])) {
    // En producción, sustituye por lista de orígenes permitidos
    header('Access-Control-Allow-Origin: ' . $_SERVER['HTTP_ORIGIN']);
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Methods: GET, POST, PUT, OPTIONS');
    header('Access-Control-Allow-Headers: Content-Type');
}
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(204);
    exit;
}

/* ---------------------------
   Incluir conexión a BD (ruta desde www/m_agronomia/assets/php -> ../../../php/db_postgres.php)
   --------------------------- */
$expected = __DIR__ . '/../../../php/db_postgres.php';
if (!file_exists($expected)) {
    http_response_code(500);
    echo json_encode(['ok' => false, 'message' => 'No se encontró db_postgres.php', 'expected' => $expected]);
    exit;
}

try {
    require_once $expected;
} catch (Throwable $e) {
    http_response_code(500);
    echo json_encode(['ok' => false, 'message' => 'Error al incluir db_postgres.php', 'error' => $e->getMessage()]);
    exit;
}

// Obtener PDO
$db = null;
if (isset($pg) && $pg instanceof PDO) $db = $pg;
elseif (isset($pdo) && $pdo instanceof PDO) $db = $pdo;

if (!($db instanceof PDO)) {
    http_response_code(500);
    echo json_encode(['ok' => false, 'message' => 'db_postgres.php cargado pero no define $pg ni $pdo como PDO']);
    exit;
}

/* ---------------------------
   Helpers de sesión/rol
   --------------------------- */
function normalize_role_value($v) {
    if (is_array($v)) return implode(',', array_map('trim', $v));
    return trim((string)$v);
}

function buscar_rol_en_session(): ?string {
    // Buscamos en múltiples ubicaciones comunes
    if (session_status() !== PHP_SESSION_ACTIVE) return null;

    // 1) Clave directa 'rol' o 'role' (string)
    foreach (['rol','role','user_role','role_name'] as $k) {
        if (!empty($_SESSION[$k])) return normalize_role_value($_SESSION[$k]);
    }

    // 2) Clave 'roles' como array de strings o array de objetos [{id, nombre}, ...]
    if (!empty($_SESSION['roles'])) {
        $r = $_SESSION['roles'];
        if (is_string($r)) return normalize_role_value($r);
        if (is_array($r)) {
            // si es array de objetos/arrays y cada item tiene 'nombre' o 'name'
            foreach ($r as $item) {
                if (is_array($item) && !empty($item['nombre'])) return normalize_role_value($item['nombre']);
                if (is_array($item) && !empty($item['name'])) return normalize_role_value($item['name']);
                if (is_string($item)) return normalize_role_value($item);
            }
        }
    }

    // 3) Clave usuario/usuario_info que contenga role/rol
    foreach (['usuario','user','user_data','usuario_data','usuario_info'] as $k) {
        if (!empty($_SESSION[$k]) && is_array($_SESSION[$k])) {
            $u = $_SESSION[$k];
            foreach (['role','roles','rol','role_name','nombre'] as $rk) {
                if (!empty($u[$rk])) {
                    return normalize_role_value($u[$rk]);
                }
            }
        }
    }

    return null;
}

function es_administrador(?string $rol): bool {
    if (!$rol) return false;
    $r = mb_strtolower($rol);
    if (strpos($r, 'administrador') !== false) return true;
    if (strpos($r, 'admin') !== false) return true;
    // si rol contiene un id numérico 1 (posible)
    $parts = preg_split('/[,\s;]+/', $r, -1, PREG_SPLIT_NO_EMPTY);
    foreach ($parts as $p) {
        if (ctype_digit($p) && intval($p) === 1) return true;
    }
    return false;
}

/* ---------------------------
   Lógica principal
   --------------------------- */
$ID_FIX = 1;
$method = $_SERVER['REQUEST_METHOD'] ?? 'GET';

if ($method === 'GET') {
    try {
        $stmt = $db->prepare("SELECT id_fc, fecha_corte FROM agr_fecha_corte WHERE id_fc = :id LIMIT 1");
        $stmt->execute([':id' => $ID_FIX]);
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if (!$row) {
            http_response_code(404);
            echo json_encode(['ok' => false, 'message' => 'No existe fecha de corte']);
            exit;
        }
        $row['fecha_corte'] = isset($row['fecha_corte']) ? (string)$row['fecha_corte'] : null;
        echo json_encode(['ok' => true, 'row' => $row]);
        exit;
    } catch (Throwable $e) {
        http_response_code(500);
        echo json_encode(['ok' => false, 'message' => 'Error al leer BD', 'error' => $e->getMessage()]);
        exit;
    }
}

if (in_array($method, ['POST', 'PUT'])) {
    // OBLIGATORIO: rol desde sesión
    $rol_raw = buscar_rol_en_session();
    if (!$rol_raw) {
        http_response_code(403);
        echo json_encode(['ok' => false, 'message' => 'Rol no encontrado en sesión. Debes iniciar sesión.']);
        exit;
    }
    if (!es_administrador($rol_raw)) {
        http_response_code(403);
        echo json_encode(['ok' => false, 'message' => 'Solo Administrador puede actualizar la fecha', 'detected_role' => $rol_raw]);
        exit;
    }

    $body = file_get_contents('php://input');
    $input = json_decode($body, true);
    $fecha = $input['fecha_corte'] ?? null;
    if (!$fecha || !preg_match('/^\d{4}-\d{2}-\d{2}$/', $fecha)) {
        http_response_code(400);
        echo json_encode(['ok' => false, 'message' => 'fecha_corte requerida y debe ser YYYY-MM-DD', 'provided' => $fecha]);
        exit;
    }

    try {
        $db->beginTransaction();
        $sel = $db->prepare("SELECT id_fc FROM agr_fecha_corte WHERE id_fc = :id FOR UPDATE");
        $sel->execute([':id' => $ID_FIX]);
        $row = $sel->fetch(PDO::FETCH_ASSOC);

        if ($row) {
            $upd = $db->prepare("UPDATE agr_fecha_corte SET fecha_corte = :fecha WHERE id_fc = :id RETURNING id_fc, fecha_corte");
            $upd->execute([':fecha' => $fecha, ':id' => $ID_FIX]);
            $res = $upd->fetch(PDO::FETCH_ASSOC);
            $db->commit();
            http_response_code(200);
            echo json_encode(['ok' => true, 'message' => 'Fecha actualizada', 'id_fc' => (int)$res['id_fc'], 'fecha_corte' => (string)$res['fecha_corte']]);
            exit;
        } else {
            $ins = $db->prepare("INSERT INTO agr_fecha_corte (id_fc, fecha_corte) VALUES (:id, :fecha) RETURNING id_fc, fecha_corte");
            $ins->execute([':id' => $ID_FIX, ':fecha' => $fecha]);
            $res = $ins->fetch(PDO::FETCH_ASSOC);
            try {
                $db->exec("SELECT setval(pg_get_serial_sequence('agr_fecha_corte','id_fc'), (SELECT COALESCE(MAX(id_fc),1) FROM agr_fecha_corte))");
            } catch (Throwable $e) {}
            $db->commit();
            http_response_code(201);
            echo json_encode(['ok' => true, 'message' => 'Fecha creada', 'id_fc' => (int)$res['id_fc'], 'fecha_corte' => (string)$res['fecha_corte']]);
            exit;
        }
    } catch (Throwable $e) {
        if ($db->inTransaction()) $db->rollBack();
        http_response_code(500);
        echo json_encode(['ok' => false, 'message' => 'Error al guardar', 'error' => $e->getMessage()]);
        exit;
    }
}

http_response_code(405);
echo json_encode(['ok' => false, 'message' => 'Método no permitido']);
exit;