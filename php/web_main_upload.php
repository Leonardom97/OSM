<?php
/**
 * Web Main File Upload Handler
 * Handles file uploads for favicon and login images
 * Access: Administrator role only
 */

session_start();
header('Content-Type: application/json');

// Check if user is logged in and has administrator role
if (!isset($_SESSION['usuario_id']) || !isset($_SESSION['rol_nombre'])) {
    http_response_code(401);
    echo json_encode(['success' => false, 'message' => 'No autorizado']);
    exit;
}

// Only allow administrators to access this API
if ($_SESSION['rol_nombre'] !== 'Administrador' && $_SESSION['rol_nombre'] !== 'administrador') {
    http_response_code(403);
    echo json_encode(['success' => false, 'message' => 'Acceso denegado. Solo administradores pueden subir archivos.']);
    exit;
}

// Upload configuration
$uploadDir = __DIR__ . '/../assets/img/uploads/';
$allowedTypes = ['image/jpeg', 'image/jpg', 'image/png', 'image/gif', 'image/webp'];
$maxFileSize = 5 * 1024 * 1024; // 5MB

// Create upload directory if it doesn't exist
if (!file_exists($uploadDir)) {
    mkdir($uploadDir, 0755, true);
}

try {
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        throw new Exception('Método no permitido');
    }
    
    if (!isset($_FILES['file'])) {
        throw new Exception('No se encontró el archivo');
    }
    
    $file = $_FILES['file'];
    $uploadType = $_POST['upload_type'] ?? 'favicon'; // favicon or login_image
    
    // Validate file
    if ($file['error'] !== UPLOAD_ERR_OK) {
        throw new Exception('Error al subir el archivo');
    }
    
    // Check file size
    if ($file['size'] > $maxFileSize) {
        throw new Exception('El archivo es demasiado grande (máximo 5MB)');
    }
    
    // Check file type
    $finfo = finfo_open(FILEINFO_MIME_TYPE);
    $mimeType = finfo_file($finfo, $file['tmp_name']);
    finfo_close($finfo);
    
    if (!in_array($mimeType, $allowedTypes)) {
        throw new Exception('Tipo de archivo no permitido. Solo se permiten imágenes (JPG, PNG, GIF, WEBP)');
    }
    
    // Generate unique filename
    $extension = pathinfo($file['name'], PATHINFO_EXTENSION);
    $timestamp = time();
    $filename = $uploadType . '_' . $timestamp . '.' . $extension;
    $targetPath = $uploadDir . $filename;
    
    // Move uploaded file
    if (!move_uploaded_file($file['tmp_name'], $targetPath)) {
        throw new Exception('Error al guardar el archivo');
    }
    
    // Return relative path for database
    $relativePath = 'assets/img/uploads/' . $filename;
    
    echo json_encode([
        'success' => true,
        'message' => 'Archivo subido exitosamente',
        'path' => $relativePath,
        'filename' => $filename
    ]);
    
} catch (Exception $e) {
    http_response_code(400);
    echo json_encode([
        'success' => false,
        'message' => $e->getMessage()
    ]);
}
