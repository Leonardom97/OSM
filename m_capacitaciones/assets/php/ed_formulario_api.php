<?php
session_start();
require_once __DIR__ . '/../../../php/db_postgres.php';
header('Content-Type: application/json');

function respond($data) {
    echo json_encode($data);
    exit;
}

$action = $_GET['action'] ?? ($_POST['action'] ?? null);

if ($action === 'leer_formulario') {
    $id = intval($_GET['id'] ?? 0);
    if ($id > 0) {
        $formSt = $pg->prepare("SELECT * FROM cap_formulario WHERE id = ?");
        $formSt->execute([$id]);
        $formulario = $formSt->fetch(PDO::FETCH_ASSOC);

        $temas = $pg->query("SELECT id, nombre FROM cap_tema ORDER BY nombre")->fetchAll(PDO::FETCH_ASSOC);
        $procesos = $pg->query("SELECT id, proceso AS nombre FROM cap_proceso ORDER BY proceso")->fetchAll(PDO::FETCH_ASSOC);
        $lugares = $pg->query("SELECT id, lugar AS nombre FROM cap_lugar ORDER BY lugar")->fetchAll(PDO::FETCH_ASSOC);
        $actividades = $pg->query("SELECT id, nombre FROM cap_tipo_actividad ORDER BY nombre")->fetchAll(PDO::FETCH_ASSOC);

        $respSt = $pg->prepare("SELECT * FROM adm_usuarios WHERE id = ?");
        $respSt->execute([$formulario['id_usuario']]);
        $responsable = $respSt->fetch(PDO::FETCH_ASSOC);

        // Get creator information
        $creador = null;
        if ($formulario['creado_por']) {
            $creadorSt = $pg->prepare("SELECT id, nombre1, apellido1, id_usuario FROM adm_usuarios WHERE id = ?");
            $creadorSt->execute([$formulario['creado_por']]);
            $creador = $creadorSt->fetch(PDO::FETCH_ASSOC);
        }

        // Get editor information
        $editor = null;
        if ($formulario['editado_por']) {
            $editorSt = $pg->prepare("SELECT id, nombre1, apellido1, id_usuario FROM adm_usuarios WHERE id = ?");
            $editorSt->execute([$formulario['editado_por']]);
            $editor = $editorSt->fetch(PDO::FETCH_ASSOC);
        }

        $asisSt = $pg->prepare("SELECT * FROM cap_formulario_asistente WHERE id_formulario = ?");
        $asisSt->execute([$id]);
        $asistentes = $asisSt->fetchAll(PDO::FETCH_ASSOC);

        respond([
            'formulario' => $formulario,
            'temas' => $temas,
            'procesos' => $procesos,
            'lugares' => $lugares,
            'actividades' => $actividades,
            'responsable' => $responsable,
            'creador' => $creador,
            'editor' => $editor,
            'asistentes' => $asistentes
        ]);
    } else {
        respond(['error' => 'ID no válido']);
    }
}

if ($action === 'listar') {
    $limit = max(1, intval($_GET['limit'] ?? 10));
    $page = max(1, intval($_GET['page'] ?? 1));
    $offset = ($page - 1) * $limit;
    $search = trim($_GET['search'] ?? '');

    $where = '';
    $params = [];
    if ($search !== '') {
        $where = "WHERE (
            CAST(f.id AS TEXT) ILIKE :search OR
            t.nombre ILIKE :search OR
            u.cedula ILIKE :search OR
            u.nombre1 ILIKE :search OR
            u.apellido1 ILIKE :search
        )";
        $params[':search'] = "%$search%";
    }

    $countSql = "
        SELECT COUNT(DISTINCT f.id)
        FROM cap_formulario f
        LEFT JOIN cap_tema t ON f.id_tema = t.id
        LEFT JOIN adm_usuarios u ON f.id_usuario = u.id
        $where
    ";
    $countSt = $pg->prepare($countSql);
    $countSt->execute($params);
    $total = $countSt->fetchColumn();

    $sql = "
        SELECT
            f.id,
            t.nombre AS tema,
            f.fecha,
            u.cedula AS responsable_cedula,
            CONCAT(u.nombre1, ' ', COALESCE(u.nombre2, ''), ' ', COALESCE(u.apellido1, ''), ' ', COALESCE(u.apellido2, '')) AS responsable_nombre,
            (SELECT COUNT(*) FROM cap_formulario_asistente WHERE id_formulario = f.id) AS asistentes
        FROM cap_formulario f
        LEFT JOIN cap_tema t ON f.id_tema = t.id
        LEFT JOIN adm_usuarios u ON f.id_usuario = u.id
        $where
        GROUP BY f.id, t.nombre, f.fecha, u.cedula, u.nombre1, u.nombre2, u.apellido1, u.apellido2
        ORDER BY f.id DESC
        LIMIT $limit OFFSET $offset
    ";
    $st = $pg->prepare($sql);
    $st->execute($params);
    $rows = $st->fetchAll(PDO::FETCH_ASSOC);

    respond([
        'rows' => $rows,
        'total' => $total,
        'limit' => $limit,
        'page' => $page,
        'pages' => max(1, ceil($total / $limit))
    ]);
}

if ($action === 'eliminar') {
    $id = intval($_POST['id'] ?? 0);
    if ($id > 0) {
        $pg->beginTransaction();
        $pg->prepare("DELETE FROM cap_formulario_asistente WHERE id_formulario = ?")->execute([$id]);
        $pg->prepare("DELETE FROM cap_formulario WHERE id = ?")->execute([$id]);
        $pg->commit();
        respond(['ok' => true]);
    } else {
        respond(['error' => 'ID no válido']);
    }
}

if ($action === 'buscar_colaborador') {
    $cedula = $_GET['cedula'] ?? '';
    $st = $pg->prepare("
        SELECT * FROM adm_colaboradores 
        WHERE ac_cedula = ? 
        AND ac_id_situación IN ('A', 'V', 'P')
        LIMIT 1
    ");
    $st->execute([$cedula]);
    $col = $st->fetch(PDO::FETCH_ASSOC);
    respond(['colaborador' => $col]);
}

if ($action === 'agregar_asistente') {
    $id_formulario = intval($_POST['id_formulario'] ?? 0);
    $cedula = $_POST['cedula'] ?? '';
    $estado_aprovacion = $_POST['estado_aprovacion'] ?? '';

    if ($estado_aprovacion === '') {
        respond(['error' => 'Debes seleccionar estado de aprobación']);
    }

    $st = $pg->prepare("
        SELECT * FROM adm_colaboradores 
        WHERE ac_cedula = ? 
        AND ac_id_situación IN ('A', 'V', 'P')
        LIMIT 1
    ");
    $st->execute([$cedula]);
    $col = $st->fetch(PDO::FETCH_ASSOC);

    if (!$col) respond(['error' => 'No existe colaborador']);

    $empSt = $pg->prepare("SELECT emp_nombre FROM adm_empresa WHERE emp_id = ?");
    $empSt->execute([$col['ac_empresa']]);
    $empresa = $empSt->fetchColumn();

    $cargoSt = $pg->prepare("SELECT cargo, rango_cargo FROM adm_cargos WHERE id_cargo = ?");
    $cargoSt->execute([$col['ac_id_cargo']]);
    $cargoRow = $cargoSt->fetch(PDO::FETCH_ASSOC);

    $areaSt = $pg->prepare("SELECT area, sub_area FROM adm_área WHERE id_area = ?");
    $areaSt->execute([$col['ac_id_area']]);
    $areaRow = $areaSt->fetch(PDO::FETCH_ASSOC);

    $sitSt = $pg->prepare("SELECT situación FROM adm_situación WHERE id = ?");
    $sitSt->execute([$col['ac_id_situación']]);
    $situacion = $sitSt->fetchColumn();

    $nombre = trim($col['ac_nombre1'] . ' ' . $col['ac_nombre2'] . ' ' . $col['ac_apellido1'] . ' ' . $col['ac_apellido2']);

    $pg->prepare("
        INSERT INTO cap_formulario_asistente (
            id_formulario, cedula, estado_aprovacion, nombre, empresa, cargo, área, sub_área, rango, situacion
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ")->execute([
        $id_formulario, $cedula, $estado_aprovacion, $nombre, $empresa,
        $cargoRow['cargo'], $areaRow['area'], $areaRow['sub_area'], $cargoRow['rango_cargo'], $situacion
    ]);

    respond(['ok' => true]);
}

if ($action === 'actualizar_formulario') {
    $id = intval($_POST['id'] ?? 0);
    $id_proceso = $_POST['id_proceso'] ?? null;
    $id_lugar = $_POST['id_lugar'] ?? null;
    $id_tipo_actividad = $_POST['id_tipo_actividad'] ?? null;
    $id_tema = $_POST['id_tema'] ?? null;
    $hora_inicio = $_POST['hora_inicio'] ?? null;
    $hora_final = $_POST['hora_final'] ?? null;
    $fecha = $_POST['fecha'] ?? null;
    $observaciones = $_POST['observaciones'] ?? null;
    $id_usuario = $_POST['id_usuario'] ?? null;

    // Get the current session user ID for tracking who edited the form
    $editado_por = $_SESSION['usuario_id'] ?? null;
    if (!$editado_por) {
        respond(['error' => 'No hay sesión activa']);
    }

    if ($id > 0) {
        $st = $pg->prepare("
            UPDATE cap_formulario SET
                id_proceso = ?,
                id_lugar = ?,
                id_tipo_actividad = ?,
                id_tema = ?,
                hora_inicio = ?,
                hora_final = ?,
                fecha = ?,
                observaciones = ?,
                id_usuario = ?,
                editado_por = ?,
                fecha_edicion = NOW()
            WHERE id = ?
        ");
        $st->execute([
            $id_proceso, $id_lugar, $id_tipo_actividad, $id_tema,
            $hora_inicio, $hora_final, $fecha, $observaciones, $id_usuario,
            $editado_por, $id
        ]);
        respond(['ok' => true]);
    } else {
        respond(['error' => 'ID no válido']);
    }
}

if ($action === 'eliminar_asistente') {
    $id = intval($_POST['id'] ?? 0);
    if ($id > 0) {
        $pg->prepare("DELETE FROM cap_formulario_asistente WHERE id = ?")->execute([$id]);
        respond(['ok' => true]);
    } else {
        respond(['error' => 'ID no válido']);
    }
}

respond(['error' => 'Acción no válida']);