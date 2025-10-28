<?php
require_once 'db_temporal.php';
header('Content-Type: application/json; charset=utf-8');
try {
    $input = json_decode(file_get_contents('php://input'), true);
    if (!is_array($input)) throw new Exception("JSON inválido");
    $cols = [
        'ct_cal_trampas_id','id','fecha','hora','responsable','colaborador','plantacion','finca','siembra','lote','parcela',
        'trampa','plaga','hembra','macho','lado_a','lado_b','estado_lona','estado_trampa','estado_ubicacion','estado_ventana',
        'estado_cania','estado_melaza','estado_feromona','calificacion','observaciones','labor','latitude','longitude','supervision','check'
    ];

    $id = $input['ct_cal_trampas_id'] ?? null;
    if (!$id || trim($id) === '') throw new Exception("ID no especificado o vacío");

    $data = []; $placeholders = []; $values = []; $updates = [];
    foreach ($cols as $col) {
        if (array_key_exists($col, $input)) {
            $data[] = $col; $placeholders[] = '?'; $values[] = $input[$col];
            if ($col !== 'ct_cal_trampas_id') $updates[] = "$col = ?";
        }
    }
    if (empty($data)) throw new Exception("No hay datos para insertar o actualizar");
    $stmtCheck = $pg->prepare("SELECT 1 FROM ct_cal_trampas WHERE ct_cal_trampas_id = ?");
    $stmtCheck->execute([$id]);
    $exists = (bool)$stmtCheck->fetchColumn();

    if ($exists) {
        $sql = "UPDATE ct_cal_trampas SET ".implode(',', $updates)." WHERE ct_cal_trampas_id = ?";
        $valuesUpdate = array_merge(array_slice($values, 1), [$id]);
        $ok = $pg->prepare($sql)->execute($valuesUpdate);
    } else {
        $sql = "INSERT INTO ct_cal_trampas (".implode(',', $data).") VALUES (".implode(',', $placeholders).")";
        $ok = $pg->prepare($sql)->execute($values);
    }
    echo json_encode(['success' => (bool)$ok]);
} catch (Throwable $e) {
    echo json_encode(['success' => false, 'error' => 'exception', 'message' => $e->getMessage()]);
}