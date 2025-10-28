<?php
/**
 * File Upload API for Training Forms (Capacitaciones)
 * Handles file uploads with validation for PDF and images
 */

session_start();
header('Content-Type: application/json');

require_once __DIR__ . '/../../../php/db_postgres.php';

// Check if user is authenticated
if (!isset($_SESSION['usuario_id'])) {
    echo json_encode(['success' => false, 'message' => 'No autorizado']);
    exit;
}

$action = $_GET['action'] ?? $_POST['action'] ?? '';

try {
    switch ($action) {
        case 'upload_file':
            // Check if file was uploaded
            if (!isset($_FILES['file']) || $_FILES['file']['error'] !== UPLOAD_ERR_OK) {
                echo json_encode(['success' => false, 'message' => 'Error al subir el archivo']);
                exit;
            }
            
            $formulario_id = $_POST['formulario_id'] ?? '';
            if (!$formulario_id) {
                echo json_encode(['success' => false, 'message' => 'ID de formulario requerido']);
                exit;
            }
            
            $file = $_FILES['file'];
            $fileSize = $file['size'];
            $fileName = $file['name'];
            $fileTmpName = $file['tmp_name'];
            
            // Validate file size (2MB max)
            $maxSize = 2 * 1024 * 1024; // 2MB in bytes
            if ($fileSize > $maxSize) {
                echo json_encode(['success' => false, 'message' => 'El archivo excede el tamaño máximo de 2MB']);
                exit;
            }
            
            // Get file extension
            $fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));
            
            // Validate file type (PDF or images only)
            $allowedExtensions = ['pdf', 'jpg', 'jpeg', 'png', 'gif'];
            if (!in_array($fileExtension, $allowedExtensions)) {
                echo json_encode(['success' => false, 'message' => 'Tipo de archivo no permitido. Solo se aceptan PDF e imágenes']);
                exit;
            }
            
            // Validate MIME type
            $finfo = finfo_open(FILEINFO_MIME_TYPE);
            $mimeType = finfo_file($finfo, $fileTmpName);
            finfo_close($finfo);
            
            $allowedMimeTypes = [
                'application/pdf',
                'image/jpeg',
                'image/png',
                'image/gif'
            ];
            
            if (!in_array($mimeType, $allowedMimeTypes)) {
                echo json_encode(['success' => false, 'message' => 'Tipo de archivo no válido']);
                exit;
            }
            
            // Create directory structure: m_capacitaciones/assets/docs/[formulario_id]/archivos/
            $baseDir = __DIR__ . '/../docs';
            $formularioDir = $baseDir . '/' . $formulario_id;
            $uploadDir = $formularioDir . '/archivos';
            
            if (!file_exists($baseDir)) {
                mkdir($baseDir, 0755, true);
            }
            
            if (!file_exists($formularioDir)) {
                mkdir($formularioDir, 0755, true);
            }
            
            if (!file_exists($uploadDir)) {
                mkdir($uploadDir, 0755, true);
            }
            
            // Generate unique filename to prevent overwriting
            $timestamp = time();
            $safeFileName = preg_replace('/[^a-zA-Z0-9_.-]/', '_', pathinfo($fileName, PATHINFO_FILENAME));
            $newFileName = $safeFileName . '_' . $timestamp . '.' . $fileExtension;
            $targetPath = $uploadDir . '/' . $newFileName;
            
            // Move uploaded file
            if (!move_uploaded_file($fileTmpName, $targetPath)) {
                echo json_encode(['success' => false, 'message' => 'Error al guardar el archivo']);
                exit;
            }
            
            // Update database with filename
            $stmt = $pg->prepare("
                UPDATE cap_formulario 
                SET archivo_adjunto = :filename
                WHERE id = :formulario_id
            ");
            $stmt->execute([
                ':filename' => $newFileName,
                ':formulario_id' => $formulario_id
            ]);
            
            echo json_encode([
                'success' => true,
                'message' => 'Archivo subido exitosamente',
                'filename' => $newFileName,
                'filepath' => 'm_capacitaciones/assets/docs/' . $formulario_id . '/archivos/' . $newFileName
            ]);
            break;
            
        case 'get_file':
            $formulario_id = $_GET['formulario_id'] ?? '';
            if (!$formulario_id) {
                echo json_encode(['success' => false, 'message' => 'ID de formulario requerido']);
                exit;
            }
            
            // Get filename from database
            $stmt = $pg->prepare("
                SELECT archivo_adjunto 
                FROM cap_formulario 
                WHERE id = :formulario_id
            ");
            $stmt->execute([':formulario_id' => $formulario_id]);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if (!$result || !$result['archivo_adjunto']) {
                echo json_encode(['success' => false, 'message' => 'No hay archivo adjunto']);
                exit;
            }
            
            $filename = $result['archivo_adjunto'];
            $filepath = 'm_capacitaciones/assets/docs/' . $formulario_id . '/archivos/' . $filename;
            $fullPath = __DIR__ . '/../docs/' . $formulario_id . '/archivos/' . $filename;
            
            if (!file_exists($fullPath)) {
                echo json_encode(['success' => false, 'message' => 'Archivo no encontrado']);
                exit;
            }
            
            echo json_encode([
                'success' => true,
                'filename' => $filename,
                'filepath' => $filepath,
                'filesize' => filesize($fullPath),
                'exists' => true
            ]);
            break;
            
        case 'delete_file':
            $formulario_id = $_POST['formulario_id'] ?? '';
            if (!$formulario_id) {
                echo json_encode(['success' => false, 'message' => 'ID de formulario requerido']);
                exit;
            }
            
            // Get filename from database
            $stmt = $pg->prepare("
                SELECT archivo_adjunto 
                FROM cap_formulario 
                WHERE id = :formulario_id
            ");
            $stmt->execute([':formulario_id' => $formulario_id]);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if (!$result || !$result['archivo_adjunto']) {
                echo json_encode(['success' => false, 'message' => 'No hay archivo adjunto']);
                exit;
            }
            
            $filename = $result['archivo_adjunto'];
            $fullPath = __DIR__ . '/../docs/' . $formulario_id . '/archivos/' . $filename;
            
            // Delete file from filesystem
            if (file_exists($fullPath)) {
                unlink($fullPath);
            }
            
            // Update database
            $stmt = $pg->prepare("
                UPDATE cap_formulario 
                SET archivo_adjunto = NULL
                WHERE id = :formulario_id
            ");
            $stmt->execute([':formulario_id' => $formulario_id]);
            
            echo json_encode([
                'success' => true,
                'message' => 'Archivo eliminado exitosamente'
            ]);
            break;
            
        default:
            echo json_encode(['success' => false, 'message' => 'Acción no válida']);
            break;
    }
} catch (PDOException $e) {
    error_log("File upload API error: " . $e->getMessage());
    echo json_encode(['success' => false, 'message' => 'Error del servidor: ' . $e->getMessage()]);
}
