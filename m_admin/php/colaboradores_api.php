<?php
require_once('../../php/db_postgres.php');
header('Content-Type: application/json');

// --- GET: LISTADO CON FILTRO GLOBAL, PAGINACIÓN ---
if ($_SERVER['REQUEST_METHOD'] === 'GET' && !isset($_GET['id'])) {
    $limit = isset($_GET['limit']) ? intval($_GET['limit']) : 10;
    $offset = isset($_GET['offset']) ? intval($_GET['offset']) : 0;
    $search = isset($_GET['search']) ? trim($_GET['search']) : "";

    $filtroSQL = "";
    if ($search !== "") {
        $search = addslashes($search);
        $filtroSQL = "AND (
            LOWER(c.ac_cedula) LIKE LOWER('%$search%')
            OR LOWER(c.ac_nombre1) LIKE LOWER('%$search%')
            OR LOWER(c.ac_nombre2) LIKE LOWER('%$search%')
            OR LOWER(c.ac_apellido1) LIKE LOWER('%$search%')
            OR LOWER(c.ac_apellido2) LIKE LOWER('%$search%')
        )";
    }

    $sql = "
        SELECT
            c.ac_id,
            c.ac_cedula,
            c.ac_nombre1,
            c.ac_nombre2,
            c.ac_apellido1,
            c.ac_apellido2,
            c.ac_contraseña,
            s.situación AS situacion,
            e.emp_nombre,
            ca.cargo,
            ca.rango_cargo,
            a.area,
            a.sub_area,
            c.ac_id_rol
        FROM adm_colaboradores c
        LEFT JOIN adm_empresa e ON CAST(c.ac_empresa AS INTEGER) = e.emp_id
        LEFT JOIN adm_cargos ca ON c.ac_id_cargo = ca.id_cargo
        LEFT JOIN adm_área a ON c.ac_id_area = a.id_area
        LEFT JOIN adm_situación s ON c.ac_id_situación = s.id
        WHERE 1=1 $filtroSQL
        ORDER BY c.ac_nombre1 ASC
        LIMIT $limit OFFSET $offset
    ";
    $stmt = $pg->query($sql);
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Total para paginación
    $sql_total = "
        SELECT COUNT(*) as total
        FROM adm_colaboradores c
        WHERE 1=1 $filtroSQL
    ";
    $total = $pg->query($sql_total)->fetch(PDO::FETCH_ASSOC)['total'];

    echo json_encode(['success' => true, 'data' => $rows, 'total' => intval($total)]);
    exit;
}

// --- GET: CONSULTA POR ID ---
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $sql = "
        SELECT
            c.ac_id,
            c.ac_cedula,
            c.ac_nombre1,
            c.ac_nombre2,
            c.ac_apellido1,
            c.ac_apellido2,
            c.ac_contraseña,
            s.situación AS situacion,
            e.emp_nombre,
            ca.cargo,
            ca.rango_cargo,
            a.area,
            a.sub_area,
            c.ac_id_rol
        FROM adm_colaboradores c
        LEFT JOIN adm_empresa e ON CAST(c.ac_empresa AS INTEGER) = e.emp_id
        LEFT JOIN adm_cargos ca ON c.ac_id_cargo = ca.id_cargo
        LEFT JOIN adm_área a ON c.ac_id_area = a.id_area
        LEFT JOIN adm_situación s ON c.ac_id_situación = s.id
        WHERE c.ac_id = ?
        LIMIT 1
    ";
    $stmt = $pg->prepare($sql);
    $stmt->execute([$id]);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    echo json_encode(['success' => true, 'data' => $row]);
    exit;
}

// --- POST: CAMBIO DE CONTRASEÑA ---
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['id']) && isset($_POST['nueva_contraseña'])) {
    $id = intval($_POST['id']);
    $nueva_contraseña = $_POST['nueva_contraseña'];
    $sql = "UPDATE adm_colaboradores SET ac_contraseña = ? WHERE ac_id = ?";
    $stmt = $pg->prepare($sql);
    $success = $stmt->execute([$nueva_contraseña, $id]);
    if ($success) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'error' => 'No se pudo actualizar']);
    }
    exit;
}

echo json_encode(['success' => false, 'error' => 'Petición no válida']);