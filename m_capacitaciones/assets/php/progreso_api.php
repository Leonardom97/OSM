<?php
session_start();
require '../../../php/db_postgres.php';

header('Content-Type: application/json');

$action = $_GET['action'] ?? $_POST['action'] ?? '';

function jsonResponse($data) {
    echo json_encode($data);
    exit();
}

// Verify user is logged in
if (!isset($_SESSION['usuario_id']) && !isset($_SESSION['colaborador_id'])) {
    jsonResponse(['success' => false, 'error' => 'No autorizado']);
}

try {
    switch ($action) {
        case 'get_my_progress':
            // Get training progress for current user
            $cedula = $_SESSION['cedula'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula no encontrada']);
            }

            $stmt = $pg->prepare("
                SELECT * FROM v_progreso_capacitaciones
                WHERE ac_cedula = ?
            ");
            $stmt->execute([$cedula]);
            $progress = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if (!$progress) {
                $progress = [
                    'capacitaciones_programadas' => 0,
                    'capacitaciones_realizadas' => 0,
                    'porcentaje_completado' => 0
                ];
            }
            
            jsonResponse(['success' => true, 'data' => $progress]);
            break;

        case 'get_user_progress':
            // Get training progress for specific user by cedula
            $cedula = $_GET['cedula'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula requerida']);
            }

            $stmt = $pg->prepare("
                SELECT * FROM v_progreso_capacitaciones
                WHERE ac_cedula = ?
            ");
            $stmt->execute([$cedula]);
            $progress = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if (!$progress) {
                $progress = [
                    'capacitaciones_programadas' => 0,
                    'capacitaciones_realizadas' => 0,
                    'porcentaje_completado' => 0
                ];
            }
            
            jsonResponse(['success' => true, 'data' => $progress]);
            break;

        case 'get_my_trainings':
            // Get list of trainings (scheduled and completed) for current user
            $cedula = $_SESSION['cedula'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula no encontrada']);
            }

            // Get collaborator info
            $stmt = $pg->prepare("SELECT ac_id_cargo, ac_sub_area FROM adm_colaboradores WHERE ac_cedula = ? LIMIT 1");
            $stmt->execute([$cedula]);
            $colab = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if (!$colab) {
                jsonResponse(['success' => false, 'error' => 'Colaborador no encontrado']);
            }

            // Get scheduled trainings
            $stmt = $pg->prepare("
                SELECT 
                    p.id AS programacion_id,
                    t.id AS tema_id,
                    t.nombre AS tema,
                    p.frecuencia_meses,
                    r.nombre AS responsable,
                    'programada' AS estado,
                    NULL AS fecha_realizada
                FROM cap_programacion p
                INNER JOIN cap_tema t ON p.id_tema = t.id
                INNER JOIN adm_roles r ON p.id_rol_capacitador = r.id
                WHERE p.id_cargo = ?
                AND (p.sub_area IS NULL OR p.sub_area = ?)
                AND p.activo = true
                ORDER BY t.nombre
            ");
            $stmt->execute([$colab['ac_id_cargo'], $colab['ac_sub_area']]);
            $scheduled = $stmt->fetchAll(PDO::FETCH_ASSOC);

            // Get completed trainings
            $stmt = $pg->prepare("
                SELECT 
                    f.id AS formulario_id,
                    t.id AS tema_id,
                    t.nombre AS tema,
                    f.fecha AS fecha_realizada,
                    'completada' AS estado,
                    CONCAT_WS(' ', NULLIF(u.nombre1, ''), NULLIF(u.nombre2, ''), NULLIF(u.apellido1, ''), NULLIF(u.apellido2, '')) AS responsable
                FROM cap_formulario_asistente fa
                INNER JOIN cap_formulario f ON fa.id_formulario = f.id
                INNER JOIN cap_tema t ON f.id_tema = t.id
                LEFT JOIN adm_usuarios u ON f.id_usuario = u.id
                WHERE fa.cedula = ?
                AND fa.estado_aprovacion = 'aprobo'
                ORDER BY f.fecha DESC
            ");
            $stmt->execute([$cedula]);
            $completed = $stmt->fetchAll(PDO::FETCH_ASSOC);

            jsonResponse([
                'success' => true,
                'data' => [
                    'programadas' => $scheduled,
                    'completadas' => $completed
                ]
            ]);
            break;

        case 'get_last_trainings':
            // Get last N completed trainings for current user
            $cedula = $_SESSION['cedula'] ?? $_GET['cedula'] ?? null;
            $limit = $_GET['limit'] ?? 5;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula no encontrada']);
            }

            $stmt = $pg->prepare("
                SELECT 
                    t.nombre AS tema,
                    f.fecha,
                    pr.proceso AS proceso,
                    l.lugar
                FROM cap_formulario_asistente fa
                INNER JOIN cap_formulario f ON fa.id_formulario = f.id
                INNER JOIN cap_tema t ON f.id_tema = t.id
                LEFT JOIN cap_proceso pr ON f.id_proceso = pr.id
                LEFT JOIN cap_lugar l ON f.id_lugar = l.id
                WHERE fa.cedula = ?
                AND fa.estado_aprovacion = 'aprobo'
                ORDER BY f.fecha DESC
                LIMIT ?
            ");
            $stmt->execute([$cedula, $limit]);
            $trainings = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $trainings]);
            break;

        case 'get_pending_trainings':
            // Get pending trainings (scheduled but not completed)
            $cedula = $_SESSION['cedula'] ?? $_GET['cedula'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula no encontrada']);
            }

            $stmt = $pg->prepare("
                SELECT 
                    n.id,
                    t.nombre AS tema,
                    n.fecha_proxima,
                    n.dias_para_vencimiento,
                    n.estado,
                    c.cargo,
                    r.nombre AS responsable
                FROM cap_notificaciones n
                INNER JOIN cap_programacion p ON n.id_programacion = p.id
                INNER JOIN cap_tema t ON p.id_tema = t.id
                INNER JOIN adm_cargos c ON p.id_cargo = c.id_cargo
                INNER JOIN adm_roles r ON p.id_rol_capacitador = r.id
                INNER JOIN adm_colaboradores col ON n.id_colaborador = col.ac_id
                WHERE col.ac_cedula = ?
                AND n.estado IN ('pendiente', 'proximo_vencer', 'vencida')
                ORDER BY n.fecha_proxima ASC
            ");
            $stmt->execute([$cedula]);
            $pending = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $pending]);
            break;

        case 'get_scheduled_trainings':
            // Get scheduled trainings (programadas) - all trainings with their next scheduled date
            $cedula = $_SESSION['cedula'] ?? $_GET['cedula'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula no encontrada']);
            }

            $stmt = $pg->prepare("
                SELECT 
                    n.id,
                    t.nombre AS tema,
                    n.fecha_ultima_capacitacion,
                    n.fecha_proxima,
                    n.dias_para_vencimiento,
                    p.frecuencia_meses,
                    n.estado,
                    c.cargo,
                    p.sub_area,
                    r.nombre AS responsable,
                    CASE 
                        WHEN n.estado = 'vencida' THEN 'danger'
                        WHEN n.estado = 'proximo_vencer' THEN 'warning'
                        WHEN n.estado = 'vigente' THEN 'success'
                        ELSE 'info'
                    END AS badge_class
                FROM cap_notificaciones n
                INNER JOIN cap_programacion p ON n.id_programacion = p.id
                INNER JOIN cap_tema t ON p.id_tema = t.id
                INNER JOIN adm_cargos c ON p.id_cargo = c.id_cargo
                INNER JOIN adm_roles r ON p.id_rol_capacitador = r.id
                INNER JOIN adm_colaboradores col ON n.id_colaborador = col.ac_id
                WHERE col.ac_cedula = ?
                ORDER BY n.fecha_proxima ASC
            ");
            $stmt->execute([$cedula]);
            $scheduled = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $scheduled]);
            break;

        case 'get_completed_trainings_details':
            // Get detailed list of completed trainings for current user
            // Includes: tema, tipo de actividad, proceso, fecha, responsable
            $cedula = $_SESSION['cedula'] ?? $_SESSION['usuario'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula no encontrada']);
            }

            $stmt = $pg->prepare("
                SELECT 
                    t.nombre AS tema,
                    ta.nombre AS tipo_actividad,
                    pr.proceso,
                    f.fecha,
                    l.lugar,
                    CONCAT_WS(' ', NULLIF(u.nombre1, ''), NULLIF(u.nombre2, ''), NULLIF(u.apellido1, ''), NULLIF(u.apellido2, '')) AS responsable
                FROM cap_formulario_asistente fa
                INNER JOIN cap_formulario f ON fa.id_formulario = f.id
                INNER JOIN cap_tema t ON f.id_tema = t.id
                LEFT JOIN cap_tipo_actividad ta ON f.id_tipo_actividad = ta.id
                LEFT JOIN cap_proceso pr ON f.id_proceso = pr.id
                LEFT JOIN cap_lugar l ON f.id_lugar = l.id
                LEFT JOIN adm_usuarios u ON f.id_usuario = u.id
                WHERE fa.cedula = ?
                AND fa.estado_aprovacion = 'aprobo'
                ORDER BY f.fecha DESC
            ");
            $stmt->execute([$cedula]);
            $trainings = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $trainings]);
            break;

        case 'get_full_training_history':
            // Get complete training history for Excel export
            // Includes all fields from cap_formulario and cap_formulario_asistente
            $cedula = $_SESSION['cedula'] ?? $_SESSION['usuario'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula no encontrada']);
            }

            $stmt = $pg->prepare("
                SELECT 
                    pr.proceso,
                    l.lugar,
                    CONCAT_WS(' ', NULLIF(u.nombre1, ''), NULLIF(u.nombre2, ''), NULLIF(u.apellido1, ''), NULLIF(u.apellido2, '')) AS responsable_capacitacion,
                    t.nombre AS tema,
                    ta.nombre AS tipo_actividad,
                    f.fecha,
                    f.hora_inicio,
                    f.hora_final AS hora_fin,
                    fa.estado_aprovacion,
                    fa.empresa,
                    fa.cargo,
                    fa.área AS area,
                    fa.sub_área AS sub_area,
                    fa.rango,
                    fa.situacion
                FROM cap_formulario_asistente fa
                INNER JOIN cap_formulario f ON fa.id_formulario = f.id
                INNER JOIN cap_tema t ON f.id_tema = t.id
                LEFT JOIN cap_tipo_actividad ta ON f.id_tipo_actividad = ta.id
                LEFT JOIN cap_proceso pr ON f.id_proceso = pr.id
                LEFT JOIN cap_lugar l ON f.id_lugar = l.id
                LEFT JOIN adm_usuarios u ON f.id_usuario = u.id
                WHERE fa.cedula = ?
                ORDER BY f.fecha DESC
            ");
            $stmt->execute([$cedula]);
            $trainings = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $trainings]);
            break;

        case 'get_all_progress':
            // Get training progress for all collaborators (admin view)
            $stmt = $pg->query("
                SELECT * FROM v_progreso_capacitaciones
                ORDER BY porcentaje_completado ASC, nombre_completo ASC
            ");
            $allProgress = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $allProgress]);
            break;

        default:
            jsonResponse(['success' => false, 'error' => 'Acción no válida']);
    }
} catch (Exception $e) {
    jsonResponse(['success' => false, 'error' => $e->getMessage()]);
}
