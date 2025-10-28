<?php
session_start();

require_once __DIR__ . '/db_postgres.php';
require_once __DIR__ . '/session_manager.php';

// Close session in database if exists
if (isset($_SESSION['sesion_db_id'])) {
    $sessionManager = new SessionManager($pg);
    $sessionManager->closeSession($_SESSION['sesion_db_id'], 'logout', null);
}

// Clear all session data
session_unset();
session_destroy();

// Delete the session cookie
if (isset($_COOKIE[session_name()])) {
    setcookie(session_name(), '', time() - 3600, '/');
}

// Return JSON response for AJAX calls
if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) === 'xmlhttprequest') {
    header('Content-Type: application/json');
    echo json_encode(['success' => true, 'message' => 'Sesión cerrada correctamente']);
    exit;
} else {
    // Redirect for direct access
    header("Location: ../index.html");
    exit;
}
