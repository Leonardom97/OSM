<?php
// Requiere privilegios de administrador antes de continuar
require_once __DIR__.'/require_admin.php';
require_admin_only();
// Configura la respuesta como JSON UTF-8
header('Content-Type: application/json; charset=utf-8');

try {
  // Permite solo método POST
  if($_SERVER['REQUEST_METHOD'] !== 'POST'){
    http_response_code(405);
    echo json_encode(['success'=>false, 'error'=>'method_not_allowed']); exit;
  }
  // Decodifica el cuerpo recibido en JSON
  $body = json_decode(file_get_contents('php://input'), true) ?? [];
  $id = isset($body['cosecha_fruta_id']) ? trim($body['cosecha_fruta_id']) : '';
  if($id === '') throw new RuntimeException('cosecha_fruta_id requerido');
  // Conexión a base principal, no temporal
  require_once __DIR__.'/db_postgres_prueba.php';
  $pg->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  // Actualiza el registro a rechazado y check en 0
  $sql = "UPDATE public.cosecha_fruta SET supervision='rechazado', \"check\"=0 WHERE cosecha_fruta_id=:id";
  $params = ['id' => $id];

  $st = $pg->prepare($sql);
  $st->execute($params);
  // Devuelve resultado
  echo json_encode([
    'success' => $st->rowCount() > 0,
    'updated' => $st->rowCount(),
    'id' => $id,
    'estado' => 'rechazado'
  ]);
} catch(Throwable $e){
  echo json_encode([
    'success'=>false,
    'error'=>'exception',
    'message'=>$e->getMessage(),
    'trace'=>$e->getTraceAsString()
  ]);
}