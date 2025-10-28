<?php
/**
 * conexion_reporte_lote_monitoreo.php
 *
 * Endpoint que lista registros de reporte_lote_monitoreo con:
 *  - Paginación
 *  - Filtros dinámicos seguros (ILIKE y regex en nombre de columna)
 *  - Orden opcional seguro
 */

// Incluye la conexión a la base de datos principal
require_once 'db_postgres_prueba.php';
// Cabecera para respuesta en formato JSON
header('Content-Type: application/json');

// Paginación segura
$page = isset($_GET['page']) ? max(1, intval($_GET['page'])) : 1;
$pageSize = isset($_GET['pageSize']) ? max(1, intval($_GET['pageSize'])) : 25;
$offset = ($page - 1) * $pageSize;

// Filtros dinámicos y seguros
$where = [];
$params = [];
foreach ($_GET as $key => $value) {
    if (strpos($key, 'filtro_') === 0 && $value !== '') {
        $col = substr($key, 7);
        // Solo acepta columnas válidas (letras, números y guion bajo)
        if (!preg_match('/^[a-zA-Z0-9_]+$/', $col)) continue;
        $where[] = "\"$col\" ILIKE ?";
        $params[] = '%' . $value . '%';
    }
}
$whereSql = $where ? 'WHERE ' . implode(' AND ', $where) : '';

// Orden opcional y seguro
$orderSql = '';
if (!empty($_GET['ordenColumna'])) {
    $ordenColumna = preg_replace('/[^a-zA-Z0-9_]/', '', $_GET['ordenColumna']);
    $ordenAsc = (isset($_GET['ordenAsc']) && $_GET['ordenAsc'] == '0') ? 'DESC' : 'ASC';
    $orderSql = "ORDER BY \"$ordenColumna\" $ordenAsc";
}

// Consulta principal con paginación, filtro y orden
$sql = "SELECT * FROM reporte_lote_monitoreo $whereSql $orderSql LIMIT $pageSize OFFSET $offset";
$stmt = $pg->prepare($sql);
$stmt->execute($params);
$datos = $stmt->fetchAll();

// Consulta para obtener el total de registros filtrados
$sqlTotal = "SELECT COUNT(*) FROM reporte_lote_monitoreo $whereSql";
$stmtTotal = $pg->prepare($sqlTotal);
$stmtTotal->execute($params);
$total = $stmtTotal->fetchColumn();

// Respuesta final en JSON
echo json_encode([
    'datos' => $datos,
    'total' => intval($total)
]);
?>