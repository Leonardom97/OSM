<?php
require_once 'db_temporal.php';
header('Content-Type: application/json; charset=utf-8');
try {
    $input = json_decode(file_get_contents('php://input'), true);
    if (!is_array($input)) throw new Exception("JSON inválido");
    $cols = [
        'monitoreo_trampas_id','id','fecha','hora','colaborador','labor','ubicacion','plantacion','finca','siembra','lote','parcela',
        'tipo_trampa','linea','palma','plaga','hembra','macho','lado_a','lado_b','numero_trampa','estado_lona','estado_trampa',
        'estado_ventana','estado_cania','estado_melaza','estado_feromona','latitude','longitude','estado_tapa','estado_envase','observacion','supervision','check'
    ];

    $id = $input['monitoreo_trampas_id'] ?? null;
    if (!$id || trim($id) === '') throw new Exception("ID no especificado o vacío");

    $data = []; $placeholders = []; $values = []; $updates = [];
    foreach ($cols as $col) {
        if (array_key_exists($col, $input)) {
            $data[] = $col; $placeholders[] = '?'; $values[] = $input[$col];
            if ($col !== 'monitoreo_trampas_id') $updates[] = "$col = ?";
        }
    }
    if (empty($data)) throw new Exception("No hay datos para insertar o actualizar");
    $stmtCheck = $pg->prepare("SELECT 1 FROM monitoreo_trampas WHERE monitoreo_trampas_id = ?");
    $stmtCheck->execute([$id]);
    $exists = (bool)$stmtCheck->fetchColumn();

    if ($exists) {
        $sql = "UPDATE monitoreo_trampas SET ".implode(',', $updates)." WHERE monitoreo_trampas_id = ?";
        $valuesUpdate = array_merge(array_slice($values, 1), [$id]);
        $ok = $pg->prepare($sql)->execute($valuesUpdate);
    } else {
        $sql = "INSERT INTO monitoreo_trampas (".implode(',', $data).") VALUES (".implode(',', $placeholders).")";
        $ok = $pg->prepare($sql)->execute($values);
    }
    echo json_encode(['success' => (bool)$ok]);
} catch (Throwable $e) {
    echo json_encode(['success' => false, 'error' => 'exception', 'message' => $e->getMessage()]);
}