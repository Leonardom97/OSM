<?php
require_once 'db_temporal.php';
header('Content-Type: application/json; charset=utf-8');
try {
    $input = json_decode(file_get_contents('php://input'), true);
    if (!is_array($input)) throw new Exception("JSON inválido");
    $cols = [
        'nivel_freatico_id','id','fecha','hora','colaborador','plantacion','finca','siembra','lote','parcela','linea','palma','n_pozo_observacion',
        'profundidad_agua','verificacion','validacion','enterrado','nivel_freatico','labor','latitude','longitude','superficie_tubo','supervision','check'
    ];

    $id = $input['nivel_freatico_id'] ?? null;
    if (!$id || trim($id) === '') throw new Exception("ID no especificado o vacío");

    $data = []; $placeholders = []; $values = []; $updates = [];
    foreach ($cols as $col) {
        if (array_key_exists($col, $input)) {
            $data[] = $col; $placeholders[] = '?'; $values[] = $input[$col];
            if ($col !== 'nivel_freatico_id') $updates[] = "$col = ?";
        }
    }
    if (empty($data)) throw new Exception("No hay datos para insertar o actualizar");
    $stmtCheck = $pg->prepare("SELECT 1 FROM nivel_freatico WHERE nivel_freatico_id = ?");
    $stmtCheck->execute([$id]);
    $exists = (bool)$stmtCheck->fetchColumn();

    if ($exists) {
        $sql = "UPDATE nivel_freatico SET ".implode(',', $updates)." WHERE nivel_freatico_id = ?";
        $valuesUpdate = array_merge(array_slice($values, 1), [$id]);
        $ok = $pg->prepare($sql)->execute($valuesUpdate);
    } else {
        $sql = "INSERT INTO nivel_freatico (".implode(',', $data).") VALUES (".implode(',', $placeholders).")";
        $ok = $pg->prepare($sql)->execute($values);
    }
    echo json_encode(['success' => (bool)$ok]);
} catch (Throwable $e) {
    echo json_encode(['success' => false, 'error' => 'exception', 'message' => $e->getMessage()]);
}