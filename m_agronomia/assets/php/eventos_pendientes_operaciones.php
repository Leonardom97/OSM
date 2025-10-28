<?php
/**
 * eventos_pendientes_operaciones.php
 *
 * SSE (Server-Sent Events):
 *  - Emite eventos en tiempo real sobre la cantidad de pendientes en múltiples entidades.
 *  - Eventos emitidos: init, update, ping, error, end
 *  - Intervalo de chequeo cada 5 segundos (intervalo fijo).
 *
 * Parámetros:
 *  - ?entidad=opcional filtra una entidad concreta; si no, todas.
 *
 * Uso:
 *  - El cliente abre un EventSource hacia este endpoint y procesa los eventos.
 *
 * Seguridad:
 *  - Requiere require_admin() (admin o auxiliar).
 *
 * Mejoras potenciales:
 *  - Permitir configuración del intervalo / timeout.
 *  - Incluir diff de cambios en lugar de solo total.
 */

require_once __DIR__ . '/require_admin.php'; require_admin();

header('Content-Type: text/event-stream; charset=utf-8');
header('Cache-Control: no-cache');
header('Connection: keep-alive');
header('X-Accel-Buffering: no'); // Evita buffering en Nginx
if (function_exists('apache_setenv')) { @apache_setenv('no-gzip', '1'); }
@ini_set('zlib.output_compression', '0');
@ini_set('implicit_flush', '1');
@ini_set('output_buffering', 'off');
ignore_user_abort(true);
set_time_limit(0);
if (session_status() === PHP_SESSION_ACTIVE) { session_write_close(); }
while (ob_get_level() > 0) { @ob_end_flush(); }
ob_implicit_flush(true);

/**
 * Envía un evento SSE formateado
 */
function sse_send(string $event, $data): void {
  echo "event: {$event}\n";
  echo "data: " . json_encode($data, JSON_UNESCAPED_UNICODE) . "\n\n";
  @flush();
}

/**
 * Cuenta pendientes (registros con supervision='pendiente' si la columna existe)
 * para un subconjunto de tablas (o todas).
 */
function contar(PDO $pg, ?string $entidad): array {
  $base = ['mantenimientos','monitoreos_generales','oficios_varios_palma','cosecha_fruta','fertilizacion_organica'];
  $targets = ($entidad && in_array($entidad, $base, true)) ? [$entidad] : $base;
  $names = array_merge($targets, array_map(fn($e)=>$e.'_temp', $targets));
  $low = array_map('strtolower', $names);
  $in = implode("','", array_map('addslashes', $low));
  $q = "
    SELECT table_schema, table_name
    FROM information_schema.tables
    WHERE table_type='BASE TABLE'
      AND table_schema NOT IN ('pg_catalog','information_schema')
      AND lower(table_name) IN ('$in')
  ";
  $cand = $pg->query($q)->fetchAll(PDO::FETCH_ASSOC);
  $total = 0; $det = [];

  foreach ($cand as $t) {
    $schema = $t['table_schema'];
    $table  = $t['table_name'];
    $st = $pg->prepare("SELECT column_name FROM information_schema.columns WHERE table_schema=? AND table_name=?");
    $st->execute([$schema,$table]);
    $cols = $st->fetchAll(PDO::FETCH_COLUMN) ?: [];
    $map = []; foreach ($cols as $c) $map[strtolower($c)] = $c;
    $full = "\"$schema\"" . '.' . "\"$table\"";

    if (isset($map['supervision'])) {
      $where = "LOWER(COALESCE(\"{$map['supervision']}\", 'pendiente')) = 'pendiente'";
    } elseif (isset($map['Supervision'])) {
      $where = "LOWER(COALESCE(\"{$map['Supervision']}\", 'pendiente')) = 'pendiente'";
    } else {
      $where = "TRUE";
    }

    $cnt = (int)$pg->query("SELECT COUNT(*) FROM $full WHERE $where")->fetchColumn();
    $total += $cnt;
    $entity = preg_replace('/_temp$/i','', strtolower($table));
    $det[] = ['entidad'=>$entity, 'tabla'=>"$schema.$table", 'total'=>$cnt];
  }
  return ['total'=>$total, 'detalles'=>$det, 'entidad'=>$entidad ?: null];
}

require_once __DIR__.'/db_temporal.php';
if (!isset($pg)) { sse_send('error',['message'=>'db_temporal.php no define $pg']); exit; }
$pg->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$ent = strtolower(trim((string)($_GET['entidad'] ?? '')));
$ent = preg_replace('/[^a-z0-9_]/','',$ent);

try { $estado = contar($pg, $ent ?: null); sse_send('init',$estado); $ultimo = (int)$estado['total']; }
catch (Throwable $e) { sse_send('error',['message'=>$e->getMessage()]); exit; }


$inicio = time(); 
$timeout = 60; // 1 minutos
$intervalo = 5; // cada 5s

while (!connection_aborted()) {
  if (time() - $inicio > $timeout) { sse_send('end',['reason'=>'timeout']); break; }
  try {
    $estado = contar($pg, $ent ?: null); $t = (int)$estado['total'];
    if ($t !== $ultimo) { 
      $ultimo = $t; 
      sse_send('update',$estado); 
    } else { 
      sse_send('ping',['ts'=>time()]); 
    }
  } catch (Throwable $e) {
    sse_send('error',['message'=>$e->getMessage()]);
    break;
  }
  sleep($intervalo);
}