<?php
if (basename(__FILE__) == basename($_SERVER['SCRIPT_FILENAME'])) {
    http_response_code(403);
    exit('Acceso prohibido');
}

$serverName = "192.168.150.199";
$database   = "SVN_G4026_OSM";
$username   = "sa";
$password   = "Sap2015";
$port       = "1433";

try {
    // Agregamos TrustServerCertificate=true para evitar el error SSL
    $dsn = "sqlsrv:Server=$serverName,$port;Database=$database;TrustServerCertificate=true";

    $sqlsrv = new PDO($dsn, $username, $password, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    ]);

    echo "✅ Conexión exitosa a SQL Server.";

} catch (PDOException $e) {
    die("❌ Error al conectar a SQL Server: " . $e->getMessage());
}
?>
