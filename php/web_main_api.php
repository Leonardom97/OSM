<?php
/**
 * Web Main Configuration API
 * Manages website configuration (title, footer, icon, theme colors)
 * Access: Administrator role only
 */

session_start();
header('Content-Type: application/json');

require_once __DIR__ . '/db_postgres.php';

$method = $_SERVER['REQUEST_METHOD'];

// Allow GET requests for reading configuration (public access)
// Require authentication only for POST/PUT (write operations)
$requiresAuth = ($method !== 'GET');

if ($requiresAuth) {
    // Check if user is logged in and has administrator role
    if (!isset($_SESSION['usuario_id']) || !isset($_SESSION['rol_nombre'])) {
        http_response_code(401);
        echo json_encode(['success' => false, 'message' => 'No autorizado']);
        exit;
    }

    // Only allow administrators to access write operations
    if ($_SESSION['rol_nombre'] !== 'Administrador' && $_SESSION['rol_nombre'] !== 'administrador') {
        http_response_code(403);
        echo json_encode(['success' => false, 'message' => 'Acceso denegado. Solo administradores pueden gestionar la configuración.']);
        exit;
    }
}

try {
    switch ($method) {
        case 'GET':
            handleGet($pg);
            break;
        case 'POST':
            handlePost($pg);
            break;
        case 'PUT':
            handlePut($pg);
            break;
        default:
            http_response_code(405);
            echo json_encode(['success' => false, 'message' => 'Método no permitido']);
            break;
    }
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Error del servidor: ' . $e->getMessage()]);
}

/**
 * Get web configuration
 */
function handleGet($pg) {
    $action = $_GET['action'] ?? 'get_active';
    
    switch ($action) {
        case 'get_active':
            // Get active configuration
            $stmt = $pg->prepare("SELECT * FROM adm_webmain WHERE is_active = true LIMIT 1");
            $stmt->execute();
            $config = $stmt->fetch();
            
            if (!$config) {
                // Return default values if no active config
                $config = [
                    'id' => 0,
                    'site_title' => 'OSM',
                    'footer_text' => '© OSM 2025',
                    'favicon_path' => 'assets/img/Sin título-2.png',
                    'login_image_path' => 'assets/img/ico.jpg',
                    'primary_color' => '#772e22',
                    'is_active' => true,
                    'theme_name' => 'Default'
                ];
            }
            
            echo json_encode(['success' => true, 'data' => $config]);
            break;
            
        case 'get_all':
            // Get all saved themes (max 3)
            $stmt = $pg->prepare("SELECT * FROM adm_webmain ORDER BY created_at DESC LIMIT 3");
            $stmt->execute();
            $themes = $stmt->fetchAll();
            
            echo json_encode(['success' => true, 'data' => $themes]);
            break;
            
        case 'get_by_id':
            $id = $_GET['id'] ?? 0;
            $stmt = $pg->prepare("SELECT * FROM adm_webmain WHERE id = :id");
            $stmt->execute(['id' => $id]);
            $config = $stmt->fetch();
            
            if ($config) {
                echo json_encode(['success' => true, 'data' => $config]);
            } else {
                http_response_code(404);
                echo json_encode(['success' => false, 'message' => 'Configuración no encontrada']);
            }
            break;
            
        default:
            http_response_code(400);
            echo json_encode(['success' => false, 'message' => 'Acción no válida']);
            break;
    }
}

/**
 * Create new web configuration
 */
function handlePost($pg) {
    $data = json_decode(file_get_contents('php://input'), true);
    
    if (!$data) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Datos inválidos']);
        return;
    }
    
    // Check if we already have 3 themes
    $stmt = $pg->prepare("SELECT COUNT(*) as count FROM adm_webmain");
    $stmt->execute();
    $result = $stmt->fetch();
    
    if ($result['count'] >= 3) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Máximo 3 temas permitidos. Elimine uno para crear otro.']);
        return;
    }
    
    // If this is set as active, deactivate all others
    if (isset($data['is_active']) && $data['is_active']) {
        $stmt = $pg->prepare("UPDATE adm_webmain SET is_active = false");
        $stmt->execute();
    }
    
    $stmt = $pg->prepare("
        INSERT INTO adm_webmain 
        (site_title, footer_text, favicon_path, login_image_path, primary_color, is_active, theme_name) 
        VALUES (:site_title, :footer_text, :favicon_path, :login_image_path, :primary_color, :is_active, :theme_name)
        RETURNING id
    ");
    
    $stmt->execute([
        'site_title' => $data['site_title'] ?? 'OSM',
        'footer_text' => $data['footer_text'] ?? '© OSM 2025',
        'favicon_path' => $data['favicon_path'] ?? 'assets/img/Sin título-2.png',
        'login_image_path' => $data['login_image_path'] ?? 'assets/img/ico.jpg',
        'primary_color' => $data['primary_color'] ?? '#772e22',
        'is_active' => $data['is_active'] ?? false,
        'theme_name' => $data['theme_name'] ?? 'Nuevo Tema'
    ]);
    
    $result = $stmt->fetch();
    
    echo json_encode(['success' => true, 'message' => 'Configuración creada exitosamente', 'id' => $result['id']]);
}

/**
 * Update web configuration
 */
function handlePut($pg) {
    $data = json_decode(file_get_contents('php://input'), true);
    
    if (!$data || !isset($data['id'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'ID requerido']);
        return;
    }
    
    // If this is being set as active, deactivate all others
    if (isset($data['is_active']) && $data['is_active']) {
        $stmt = $pg->prepare("UPDATE adm_webmain SET is_active = false WHERE id != :id");
        $stmt->execute(['id' => $data['id']]);
    }
    
    $stmt = $pg->prepare("
        UPDATE adm_webmain 
        SET site_title = :site_title,
            footer_text = :footer_text,
            favicon_path = :favicon_path,
            login_image_path = :login_image_path,
            primary_color = :primary_color,
            is_active = :is_active,
            theme_name = :theme_name,
            updated_at = CURRENT_TIMESTAMP
        WHERE id = :id
    ");
    
    $result = $stmt->execute([
        'id' => $data['id'],
        'site_title' => $data['site_title'],
        'footer_text' => $data['footer_text'],
        'favicon_path' => $data['favicon_path'],
        'login_image_path' => $data['login_image_path'],
        'primary_color' => $data['primary_color'],
        'is_active' => $data['is_active'],
        'theme_name' => $data['theme_name']
    ]);
    
    if ($result) {
        echo json_encode(['success' => true, 'message' => 'Configuración actualizada exitosamente']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'message' => 'Error al actualizar configuración']);
    }
}
