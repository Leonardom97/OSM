<?php
session_start();
require '../../../php/db_postgres.php';

$action = $_GET['action'] ?? $_POST['action'] ?? '';

function jsonResponse($data) {
    header('Content-Type: application/json');
    echo json_encode($data);
    exit();
}

if ($action == 'get_select') {
    $tabla = $_GET['tabla'];
    $col = $_GET['col'];
    $stmt = $pg->query("SELECT id, \"$col\" FROM \"$tabla\" ORDER BY \"$col\" ASC");
    $datos = $stmt->fetchAll(PDO::FETCH_ASSOC);
    jsonResponse($datos);

} elseif ($action == 'get_usuario') {
    $cedula = $_GET['cedula'];
    $stmt = $pg->prepare("SELECT nombre1, nombre2, apellido1, apellido2 FROM adm_usuarios WHERE cedula = ?");
    $stmt->execute([$cedula]);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    jsonResponse($row ?: []);

} elseif ($action == 'get_colaborador') {
    $cedula = $_GET['cedula'];
    // Usar el nombre correcto: ac_id_situación (con tilde)
    $stmt = $pg->prepare("SELECT * FROM adm_colaboradores WHERE ac_cedula = ? AND ac_id_situación IN ('A', 'V', 'P') LIMIT 1");
    $stmt->execute([$cedula]);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    jsonResponse($row ?: []);

} elseif ($action == 'get_colaborador_relations') {
    $empresa_id = $_GET['ac_empresa'];
    $cargo_id = $_GET['ac_id_cargo'];
    $area_id = $_GET['ac_id_area'];
    $sub_area_id = $_GET['ac_sub_area'];
    $rango_id = $_GET['ac_rango'];
    $situacion_id = $_GET['ac_id_situacion'];

    // Empresa
    $empresa = $pg->prepare("SELECT emp_nombre FROM adm_empresa WHERE emp_id = ?");
    $empresa->execute([$empresa_id]);
    $empresa_nombre = $empresa->fetchColumn();

    // Cargo y Rango (ambos de la tabla adm_cargos)
    $cargo = $pg->prepare("SELECT cargo, rango_cargo FROM adm_cargos WHERE id_cargo = ?");
    $cargo->execute([$cargo_id]);
    $cargo_row = $cargo->fetch(PDO::FETCH_ASSOC);
    $cargo_nombre = $cargo_row['cargo'] ?? '';
    $rango_nombre = $cargo_row['rango_cargo'] ?? '';

    // Área
    $area = $pg->prepare("SELECT area FROM adm_área WHERE id_area = ?");
    $area->execute([$area_id]);
    $area_nombre = $area->fetchColumn();

    // Sub-área (si está en la misma tabla adm_área)
    $sub_area = $pg->prepare("SELECT sub_area FROM adm_área WHERE id_area = ?");
    $sub_area->execute([$sub_area_id]);
    $sub_area_nombre = $sub_area->fetchColumn();

    // Situación
    $situacion = $pg->prepare("SELECT situación FROM adm_situación WHERE id = ?");
    $situacion->execute([$situacion_id]);
    $situacion_nombre = $situacion->fetchColumn();

    jsonResponse([
        'empresa' => $empresa_nombre ?: '',
        'cargo' => $cargo_nombre ?: '',
        'area' => $area_nombre ?: '',
        'sub_area' => $sub_area_nombre ?: '',
        'rango' => $rango_nombre ?: '',
        'situacion' => $situacion_nombre ?: ''
    ]);

} elseif ($action == 'save_formulario') {
    $data = json_decode(file_get_contents('php://input'), true);

    $required = ['proceso', 'lugar', 'responsable_cedula', 'responsable_nombre', 'tipo_actividad', 'tema', 'hora_inicio', 'hora_final', 'fecha', 'asistentes'];
    foreach ($required as $field) {
        if (!isset($data[$field]) || (is_string($data[$field]) && trim($data[$field]) === '') || ($field == 'asistentes' && (!is_array($data[$field]) || count($data[$field]) == 0))) {
            jsonResponse(['success' => false, 'error' => "Falta campo obligatorio: $field"]);
        }
    }

    // Buscar id_usuario por cédula
    $stmt = $pg->prepare("SELECT id FROM adm_usuarios WHERE cedula = ?");
    $stmt->execute([$data['responsable_cedula']]);
    $usuario = $stmt->fetch(PDO::FETCH_ASSOC);
    $id_usuario = $usuario ? $usuario['id'] : null;

    if (!$id_usuario) {
        jsonResponse(['success' => false, 'error' => 'Responsable no encontrado']);
    }

    // Get the current session user ID for tracking who created the form
    $creado_por = $_SESSION['usuario_id'] ?? null;
    if (!$creado_por) {
        jsonResponse(['success' => false, 'error' => 'No hay sesión activa']);
    }

    // Inserta en cap_formulario with creator tracking
    $stmt = $pg->prepare("INSERT INTO cap_formulario (id_proceso, id_lugar, id_usuario, id_tipo_actividad, id_tema, hora_inicio, hora_final, fecha, observaciones, creado_por, fecha_creacion)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW()) RETURNING id");
    $stmt->execute([
        $data['proceso'],
        $data['lugar'],
        $id_usuario,
        $data['tipo_actividad'],
        $data['tema'],
        $data['hora_inicio'],
        $data['hora_final'],
        $data['fecha'],
        $data['observaciones'] ?? '',
        $creado_por
    ]);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    $id_formulario = $row['id'];

    // Inserta asistentes
    $stmt_asistente = $pg->prepare("INSERT INTO cap_formulario_asistente (
            id_formulario, cedula, estado_aprovacion, nombre, empresa, cargo, área, sub_área, rango, situacion
        ) VALUES (
            ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
        )");

    foreach ($data['asistentes'] as $asistente) {
        $stmt_asistente->execute([
            $id_formulario,
            $asistente['cedula'],
            $asistente['estado_aprovacion'],
            $asistente['nombre'] ?? '',
            $asistente['empresa'] ?? '',
            $asistente['cargo'] ?? '',
            $asistente['area'] ?? '',
            $asistente['sub_area'] ?? '',
            $asistente['rango'] ?? '',
            $asistente['situacion'] ?? ''
        ]);
    }
    
    // Update training notifications after saving the form
    // This will calculate next training dates for all affected collaborators
    try {
        $pg->query("SELECT actualizar_notificaciones_capacitacion()");
    } catch (Exception $e) {
        // Log error but don't fail the form save
        error_log("Error updating training notifications: " . $e->getMessage());
    }
    
    jsonResponse(['success' => true, 'id_formulario' => $id_formulario]);
}

jsonResponse(['success' => false, 'error' => 'Acción no reconocida']);