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
        case 'get_my_notifications':
            // Get notifications for current user (collaborator)
            $cedula = $_SESSION['cedula'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula no encontrada']);
            }

            // Get collaborator ID
            $stmt = $pg->prepare("SELECT ac_id FROM adm_colaboradores WHERE ac_cedula = ? LIMIT 1");
            $stmt->execute([$cedula]);
            $colaborador_id = $stmt->fetchColumn();

            if (!$colaborador_id) {
                jsonResponse(['success' => false, 'error' => 'Colaborador no encontrado']);
            }

            $stmt = $pg->prepare("
                SELECT 
                    n.*,
                    t.nombre AS tema_nombre,
                    c.cargo AS cargo_nombre,
                    r.nombre AS rol_capacitador
                FROM cap_notificaciones n
                INNER JOIN cap_programacion p ON n.id_programacion = p.id
                INNER JOIN cap_tema t ON p.id_tema = t.id
                INNER JOIN adm_cargos c ON p.id_cargo = c.id_cargo
                INNER JOIN adm_roles r ON p.id_rol_capacitador = r.id
                WHERE n.id_colaborador = ?
                AND n.estado IN ('pendiente', 'proximo_vencer', 'vencida')
                ORDER BY n.fecha_proxima ASC
            ");
            $stmt->execute([$colaborador_id]);
            $notifications = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $notifications]);
            break;

        case 'get_unread_count':
            // Get count of unread notifications
            $cedula = $_SESSION['cedula'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'count' => 0]);
            }

            $stmt = $pg->prepare("
                SELECT COUNT(*) 
                FROM cap_notificaciones n
                INNER JOIN adm_colaboradores c ON n.id_colaborador = c.ac_id
                WHERE c.ac_cedula = ?
                AND n.leida = false
                AND n.estado IN ('pendiente', 'proximo_vencer', 'vencida')
            ");
            $stmt->execute([$cedula]);
            $count = $stmt->fetchColumn();
            
            jsonResponse(['success' => true, 'count' => $count]);
            break;

        case 'mark_as_read':
            // Mark notification as read
            $id = $_GET['id'] ?? $_POST['id'] ?? 0;
            
            if (!$id) {
                jsonResponse(['success' => false, 'error' => 'ID requerido']);
            }

            $stmt = $pg->prepare("UPDATE cap_notificaciones SET leida = true WHERE id = ?");
            $stmt->execute([$id]);
            
            jsonResponse(['success' => true, 'message' => 'Notificación marcada como leída']);
            break;

        case 'mark_all_as_read':
            // Mark all notifications as read for current user
            $cedula = $_SESSION['cedula'] ?? null;
            
            if (!$cedula) {
                jsonResponse(['success' => false, 'error' => 'Cédula no encontrada']);
            }

            $stmt = $pg->prepare("
                UPDATE cap_notificaciones n
                SET leida = true
                FROM adm_colaboradores c
                WHERE n.id_colaborador = c.ac_id
                AND c.ac_cedula = ?
            ");
            $stmt->execute([$cedula]);
            
            jsonResponse(['success' => true, 'message' => 'Todas las notificaciones marcadas como leídas']);
            break;

        case 'get_by_role':
            // Get notifications for trainings assigned to user's role
            $usuario_id = $_SESSION['usuario_id'] ?? null;
            
            if (!$usuario_id) {
                jsonResponse(['success' => false, 'error' => 'Usuario no encontrado']);
            }

            // Get user roles
            $stmt = $pg->prepare("
                SELECT rol_id 
                FROM adm_usuario_roles 
                WHERE usuario_id = ?
            ");
            $stmt->execute([$usuario_id]);
            $roles = $stmt->fetchAll(PDO::FETCH_COLUMN);

            if (empty($roles)) {
                jsonResponse(['success' => true, 'data' => []]);
            }

            // Get notifications for trainings assigned to these roles
            $placeholders = implode(',', array_fill(0, count($roles), '?'));
            $stmt = $pg->prepare("
                SELECT 
                    n.*,
                    t.nombre AS tema_nombre,
                    c.cargo AS cargo_nombre,
                    col.ac_nombre1 || ' ' || COALESCE(col.ac_apellido1, '') AS colaborador_nombre,
                    col.ac_cedula AS colaborador_cedula
                FROM cap_notificaciones n
                INNER JOIN cap_programacion p ON n.id_programacion = p.id
                INNER JOIN cap_tema t ON p.id_tema = t.id
                INNER JOIN adm_cargos c ON p.id_cargo = c.id_cargo
                INNER JOIN adm_colaboradores col ON n.id_colaborador = col.ac_id
                WHERE p.id_rol_capacitador IN ($placeholders)
                AND n.estado IN ('pendiente', 'proximo_vencer', 'vencida')
                ORDER BY n.fecha_proxima ASC, col.ac_nombre1 ASC
            ");
            $stmt->execute($roles);
            $notifications = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $notifications]);
            break;

        case 'get_trainer_alerts':
            // Get 7-day alerts for trainers - notifications that will expire in 7 days or less
            $usuario_id = $_SESSION['usuario_id'] ?? null;
            
            if (!$usuario_id) {
                jsonResponse(['success' => false, 'error' => 'Usuario no encontrado']);
            }

            // Get user roles
            $stmt = $pg->prepare("
                SELECT rol_id 
                FROM adm_usuario_roles 
                WHERE usuario_id = ?
            ");
            $stmt->execute([$usuario_id]);
            $roles = $stmt->fetchAll(PDO::FETCH_COLUMN);

            if (empty($roles)) {
                jsonResponse(['success' => true, 'data' => []]);
            }

            // Get notifications that expire in 7 days or less
            $placeholders = implode(',', array_fill(0, count($roles), '?'));
            $stmt = $pg->prepare("
                SELECT 
                    n.*,
                    t.nombre AS tema_nombre,
                    c.cargo AS cargo_nombre,
                    p.sub_area,
                    r.nombre AS rol_capacitador_nombre,
                    COUNT(DISTINCT n.id_colaborador) as colaboradores_pendientes,
                    STRING_AGG(DISTINCT col.ac_nombre1 || ' ' || COALESCE(col.ac_apellido1, ''), ', ' ORDER BY col.ac_nombre1 || ' ' || COALESCE(col.ac_apellido1, '')) as nombres_colaboradores
                FROM cap_notificaciones n
                INNER JOIN cap_programacion p ON n.id_programacion = p.id
                INNER JOIN cap_tema t ON p.id_tema = t.id
                INNER JOIN adm_cargos c ON p.id_cargo = c.id_cargo
                INNER JOIN adm_roles r ON p.id_rol_capacitador = r.id
                INNER JOIN adm_colaboradores col ON n.id_colaborador = col.ac_id
                WHERE p.id_rol_capacitador IN ($placeholders)
                AND n.dias_para_vencimiento <= 7
                AND n.dias_para_vencimiento >= -30
                AND n.estado IN ('proximo_vencer', 'vencida')
                GROUP BY n.id_programacion, p.id, t.nombre, c.cargo, p.sub_area, r.nombre, n.fecha_proxima, n.dias_para_vencimiento
                ORDER BY n.fecha_proxima ASC
            ");
            $stmt->execute($roles);
            $alerts = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $alerts]);
            break;

        case 'get_statistics':
            // Get notification statistics
            $stmt = $pg->query("
                SELECT 
                    COUNT(*) AS total,
                    SUM(CASE WHEN estado = 'pendiente' THEN 1 ELSE 0 END) AS pendientes,
                    SUM(CASE WHEN estado = 'proximo_vencer' THEN 1 ELSE 0 END) AS proximo_vencer,
                    SUM(CASE WHEN estado = 'vencida' THEN 1 ELSE 0 END) AS vencidas,
                    SUM(CASE WHEN leida = false THEN 1 ELSE 0 END) AS no_leidas
                FROM cap_notificaciones
            ");
            $stats = $stmt->fetch(PDO::FETCH_ASSOC);
            
            jsonResponse(['success' => true, 'data' => $stats]);
            break;

        default:
            jsonResponse(['success' => false, 'error' => 'Acción no válida']);
    }
} catch (Exception $e) {
    jsonResponse(['success' => false, 'error' => $e->getMessage()]);
}
