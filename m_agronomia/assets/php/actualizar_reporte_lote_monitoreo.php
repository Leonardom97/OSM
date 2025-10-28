<?php
require_once 'db_temporal.php';
header('Content-Type: application/json; charset=utf-8');
try {
    $input = json_decode(file_get_contents('php://input'), true);
    if (!is_array($input)) throw new Exception("JSON inválido");
    $cols = [
        'reporte_lote_monitoreo_id','fecha','hora','colaborador','labor','plantacion','finca','siembra','lote','parcela','linea','palma','hallazgo','observacion','error_registro','supervision','check'
    ];

    $id = $input['reporte_lote_monitoreo_id'] ?? null;
    if (!$id || trim($id) === '') throw new Exception("ID no especificado o vacío");

    $data = []; $placeholders = []; $values = []; $updates = [];
    foreach ($cols as $col) {
        if (array_key_exists($col, $input)) {
            $data[] = $col; $placeholders[] = '?'; $values[] = $input[$col];
            if ($col !== 'reporte_lote_monitoreo_id') $updates[] = "$col = ?";
        }
    }
    if (empty($data)) throw new Exception("No hay datos para insertar o actualizar");
    $stmtCheck = $pg->prepare("SELECT 1 FROM reporte_lote_monitoreo WHERE reporte_lote_monitoreo_id = ?");
    $stmtCheck->execute([$id]);
    $exists = (bool)$stmtCheck->fetchColumn();

    if ($exists) {
        $sql = "UPDATE reporte_lote_monitoreo SET ".implode(',', $updates)." WHERE reporte_lote_monitoreo_id = ?";
        $valuesUpdate = array_merge(array_slice($values, 1), [$id]);
        $ok = $pg->prepare($sql)->execute($valuesUpdate);
    } else {
        $sql = "INSERT INTO reporte_lote_monitoreo (".implode(',', $data).") VALUES (".implode(',', $placeholders).")";
        $ok = $pg->prepare($sql)->execute($values);
    }
    echo json_encode(['success' => (bool)$ok]);
} catch (Throwable $e) {
    echo json_encode(['success' => false, 'error' => 'exception', 'message' => $e->getMessage()]);
}