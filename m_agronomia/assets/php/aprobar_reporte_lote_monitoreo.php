<?php
// Requiere privilegios de administrador antes de continuar
require_once __DIR__ . '/require_admin.php';
require_admin_only();

// Configura la respuesta como JSON
header('Content-Type: application/json; charset=utf-8');

try {
    // Solo se permite método POST
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        http_response_code(405);
        echo json_encode(['success'=>false,'error'=>'method_not_allowed']); exit;
    }
    // Decodifica el cuerpo de la petición y obtiene el ID
    $body = json_decode(file_get_contents('php://input'), true) ?? [];
    $id = isset($body['reporte_lote_monitoreo_id']) ? trim($body['reporte_lote_monitoreo_id']) : '';
    if ($id === '') throw new RuntimeException('reporte_lote_monitoreo_id requerido');

    // Conexión a base temporal y principal
    require_once __DIR__.'/db_temporal.php';
    $pgTemp = $pg;
    require_once __DIR__.'/db_postgres_prueba.php';
    $pgMain = $pg;

    // Configura PDO para lanzar excepciones en caso de error
    $pgTemp->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pgMain->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $table = 'reporte_lote_monitoreo';
    $idCol = 'reporte_lote_monitoreo_id';

    // Función para validar nombres de columnas
    $qid = function(string $c): string {
        if(!preg_match('/^[A-Za-z0-9_]+$/',$c)) throw new RuntimeException("Identificador inválido: $c");
        return '"'.$c.'"';
    };
    // Obtiene columnas de la tabla de la base de datos
    $getColumns = function(PDO $pdo,string $table) {
        $st = $pdo->prepare("SELECT column_name FROM information_schema.columns WHERE table_schema='public' AND table_name=:t");
        $st->execute(['t'=>$table]);
        return $st->fetchAll(PDO::FETCH_COLUMN) ?: [];
    };
    // Verifica si una columna existe en la tabla
    $hasCol = function(PDO $pdo,string $table,string $col): bool {
        $st = $pdo->prepare("SELECT 1 FROM information_schema.columns WHERE table_schema='public' AND table_name=:t AND column_name=:c");
        $st->execute(['t'=>$table,'c'=>$col]);
        return (bool)$st->fetchColumn();
    };

    // Busca el registro en la base temporal
    $st = $pgTemp->prepare("SELECT * FROM public.$table WHERE $idCol = :id LIMIT 1");
    $st->execute(['id'=>$id]);
    $row = $st->fetch(PDO::FETCH_ASSOC);

    // Determina las columnas comunes en ambas bases
    $colsTemp = $getColumns($pgTemp,$table);
    $colsMain = $getColumns($pgMain,$table);
    $setTemp = array_flip($colsTemp);

    $colsCommon = [];
    foreach($colsMain as $c){ if(isset($setTemp[$c])) $colsCommon[] = $c; }
    if(!in_array($idCol,$colsCommon,true)) $colsCommon[] = $idCol;

    $moved=false; $deleted=false; $updatedBase=false; $op=null;

    // Si el registro existe en temporal, intenta aprobar e insertar/actualizar en principal
    if($row){
        $assign = [];
        $vals = [];
        foreach($colsCommon as $c){
            if($c === $idCol) continue;
            if($c === 'supervision' || $c === 'check') continue;
            if(array_key_exists($c,$row)){
                $assign[] = $qid($c).' = ?';
                $vals[] = $row[$c];
            }
        }
        $hasSupervisionMain = $hasCol($pgMain,$table,'supervision');
        $hasCheckMain = $hasCol($pgMain, $table, 'check');

        // Asigna valores de aprobación
        if($hasSupervisionMain){
            $assign[] = $qid('supervision').' = ?';
            $vals[] = 'aprobado';
        }
        if($hasCheckMain){
            $assign[] = $qid('check').' = ?';
            $vals[] = 1;
        }
        $vals[] = $id;

        // Inicia transacción
        $pgMain->beginTransaction();
        try {
            // Intenta actualizar primero
            $sqlUpd = "UPDATE public.$table SET ".implode(', ', $assign ?: [$qid('supervision')." = 'aprobado'"])." WHERE $idCol = ?";
            $upd = $pgMain->prepare($sqlUpd);
            $upd->execute($vals);
            $updatedBase = $upd->rowCount() > 0;
            $op = $updatedBase ? 'update' : 'insert';

            // Si no existía, lo inserta
            if(!$updatedBase){
                $insCols = [];
                $ph = [];
                $insVals = [];
                foreach($colsCommon as $c){
                    if(array_key_exists($c,$row)){
                        if($c === 'supervision' || $c === 'check') continue;
                        $insCols[] = $qid($c);
                        $ph[] = '?';
                        $insVals[] = $row[$c];
                    }
                }
                if(!in_array($idCol, array_map(fn($x)=>trim($x,'"'), $insCols), true)){
                    $insCols[] = $qid($idCol);
                    $ph[]='?';
                    $insVals[] = $id;
                }
                if($hasSupervisionMain){
                    $insCols[] = $qid('supervision');
                    $ph[]='?';
                    $insVals[] = 'aprobado';
                }
                if($hasCheckMain){
                    $insCols[] = $qid('check');
                    $ph[]='?';
                    $insVals[] = 1;
                }
                $sqlIns = "INSERT INTO public.$table (".implode(',',$insCols).") VALUES (".implode(',',$ph).")";
                $ok = $pgMain->prepare($sqlIns)->execute($insVals);
                $updatedBase = $ok;
            }
            // Borra el registro de la base temporal
            $del = $pgTemp->prepare("DELETE FROM public.$table WHERE $idCol = :id");
            $del->execute(['id'=>$id]);
            $deleted = $del->rowCount() > 0;

            $pgMain->commit();
            $moved = true;
        } catch(Throwable $e){
            $pgMain->rollBack();
            throw $e;
        }
    } else {
        // Si no hay registro en temporal, intenta actualizar en principal
        $hasCheckMain = $hasCol($pgMain, $table, 'check');
        if($hasCol($pgMain,$table,'supervision') || $hasCheckMain){
            $assign = [];
            if($hasCol($pgMain,$table,'supervision')){
                $assign[] = "supervision='aprobado'";
            }
            if($hasCheckMain){
                $assign[] = "check=1";
            }
            $sqlUpd = "UPDATE public.$table SET ".implode(', ',$assign)." WHERE $idCol=:id";
            $stU = $pgMain->prepare($sqlUpd);
            $stU->execute(['id'=>$id]);
            $updatedBase = $stU->rowCount()>0;
            $op = 'update_only';
        } else {
            $op = 'noop';
        }
    }

    // Devuelve el resultado como JSON
    echo json_encode([
        'success'=> ($moved || $updatedBase),
        'id'=>$id,
        'estado'=>'aprobado',
        'moved'=>$moved,
        'deleted_temp'=>$deleted,
        'updated_base'=>$updatedBase,
        'op'=>$op
    ]);
} catch(Throwable $e){
    // Devuelve error en formato JSON
    echo json_encode(['success'=>false,'error'=>'exception','message'=>$e->getMessage()]);
}