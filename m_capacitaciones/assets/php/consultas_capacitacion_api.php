<?php
header('Content-Type: application/json');
session_start();
require_once(__DIR__ . '/../../../php/db_postgres.php');

$sql = "
SELECT
  f.id,
  TRIM(u.nombre1 || ' ' || COALESCE(u.nombre2 || ' ','') || u.apellido1 || ' ' || COALESCE(u.apellido2,'')) AS capacitador,
  u.cedula,
  t.nombre AS tema,
  l.lugar,
  ta.nombre AS actividad,
  p.proceso,
  to_char(f.fecha, 'DD/MM/YYYY') AS fecha,
  to_char(f.hora_inicio, 'HH24:MI:SS') as hora_inicio,
  to_char(f.hora_final, 'HH24:MI:SS') as hora_final,
  (
    EXTRACT(hour FROM (f.hora_final - f.hora_inicio)) || ' H: ' ||
    EXTRACT(minute FROM (f.hora_final - f.hora_inicio)) || ' M'
  ) as duracion_total,
  f.observaciones,
  -- Creator information
  TRIM(COALESCE(creador.nombre1, '') || ' ' || COALESCE(creador.apellido1, '')) AS creado_por_nombre,
  -- Editor information
  TRIM(COALESCE(editor.nombre1, '') || ' ' || COALESCE(editor.apellido1, '')) AS editado_por_nombre,
  -- Aprobados (estado_aprovacion ilike '%aprobo%' Y NO contiene 'no')
  COALESCE((
    SELECT string_agg(
      TRIM(a.nombre) || ';' || a.cedula, E'\n'
    )
    FROM cap_formulario_asistente a
    WHERE a.id_formulario = f.id AND lower(a.estado_aprovacion) LIKE '%aprobo%' AND lower(a.estado_aprovacion) NOT LIKE '%no aprobo%'
  ), '') AS aprobados,
  -- No aprobados (estado_aprovacion ilike '%no aprobo%')
  COALESCE((
    SELECT string_agg(
      TRIM(a.nombre) || ';' || a.cedula, E'\n'
    )
    FROM cap_formulario_asistente a
    WHERE a.id_formulario = f.id AND lower(a.estado_aprovacion) LIKE '%no aprobo%'
  ), '') AS no_aprobados,
  -- Sumatoria de asistentes
  (
    SELECT COUNT(*) FROM cap_formulario_asistente a
    WHERE a.id_formulario = f.id
  ) AS total_asistentes
FROM cap_formulario f
LEFT JOIN adm_usuarios u ON f.id_usuario = u.id
LEFT JOIN adm_usuarios creador ON f.creado_por = creador.id
LEFT JOIN adm_usuarios editor ON f.editado_por = editor.id
LEFT JOIN cap_tema t ON f.id_tema = t.id
LEFT JOIN cap_lugar l ON f.id_lugar = l.id
LEFT JOIN cap_tipo_actividad ta ON f.id_tipo_actividad = ta.id
LEFT JOIN cap_proceso p ON f.id_proceso = p.id
ORDER BY f.fecha DESC, f.id DESC
";

try {
    $stmt = $pg->prepare($sql);
    $stmt->execute();
    $capacitaciones = $stmt->fetchAll();
    echo json_encode($capacitaciones);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
      'error' => 'Error al consultar capacitaciones',
      'detalle' => $e->getMessage()
    ]);
}