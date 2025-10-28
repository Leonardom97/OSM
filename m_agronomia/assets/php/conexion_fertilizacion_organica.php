<?php
/**
 * conexion_fertilizacion_organica.php
 *
 * Proporciona un endpoint para listar registros de fertilizacion_organica con:
 * - Filtros dinámicos (ILIKE por columnas, valida nombre)
 * - Orden (opcional y seguro)
 * - Paginación
 * - Total de resultados filtrados
 */

require_once 'db_postgres_prueba.php';
// Responde en formato JSON
header('Content-Type: application/json');

// Manejo de paginación segura
$page = isset($_GET['page']) ? max(1, intval($_GET['page'])) : 1;
$pageSize = isset($_GET['pageSize']) ? max(1, intval($_GET['pageSize'])) : 25;
$offset = ($page - 1) * $pageSize;

// Filtros dinámicos seguros (valida nombre de columna)
$where = [];
$params = [];
foreach ($_GET as $key => $value) {
    if (strpos($key, 'filtro_') === 0 && $value !== '') {
        $col = substr($key, 7);
        // Sólo acepta columnas válidas (letras, números y guion bajo)
        if (!preg_match('/^[a-zA-Z0-9_]+$/', $col)) continue;
        $where[] = "\"$col\" ILIKE ?";
        $params[] = '%' . $value . '%';
    }
}
$whereSql = $where ? 'WHERE ' . implode(' AND ', $where) : '';

// Orden (opcional y seguro)
$orderSql = '';
if (!empty($_GET['ordenColumna'])) {
    $ordenColumna = preg_replace('/[^a-zA-Z0-9_]/', '', $_GET['ordenColumna']);
    $ordenAsc = isset($_GET['ordenAsc']) && $_GET['ordenAsc'] == '0' ? 'DESC' : 'ASC';
    $orderSql = "ORDER BY \"$ordenColumna\" $ordenAsc";
}

// Consulta principal con paginación, filtro y orden
$sql = "SELECT * FROM fertilizacion_organica $whereSql $orderSql LIMIT $pageSize OFFSET $offset";
$stmt = $pg->prepare($sql);
$stmt->execute($params);
$datos = $stmt->fetchAll();

// Consulta de total de registros filtrados
$sqlTotal = "SELECT COUNT(*) FROM fertilizacion_organica $whereSql";
$stmtTotal = $pg->prepare($sqlTotal);
$stmtTotal->execute($params);
$total = $stmtTotal->fetchColumn();

// Devuelve resultado en JSON
echo json_encode([
    'datos' => $datos,
    'total' => intval($total)
]);
?>