<?php
// php/logout_session.php
// Endpoint para cerrar la sesión actual (invalida en adm_sesiones y destruye cookie/session)

require_once __DIR__ . '/db_postgres.php';
require_once __DIR__ . '/php/session_manager.php'; // si el archivo está en php/, ajusta ruta

header('Content-Type: application/json; charset=utf-8');

try {
    // identificar session id desde cookie o session
    $sid = $_COOKIE['session_id'] ?? null;
    if (empty($sid)) {
        if (session_status() !== PHP_SESSION_ACTIVE) session_start();
        $sid = session_id();
    }

    if (empty($sid)) {
        echo json_encode(['success' => false, 'message' => 'No hay session_id disponible']); exit;
    }

    $sm = new SessionManager();
    $result = $sm->disconnectSessionById($sid, null, 'logout');

    // borrar cookie
    setcookie('session_id', '', time() - 3600, '/', '', true, true);

    // destruir session PHP
    if (session_status() === PHP_SESSION_ACTIVE) {
        $_SESSION = [];
        session_unset();
        session_destroy();
    }

    echo json_encode(['success' => true, 'result' => $result]);
} catch (Throwable $e) {
    http_response_code(500);
    echo json_encode(['success' => false, 'error' => $e->getMessage()]);
}
?>