<?php
// www/php/panel.php
// Endpoint que devuelve JSON con los datos mínimos para el panel.
// Usa la conexión definida en www/php/db_postgres.php (require_once).

header('Content-Type: application/json; charset=utf-8');
// Para pruebas locales puedes dejarlo en '*' ; en producción restringe al origen adecuado.
header('Access-Control-Allow-Origin: *');

try {
    // incluir la conexión; db_postgres.php define $pg = new PDO(...).
    require_once __DIR__ . '/db_postgres.php';

    // Asegurarse de que $pg existe y es PDO
    if (!isset($pg) || !($pg instanceof PDO)) {
        http_response_code(500);
        echo json_encode(['ok' => false, 'error' => 'DB_NOT_INITIALIZED', 'message' => 'La conexión a la base de datos no está disponible.'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    // Conteos
    $stmt = $pg->query("SELECT COUNT(*)::int AS total FROM public.adm_usuarios");
    $usuarios = (int) ($stmt->fetchColumn() ?? 0);

    $stmt = $pg->query("SELECT COUNT(*)::int AS total FROM public.adm_colaboradores");
    $colaboradores = (int) ($stmt->fetchColumn() ?? 0);

    $stmt = $pg->query("SELECT COUNT(*)::int AS total FROM public.cap_formulario");
    $capacitaciones_total = (int) ($stmt->fetchColumn() ?? 0);

    // Última fecha de corte
    $fecha_corte = null;
    $stmt = $pg->query("SELECT fecha_corte::text AS fecha_corte FROM public.agr_fecha_corte ORDER BY id_fc DESC LIMIT 1");
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($row && !empty($row['fecha_corte'])) $fecha_corte = $row['fecha_corte'];

    // Últimas 5 capacitaciones con conteo de asistentes
    $sql = "
        SELECT
          f.id,
          COALESCE(t.nombre, '') AS nombre,
          f.fecha::text AS fecha,
          COUNT(a.id)::int AS asistentes
        FROM public.cap_formulario f
        LEFT JOIN public.cap_tema t ON f.id_tema = t.id
        LEFT JOIN public.cap_formulario_asistente a ON a.id_formulario = f.id
        GROUP BY f.id, t.nombre, f.fecha
        ORDER BY f.fecha DESC, f.id DESC
        LIMIT 5
    ";
    $stmt = $pg->query($sql);
    $capacitaciones_recientes = [];
    while ($r = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $capacitaciones_recientes[] = [
            'id' => isset($r['id']) ? (int)$r['id'] : null,
            'nombre' => $r['nombre'],
            'fecha' => $r['fecha'],
            'asistentes' => isset($r['asistentes']) ? (int)$r['asistentes'] : 0
        ];
    }

    echo json_encode([
        'ok' => true,
        'usuarios' => $usuarios,
        'colaboradores' => $colaboradores,
        'capacitaciones_total' => $capacitaciones_total,
        'fecha_corte' => $fecha_corte,
        'capacitaciones_recientes' => $capacitaciones_recientes
    ], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);

} catch (PDOException $e) {
    http_response_code(500);
    error_log("[panel.php] DB error: " . $e->getMessage());
    echo json_encode([
        'ok' => false,
        'error' => 'DB_ERROR',
        'message' => 'Error en la base de datos'
    ], JSON_UNESCAPED_UNICODE);
    exit;
} catch (Exception $e) {
    http_response_code(500);
    error_log("[panel.php] General error: " . $e->getMessage());
    echo json_encode([
        'ok' => false,
        'error' => 'SERVER_ERROR',
        'message' => 'Error interno'
    ], JSON_UNESCAPED_UNICODE);
    exit;
}
?>