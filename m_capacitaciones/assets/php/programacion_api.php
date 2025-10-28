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
if (!isset($_SESSION['usuario_id'])) {
    jsonResponse(['success' => false, 'error' => 'No autorizado']);
}

try {
    switch ($action) {
        case 'list':
            // List all training schedules with next training date
            $stmt = $pg->query("
                SELECT 
                    p.*,
                    t.nombre AS tema_nombre,
                    c.cargo AS cargo_nombre,
                    r.nombre AS rol_capacitador_nombre,
                    (
                        SELECT MIN(n.fecha_proxima)
                        FROM cap_notificaciones n
                        WHERE n.id_programacion = p.id
                        AND n.estado IN ('pendiente', 'proximo_vencer', 'vencida')
                    ) AS proxima_capacitacion,
                    (
                        SELECT MIN(n.dias_para_vencimiento)
                        FROM cap_notificaciones n
                        WHERE n.id_programacion = p.id
                        AND n.estado IN ('pendiente', 'proximo_vencer', 'vencida')
                    ) AS dias_para_proxima,
                    (
                        SELECT COUNT(DISTINCT n.id_colaborador)
                        FROM cap_notificaciones n
                        WHERE n.id_programacion = p.id
                        AND n.estado IN ('pendiente', 'proximo_vencer', 'vencida')
                    ) AS colaboradores_pendientes
                FROM cap_programacion p
                INNER JOIN cap_tema t ON p.id_tema = t.id
                INNER JOIN adm_cargos c ON p.id_cargo = c.id_cargo
                INNER JOIN adm_roles r ON p.id_rol_capacitador = r.id
                WHERE p.activo = true
                ORDER BY c.cargo, t.nombre
            ");
            $programaciones = $stmt->fetchAll(PDO::FETCH_ASSOC);
            jsonResponse(['success' => true, 'data' => $programaciones]);
            break;

        case 'get':
            // Get single training schedule
            $id = $_GET['id'] ?? 0;
            $stmt = $pg->prepare("
                SELECT 
                    p.*,
                    t.nombre AS tema_nombre,
                    c.cargo AS cargo_nombre,
                    r.nombre AS rol_capacitador_nombre
                FROM cap_programacion p
                INNER JOIN cap_tema t ON p.id_tema = t.id
                INNER JOIN adm_cargos c ON p.id_cargo = c.id_cargo
                INNER JOIN adm_roles r ON p.id_rol_capacitador = r.id
                WHERE p.id = ?
            ");
            $stmt->execute([$id]);
            $prog = $stmt->fetch(PDO::FETCH_ASSOC);
            jsonResponse(['success' => true, 'data' => $prog]);
            break;

        case 'create':
            // Create new training schedule
            $data = json_decode(file_get_contents('php://input'), true);
            
            $required = ['id_tema', 'id_cargo', 'sub_area', 'frecuencia_meses', 'id_rol_capacitador'];
            foreach ($required as $field) {
                if (!isset($data[$field]) || $data[$field] === '' || (is_string($data[$field]) && trim($data[$field]) === '')) {
                    jsonResponse(['success' => false, 'error' => "Campo requerido: $field"]);
                }
            }

            $stmt = $pg->prepare("
                INSERT INTO cap_programacion 
                (id_tema, id_cargo, sub_area, frecuencia_meses, id_rol_capacitador, activo)
                VALUES (?, ?, ?, ?, ?, true)
                RETURNING id
            ");
            
            $stmt->execute([
                $data['id_tema'],
                $data['id_cargo'],
                trim($data['sub_area']),
                $data['frecuencia_meses'],
                $data['id_rol_capacitador']
            ]);
            
            $id = $stmt->fetchColumn();
            
            // Update notifications
            $pg->query("SELECT actualizar_notificaciones_capacitacion()");
            
            jsonResponse(['success' => true, 'id' => $id, 'message' => 'Programación creada exitosamente']);
            break;

        case 'update':
            // Update training schedule
            $data = json_decode(file_get_contents('php://input'), true);
            $id = $data['id'] ?? 0;
            
            if (!$id) {
                jsonResponse(['success' => false, 'error' => 'ID requerido']);
            }
            
            // Validate required fields including sub_area
            $required = ['id_tema', 'id_cargo', 'sub_area', 'frecuencia_meses', 'id_rol_capacitador'];
            foreach ($required as $field) {
                if (!isset($data[$field]) || $data[$field] === '' || (is_string($data[$field]) && trim($data[$field]) === '')) {
                    jsonResponse(['success' => false, 'error' => "Campo requerido: $field"]);
                }
            }

            $stmt = $pg->prepare("
                UPDATE cap_programacion 
                SET id_tema = ?, 
                    id_cargo = ?, 
                    sub_area = ?, 
                    frecuencia_meses = ?, 
                    id_rol_capacitador = ?
                WHERE id = ?
            ");
            
            $stmt->execute([
                $data['id_tema'],
                $data['id_cargo'],
                trim($data['sub_area']),
                $data['frecuencia_meses'],
                $data['id_rol_capacitador'],
                $id
            ]);
            
            // Update notifications
            $pg->query("SELECT actualizar_notificaciones_capacitacion()");
            
            jsonResponse(['success' => true, 'message' => 'Programación actualizada exitosamente']);
            break;

        case 'delete':
            // Soft delete (set activo = false)
            $id = $_GET['id'] ?? $_POST['id'] ?? 0;
            
            if (!$id) {
                jsonResponse(['success' => false, 'error' => 'ID requerido']);
            }

            $stmt = $pg->prepare("UPDATE cap_programacion SET activo = false WHERE id = ?");
            $stmt->execute([$id]);
            
            jsonResponse(['success' => true, 'message' => 'Programación eliminada exitosamente']);
            break;

        case 'bulk_import':
            // Bulk import from Excel data
            $data = json_decode(file_get_contents('php://input'), true);
            $items = $data['items'] ?? [];
            
            if (empty($items)) {
                jsonResponse(['success' => false, 'error' => 'No hay datos para importar']);
            }

            $pg->beginTransaction();
            $inserted = 0;
            $errors = [];

            foreach ($items as $index => $item) {
                try {
                    // Validate required fields
                    if (empty($item['id_cargo']) || empty($item['id_tema']) || empty($item['id_rol_capacitador'])) {
                        $errors[] = "Fila " . ($index + 1) . ": Campos requeridos faltantes";
                        continue;
                    }

                    // Check if already exists
                    $checkStmt = $pg->prepare("
                        SELECT COUNT(*) FROM cap_programacion 
                        WHERE id_cargo = ? AND id_tema = ? 
                        AND (sub_area = ? OR (sub_area IS NULL AND ? IS NULL))
                        AND activo = true
                    ");
                    $checkStmt->execute([
                        $item['id_cargo'],
                        $item['id_tema'],
                        $item['sub_area'] ?? null,
                        $item['sub_area'] ?? null
                    ]);
                    
                    if ($checkStmt->fetchColumn() > 0) {
                        $errors[] = "Fila " . ($index + 1) . ": Ya existe esta programación";
                        continue;
                    }

                    // Insert
                    $stmt = $pg->prepare("
                        INSERT INTO cap_programacion 
                        (id_tema, id_cargo, sub_area, frecuencia_meses, id_rol_capacitador, activo)
                        VALUES (?, ?, ?, ?, ?, true)
                    ");
                    
                    $stmt->execute([
                        $item['id_tema'],
                        $item['id_cargo'],
                        $item['sub_area'] ?? null,
                        $item['frecuencia_meses'] ?? 12,
                        $item['id_rol_capacitador']
                    ]);
                    
                    $inserted++;
                } catch (Exception $e) {
                    $errors[] = "Fila " . ($index + 1) . ": " . $e->getMessage();
                }
            }

            $pg->commit();
            
            // Update notifications
            $pg->query("SELECT actualizar_notificaciones_capacitacion()");
            
            jsonResponse([
                'success' => true,
                'inserted' => $inserted,
                'errors' => $errors,
                'message' => "Importadas $inserted programaciones"
            ]);
            break;

        case 'get_roles':
            // Get training coordinator roles
            // Include: Capacitador SIE, Capacitador GH, Capacitador TI, Capacitador MT,
            // Capacitador IND, Capacitador ADM, Capacitador AGR, Administrador,
            // Capacitador, Aux_Capacitador
            // Note: Roles may have either spaces or underscores in the database
            $stmt = $pg->query("
                SELECT id, nombre 
                FROM adm_roles 
                WHERE nombre IN (
                    'Capacitador SIE', 'Capacitador_SIE',
                    'Capacitador GH', 'Capacitador_GH',
                    'Capacitador TI', 'Capacitador_TI',
                    'Capacitador MT', 'Capacitador_MT',
                    'Capacitador IND', 'Capacitador_IND',
                    'Capacitador ADM', 'Capacitador_ADM',
                    'Capacitador AGR', 'Capacitador_AGR',
                    'Administrador',
                    'Capacitador',
                    'Aux_Capacitador'
                )
                ORDER BY nombre
            ");
            $roles = $stmt->fetchAll(PDO::FETCH_ASSOC);
            jsonResponse(['success' => true, 'data' => $roles]);
            break;

        case 'get_cargos':
            // Get all positions
            $stmt = $pg->query("
                SELECT id_cargo AS id, cargo, rango_cargo AS rango
                FROM adm_cargos 
                ORDER BY cargo
            ");
            $cargos = $stmt->fetchAll(PDO::FETCH_ASSOC);
            jsonResponse(['success' => true, 'data' => $cargos]);
            break;

        case 'get_temas':
            // Get all training topics
            $stmt = $pg->query("
                SELECT id, nombre 
                FROM cap_tema 
                ORDER BY nombre
            ");
            $temas = $stmt->fetchAll(PDO::FETCH_ASSOC);
            jsonResponse(['success' => true, 'data' => $temas]);
            break;

        case 'get_sub_areas':
            // Get all unique sub areas from adm_área table
            // No cargo filter needed - return all available sub areas
            $stmt = $pg->query("
                SELECT DISTINCT sub_area
                FROM adm_área
                WHERE sub_area IS NOT NULL
                  AND sub_area != ''
                  AND sub_area NOT IN ('- SIN PROYECTO -', 'POR ASIGNAR')
                ORDER BY sub_area
            ");
            $sub_areas = $stmt->fetchAll(PDO::FETCH_ASSOC);
            jsonResponse(['success' => true, 'data' => $sub_areas]);
            break;

        case 'update_notifications':
            // Manually trigger notification update
            $pg->query("SELECT actualizar_notificaciones_capacitacion()");
            jsonResponse(['success' => true, 'message' => 'Notificaciones actualizadas']);
            break;

        default:
            jsonResponse(['success' => false, 'error' => 'Acción no válida']);
    }
} catch (Exception $e) {
    jsonResponse(['success' => false, 'error' => $e->getMessage()]);
}
