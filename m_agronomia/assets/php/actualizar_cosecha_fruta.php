<?php
// Conexión a base de datos temporal
require_once 'db_temporal.php';
// Define la cabecera para respuesta JSON y UTF-8
header('Content-Type: application/json; charset=utf-8');
try {
    // Decodifica el input JSON recibido
    $input = json_decode(file_get_contents('php://input'), true);
    if (!is_array($input)) throw new Exception("JSON inválido");
    // Define las columnas válidas a procesar
    $cols = [
        'cosecha_fruta_id',
        'id',
        'fecha',
        'hora',
        'fecha_actividad',
        'responsable',
        'fecha_corte',
        'plantacion',
        'finca',
        'siembra',
        'lote',
        'parcela',
        'labor_especifica',
        'tipo_corte',
        'equipo',
        'cod_colaborador_contratista',
        'n_grupo_dia',
        'hora_entrada',
        'hora_salida',
        'linea_entrada',
        'linea_salida',
        'total_personas',
        'unidad',
        'cantidad',
        'peso_promedio_lonas',
        'total_persona_dia',
        'contratista',
        'colaborador',
        'nuevo_operador',
        'supervision'
    ];

    // Verifica y obtiene el ID, lanza excepción si no viene o está vacío
    $id = $input['cosecha_fruta_id'] ?? null;
    if (!$id || trim($id) === '') throw new Exception("ID no especificado o vacío");
    // Si no viene supervisión, asigna 'pendiente' por defecto
    if (!array_key_exists('supervision', $input)) $input['supervision'] = 'pendiente';

    // Prepara los arrays para la consulta SQL
    $data = []; $placeholders = []; $values = []; $updates = [];
    foreach ($cols as $col) {
        if (array_key_exists($col, $input)) {
            $data[] = $col; $placeholders[] = '?'; $values[] = $input[$col];
            if ($col !== 'cosecha_fruta_id') $updates[] = "$col = ?";
        }
    }
    if (empty($data)) throw new Exception("No hay datos para insertar o actualizar");

    // Verifica si el registro ya existe en la base de datos
    $stmtCheck = $pg->prepare("SELECT 1 FROM cosecha_fruta WHERE cosecha_fruta_id = ?");
    $stmtCheck->execute([$id]);
    $exists = (bool)$stmtCheck->fetchColumn();

    if ($exists) {
        // Actualiza el registro si existe
        $sql = "UPDATE cosecha_fruta SET ".implode(',', $updates)." WHERE cosecha_fruta_id = ?";
        $valuesUpdate = array_merge(array_slice($values, 1), [$id]);
        $ok = $pg->prepare($sql)->execute($valuesUpdate);
    } else {
        // Inserta un nuevo registro si no existe
        $sql = "INSERT INTO cosecha_fruta (".implode(',', $data).") VALUES (".implode(',', $placeholders).")";
        $ok = $pg->prepare($sql)->execute($values);
    }

    // Devuelve el resultado en formato JSON
    echo json_encode(['success' => (bool)$ok]);
} catch (Throwable $e) {
    // Devuelve el error en formato JSON si ocurre una excepción
    echo json_encode(['success' => false, 'error' => 'exception', 'message' => $e->getMessage()]);
}