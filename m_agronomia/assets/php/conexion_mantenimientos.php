<?php
/**
 * conexion_mantenimientos.php
 *
 * Listado de registros de la tabla mantenimientos (base principal).
 * Ofrece:
 *  - Filtros dinámicos (?filtro_col=valor)
 *  - Orden dinámico (?ordenColumna=col&ordenAsc=0|1)
 *  - Paginación
 * 
 * Nota: No valida existencia real de columna en filtro/orden (riesgo de error si se manipula la URL).
 */

// Incluye la conexión a la base de datos principal
require_once 'db_postgres_prueba.php';
// Responde en formato JSON
header('Content-Type: application/json');

// Paginación
$page = isset($_GET['page']) ? max(1, intval($_GET['page'])) : 1;
$pageSize = isset($_GET['pageSize']) ? max(1, intval($_GET['pageSize'])) : 25;
$offset = ($page - 1) * $pageSize;

// Filtros dinámicos (Nombres de columna sin validar completamente)
$where = [];
$params = [];
foreach ($_GET as $key => $value) {
    if (strpos($key, 'filtro_') === 0 && $value !== '') {
        $col = substr($key, 7);
        $where[] = "$col ILIKE ?";
        $params[] = '%' . $value . '%';
    }
}
$whereSql = $where ? 'WHERE ' . implode(' AND ', $where) : '';

// Orden (opcional, sólo limpia caracteres extraños)
$orderSql = '';
if (!empty($_GET['ordenColumna'])) {
    $ordenColumna = preg_replace('/[^a-zA-Z0-9_]/', '', $_GET['ordenColumna']);
    $ordenAsc = isset($_GET['ordenAsc']) && $_GET['ordenAsc'] == '0' ? 'DESC' : 'ASC';
    $orderSql = "ORDER BY $ordenColumna $ordenAsc";
}

// Consulta principal con paginación, filtro y orden
$sql = "SELECT * FROM mantenimientos $whereSql $orderSql LIMIT $pageSize OFFSET $offset";
$stmt = $pg->prepare($sql);
$stmt->execute($params);
$datos = $stmt->fetchAll();

// Consulta para obtener el total de registros filtrados
$sqlTotal = "SELECT COUNT(*) FROM mantenimientos $whereSql";
$stmtTotal = $pg->prepare($sqlTotal);
$stmtTotal->execute($params);
$total = $stmtTotal->fetchColumn();

// Devuelve resultado en JSON
echo json_encode([
    'datos' => $datos,
    'total' => intval($total)
]);
?>