<?php
// Incluye la conexión a la base de datos principal
require_once 'db_postgres_prueba.php';
// Cabecera para respuesta en formato JSON UTF-8
header('Content-Type: application/json; charset=utf-8');

// Paginación segura
$page = isset($_GET['page']) ? max(1, intval($_GET['page'])) : 1;
$pageSize = isset($_GET['pageSize']) ? max(1, intval($_GET['pageSize'])) : 25;
$offset = ($page - 1) * $pageSize;

// Filtros dinámicos. Valida columna sólo con caracteres permitidos (alfa-numérico y guion bajo)
$where = [];
$params = [];
foreach ($_GET as $key => $value) {
    if (strpos($key, 'filtro_') === 0 && $value !== '') {
        // Limpia el nombre de la columna
        $col = preg_replace('/[^a-zA-Z0-9_]/', '', substr($key, 7));
        $where[] = "$col ILIKE ?";
        $params[] = '%' . $value . '%';
    }
}
$whereSql = $where ? 'WHERE ' . implode(' AND ', $where) : '';

// Orden opcional (limpia el nombre de columna)
$orderSql = '';
if (!empty($_GET['ordenColumna'])) {
    $ordenColumna = preg_replace('/[^a-zA-Z0-9_]/', '', $_GET['ordenColumna']);
    $ordenAsc = isset($_GET['ordenAsc']) && $_GET['ordenAsc'] == '0' ? 'DESC' : 'ASC';
    $orderSql = "ORDER BY $ordenColumna $ordenAsc";
}

// Consulta principal con paginación, filtro y orden
$sql = "SELECT * FROM monitoreos_generales $whereSql $orderSql LIMIT $pageSize OFFSET $offset";
$stmt = $pg->prepare($sql);
$stmt->execute($params);
$datos = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Consulta para obtener el total de registros filtrados
$sqlTotal = "SELECT COUNT(*) FROM monitoreos_generales $whereSql";
$stmtTotal = $pg->prepare($sqlTotal);
$stmtTotal->execute($params);
$total = $stmtTotal->fetchColumn();

// Respuesta final en JSON
echo json_encode([
    'datos' => $datos,
    'total' => intval($total)
]);
?>