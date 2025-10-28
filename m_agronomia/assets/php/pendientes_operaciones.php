<?php
require_once 'db_temporal.php';
header('Content-Type: application/json; charset=utf-8');
$entidad = isset($_GET['entidad']) ? strtolower(trim($_GET['entidad'])) : 'monitoreos_generales';
if (!preg_match('/^[a-zA-Z0-9_]+$/', $entidad)) {
    echo json_encode(['datos'=>[], 'total'=>0, 'idCol'=>'', 'columnas'=>[]]);
    exit;
}
function list_columns(PDO $pg, $table) {
    $st = $pg->prepare("SELECT column_name FROM information_schema.columns WHERE table_schema='public' AND table_name=:t ORDER BY ordinal_position");
    $st->execute(['t'=>$table]);
    return $st->fetchAll(PDO::FETCH_COLUMN) ?: [];
}
$idCol = $entidad . '_id';
$columnas = list_columns($pg, $entidad);
$sql = "SELECT * FROM $entidad WHERE LOWER(COALESCE(supervision,'pendiente')) = 'pendiente'";
$stmt = $pg->prepare($sql);
$stmt->execute();
$datos = $stmt->fetchAll();
echo json_encode([
    'datos' => $datos,
    'total' => count($datos),
    'idCol' => $idCol,
    'columnas' => $columnas
]);
?>