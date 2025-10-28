<?php
/**
 * Archivo de conexión (db_postgres_clipa.php)
 *
 * Propósito:
 *  - Establecer conexión PDO a una base PostgreSQL específica (clipa?).
 *  - Configura modo de errores con excepciones.
 *
 * Seguridad:
 *  - Evita acceso directo (si se llama en el navegador).
 *  - Las credenciales están en texto plano: considerar variables de entorno en producción.
 *
 * Variables resultantes:
 *  - $pg: instancia PDO activa.
 */

if (basename(__FILE__) == basename($_SERVER['SCRIPT_FILENAME'])) {
    http_response_code(403); exit('Acceso prohibido');
}

// Parámetros de conexión (reemplazar en producción con variables de entorno / secrets)
$host = 'localhost';
$db   = 'postgres';
$user = 'postgres';
$pass = '12345';
$port = '5432';

try {
    $dsn = "pgsql:host=$host;port=$port;dbname=$db";
    $pg = new PDO($dsn, $user, $pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, 
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    // No exponer detalles en producción
    die("Error al conectar a PostgreSQL: " . $e->getMessage());
}
?>