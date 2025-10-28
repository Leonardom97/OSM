<?php
require_once 'db_temporal.php';
header('Content-Type: application/json; charset=utf-8');
try {
    $input = json_decode(file_get_contents('php://input'), true);
    if (!is_array($input)) throw new Exception("JSON inválido");
    $cols = [
        'fertilizacion_organica_id','fecha_actividad','responsable','plantacion','finca','siembra','lote','parcela',
        'linea_entrada','linea_salida','hora_entrada','hora_salida','labor_especifica','producto_aplicado',
        'dosis_kg','unidad_aplicacion','contratista_colaborador','n_colaboradores','colaboradores','tipo_labor',
        'contratista_maquinaria','n_operadores','tipo_maquina','nombre_operadores','bultos_aplicados','n_traslado',
        'kg_aplicados','supervision','check'
    ];

    $id = $input['fertilizacion_organica_id'] ?? null;
    if (!$id || trim($id) === '') throw new Exception("ID no especificado o vacío");

    $data = []; $placeholders = []; $values = []; $updates = [];
    foreach ($cols as $col) {
        if (array_key_exists($col, $input)) {
            $data[] = $col; $placeholders[] = '?'; $values[] = $input[$col];
            if ($col !== 'fertilizacion_organica_id') $updates[] = "$col = ?";
        }
    }
    if (empty($data)) throw new Exception("No hay datos para insertar o actualizar");
    $stmtCheck = $pg->prepare("SELECT 1 FROM fertilizacion_organica WHERE fertilizacion_organica_id = ?");
    $stmtCheck->execute([$id]);
    $exists = (bool)$stmtCheck->fetchColumn();

    if ($exists) {
        $sql = "UPDATE fertilizacion_organica SET ".implode(',', $updates)." WHERE fertilizacion_organica_id = ?";
        $valuesUpdate = array_merge(array_slice($values, 1), [$id]);
        $ok = $pg->prepare($sql)->execute($valuesUpdate);
    } else {
        $sql = "INSERT INTO fertilizacion_organica (".implode(',', $data).") VALUES (".implode(',', $placeholders).")";
        $ok = $pg->prepare($sql)->execute($values);
    }
    echo json_encode(['success' => (bool)$ok]);
} catch (Throwable $e) {
    echo json_encode(['success' => false, 'error' => 'exception', 'message' => $e->getMessage()]);
}