<?php
require_once __DIR__.'/require_admin.php';
require_admin_only();
header('Content-Type: application/json; charset=utf-8');
try {
  if($_SERVER['REQUEST_METHOD'] !== 'POST'){
    http_response_code(405);
    echo json_encode(['success'=>false, 'error'=>'method_not_allowed']); exit;
  }
  $body = json_decode(file_get_contents('php://input'), true) ?? [];
  $id = isset($body['ct_cal_trampas_id']) ? trim($body['ct_cal_trampas_id']) : '';
  if($id === '') throw new RuntimeException('ct_cal_trampas_id requerido');
  require_once __DIR__.'/db_postgres_prueba.php';
  $pg->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $sql = "UPDATE public.ct_cal_trampas SET supervision='rechazado', \"check\"=0 WHERE ct_cal_trampas_id=:id";
  $st = $pg->prepare($sql);
  $st->execute(['id'=>$id]);
  echo json_encode([
    'success' => $st->rowCount() > 0,
    'updated' => $st->rowCount(),
    'id'      => $id,
    'estado'  => 'rechazado'
  ]);
} catch(Throwable $e){
  echo json_encode([
    'success'=>false,
    'error'=>'exception',
    'message'=>$e->getMessage(),
    'trace'=>$e->getTraceAsString()
  ]);
}