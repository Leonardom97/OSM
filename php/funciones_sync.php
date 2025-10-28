<?php
function getColaboradoresSQLServer(PDO $conn_sqlsrv) {
    $query = "
        SELECT 
            REPLACE(SCEDULA, '.', '') AS SCEDULA,
            NOMBRE_1, NOMBRE_2, APELLIDO_1, APELLIDO_2,
            EMPRESA, CARGO, SITUACION, PROYECTO_COSTO
        FROM TEMPLEADOS
    ";
    $stmt = $conn_sqlsrv->query($query);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function syncAllColaboradores(PDO $conn_sqlsrv, PDO $conn_pgsql) {
    $colaboradores = getColaboradoresSQLServer($conn_sqlsrv);

    foreach ($colaboradores as $colaborador) {
        $cedula = preg_replace('/\D/', '', $colaborador['SCEDULA']);
        $nombre1 = $colaborador['NOMBRE_1'];
        $nombre2 = $colaborador['NOMBRE_2'] ?? '';
        $apellido1 = $colaborador['APELLIDO_1'] ?? '';
        $apellido2 = $colaborador['APELLIDO_2'] ?? '';
        $empresa = $colaborador['EMPRESA'];
        $cargo = $colaborador['CARGO'];
        $sub_area = $colaborador['PROYECTO_COSTO'] ?: '000';
        $situacion_codigo = strtoupper($colaborador['SITUACION']);

        $situacion_id = ensureSituacion($conn_pgsql, $situacion_codigo);

        $password_default = null;
        if (!empty($cedula)) {
            $ultimos5 = substr($cedula, -5);
            $valor = (int)$ultimos5 + 2025;
            $letras = strtoupper(substr($apellido1, 0, 1) . substr($apellido2, 0, 1) . substr($nombre1, 0, 1) . substr($nombre2, 0, 1));
            $password_default = $valor . $letras;
        }

        $empresa_id = ensureEmpresa($conn_pgsql, $empresa);
        $cargo_id = ensureCargo($conn_pgsql, $conn_sqlsrv, $cargo);
        $area_id = ensureArea($conn_pgsql, $sub_area);
        $rango = getRangoCargo($conn_pgsql, $cargo_id);

        $es_activo = in_array($situacion_codigo, ['A', 'V', 'P']);

        // Verifica si el mismo registro ya existe
        $stmt = $conn_pgsql->prepare("SELECT ac_id FROM adm_colaboradores WHERE ac_cedula = ? AND ac_id_situación = ? AND ac_sub_area = ? AND ac_id_cargo = ? AND ac_empresa = ?");
        $stmt->execute([$cedula, $situacion_id, $sub_area, $cargo_id, $empresa_id]);

        if ($stmt->rowCount() > 0) {
            $sql = "
                UPDATE adm_colaboradores SET
                    ac_nombre1 = :nombre1,
                    ac_nombre2 = :nombre2,
                    ac_apellido1 = :apellido1,
                    ac_apellido2 = :apellido2,
                    ac_empresa = :empresa,
                    ac_id_cargo = :cargo,
                    ac_id_area = :area,
                    ac_id_situación = :situacion,
                    ac_sub_area = :subarea,
                    ac_rango = :rango
                WHERE ac_cedula = :cedula
                  AND ac_id_situación = :situacion
                  AND ac_sub_area = :subarea
                  AND ac_id_cargo = :cargo
                  AND ac_empresa = :empresa
            ";
        } else {
            // si está activo, actualizar si ya hay otro activo por cédula
            if ($es_activo) {
                $stmt2 = $conn_pgsql->prepare("SELECT ac_id FROM adm_colaboradores WHERE ac_cedula = ? AND ac_id_situación IN ('A', 'V', 'P')");
                $stmt2->execute([$cedula]);

                if ($stmt2->rowCount() > 0) {
                    $sql = "
                        UPDATE adm_colaboradores SET
                            ac_nombre1 = :nombre1,
                            ac_nombre2 = :nombre2,
                            ac_apellido1 = :apellido1,
                            ac_apellido2 = :apellido2,
                            ac_empresa = :empresa,
                            ac_id_cargo = :cargo,
                            ac_id_area = :area,
                            ac_id_situación = :situacion,
                            ac_sub_area = :subarea,
                            ac_rango = :rango
                        WHERE ac_cedula = :cedula AND ac_id_situación IN ('A', 'V', 'P')
                    ";
                } else {
                    $sql = getInsertSQL();
                }
            } else {
                $sql = getInsertSQL(true); // inactivos insertan sin conflictos
            }
        }

        $params = [
            ':cedula' => $cedula,
            ':nombre1' => $nombre1,
            ':nombre2' => $nombre2,
            ':apellido1' => $apellido1,
            ':apellido2' => $apellido2,
            ':empresa' => $empresa_id,
            ':cargo' => $cargo_id,
            ':area' => $area_id,
            ':situacion' => $situacion_id,
            ':subarea' => $sub_area,
            ':rango' => $rango
        ];

        if (strpos($sql, ':password') !== false) {
            $params[':password'] = $password_default;
        }

        $stmt = $conn_pgsql->prepare($sql);
        $stmt->execute($params);

        logSyncAction("Procesado: {$cedula} - {$nombre1} {$apellido1} ({$situacion_codigo})");
    }
}

function getInsertSQL(bool $ignore_conflict = false): string {
    $conflict = $ignore_conflict ? "ON CONFLICT DO NOTHING" : "";
    return "
        INSERT INTO adm_colaboradores (
            ac_cedula, ac_nombre1, ac_nombre2, ac_apellido1, ac_apellido2,
            ac_empresa, ac_id_cargo, ac_id_area, ac_id_situación, ac_contraseña,
            ac_sub_area, ac_rango, ac_id_rol
        ) VALUES (
            :cedula, :nombre1, :nombre2, :apellido1, :apellido2,
            :empresa, :cargo, :area, :situacion, :password,
            :subarea, :rango, 2
        )
        $conflict
    ";
}

function logSyncAction(string $msg): void {
    $file = __DIR__ . '/sync_colaboradores.log';
    $date = date('Y-m-d H:i:s');
    file_put_contents($file, "[$date] $msg\n", FILE_APPEND);
}

// ... (rest of your ensureSituacion, ensureEmpresa, ensureCargo, ensureArea, getNomProyecto, getNombreCargo, getRangoCargo, getRangoFromListado remain the same)


function ensureSituacion(PDO $conn, string $codigo): string {
    $stmt = $conn->prepare("SELECT id FROM adm_situación WHERE id = ?");
    $stmt->execute([$codigo]);
    if ($stmt->rowCount() === 0) {
        $descripcion = match ($codigo) {
            'A' => 'Activo',
            'V' => 'Vacaciones',
            'P' => 'Permiso',
            'E' => 'Egresado',
            'X' => 'Preegresado',
            default => 'No definido'
        };
        $insert = $conn->prepare("INSERT INTO adm_situación (id, descripcion) VALUES (?, ?)");
        $insert->execute([$codigo, $descripcion]);
    }
    return $codigo;
}

function ensureEmpresa(PDO $conn, string $empresa_id): string {
    $stmt = $conn->prepare("SELECT emp_id FROM adm_empresa WHERE emp_id = ?");
    $stmt->execute([$empresa_id]);
    if ($stmt->rowCount() === 0) {
        $insert = $conn->prepare("INSERT INTO adm_empresa (emp_id, emp_nombre) VALUES (?, ?)");
        $insert->execute([$empresa_id, 'EMPRESA DESCONOCIDA']);
    }
    return $empresa_id;
}

function ensureCargo(PDO $conn_pgsql, PDO $conn_sqlsrv, string $cargo_id): string {
    $rango = getRangoFromListado($cargo_id);
    $stmt = $conn_pgsql->prepare("SELECT id_cargo FROM adm_cargos WHERE id_cargo = ?");
    $stmt->execute([$cargo_id]);
    if ($stmt->rowCount() === 0) {
        $nombre = getNombreCargo($conn_sqlsrv, $cargo_id);
        $insert = $conn_pgsql->prepare("INSERT INTO adm_cargos (id_cargo, cargo, rango_cargo) VALUES (?, ?, ?)");
        $insert->execute([$cargo_id, $nombre, $rango]);
    }
    return $cargo_id;
}

function ensureArea(PDO $conn_pgsql, string $sub_area_id): string {
    $listado = [
        "000" => "- SIN PROYECTO -", "001" => "LOGISTICA Y COSECHA", "002" => "PRODUCCION AGRICOLA",
        "003" => "MANTENIMIENTO INDUSTRIAL", "004" => "FRUTA PROVEEDORES", "005" => "ADMINISTRACION",
        "006" => "ADMINISTRACION", "007" => "AGRONOMICA", "008" => "LOGISTICA Y COSECHA",
        "009" => "PRODUCCION AGRICOLA", "010" => "ADMINISTRACION", "011" => "ADMINISTRACION",
        "012" => "ADMINISTRACION", "013" => "ADMINISTRACION", "014" => "PLANTA EXTRACTORA",
        "015" => "PLANTA EXTRACTORA", "016" => "PLANTA EXTRACTORA", "017" => "COMPOST", "999" => "POR ASIGNAR"
    ];

    $stmt = $conn_pgsql->prepare("SELECT id_area FROM adm_área WHERE id_area = ?");
    $stmt->execute([$sub_area_id]);
    if ($stmt->rowCount() === 0) {
        $area = $listado[$sub_area_id] ?? 'NO DEFINIDA';
        $nom_proyecto = getNomProyecto($conn_pgsql, $sub_area_id);
        $insert = $conn_pgsql->prepare("INSERT INTO adm_área (id_area, area, sub_area) VALUES (?, ?, ?)");
        $insert->execute([$sub_area_id, $area, $nom_proyecto]);
    }
    return $sub_area_id;
}

function getNomProyecto(PDO $conn, string $codigo): string {
    $stmt = $conn->prepare("SELECT NOM_PROYECTO FROM TPROYECTO_COST WHERE PROYECTO = ?");
    $stmt->execute([$codigo]);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    return $row['NOM_PROYECTO'] ?? 'NO DEFINIDO';
}

function getNombreCargo(PDO $conn_sqlsrv, string $cargo_id): string {
    $stmt = $conn_sqlsrv->prepare("SELECT NOM_CARGO FROM TCARGOS WHERE CARGO = ?");
    $stmt->execute([$cargo_id]);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    return $row['NOM_CARGO'] ?? 'CARGO DESCONOCIDO';
}

function getRangoCargo(PDO $conn_pgsql, string $cargo_id): string {
    $stmt = $conn_pgsql->prepare("SELECT rango_cargo FROM adm_cargos WHERE id_cargo = ?");
    $stmt->execute([$cargo_id]);
    if ($stmt->rowCount() > 0) {
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        return $row['rango_cargo'];
    }
    return getRangoFromListado($cargo_id);
}

function getRangoFromListado(string $cargo_id): string {
    $listado_cargos = [
        "011" => "ANALISTAS", "027" => "ASISTENTES", "114" => "ASISTENTES", "014" => "ASISTENTES",
        "017" => "ASISTENTES", "125" => "ASISTENTES", "085" => "AUXILIARES", "052" => "AUXILIARES OPERATIVOS",
        "030" => "AUXILIARES OPERATIVOS", "024" => "CONDUCTORES", "018" => "CONDUCTORES",
        "129" => "COORDINADORES", "081" => "COORDINADORES", "105" => "COORDINADORES",
        "128" => "COORDINADORES", "091" => "COORDINADORES", "076" => "COORDINADORES",
        "136" => "COORDINADORES", "117" => "DIRECTORES", "043" => "DIRECTORES", "068" => "DIRECTORES",
        "127" => "DIRECTORES", "007" => "JEFES", "126" => "JEFES", "140" => "OPERATIVOS ADMINISTRATIVOS",
        "020" => "OPERATIVOS ADMINISTRATIVOS", "054" => "OPERATIVOS MANTENIMIENTO", "046" => "OPERATIVOS MANTENIMIENTO",
        "118" => "OPERATIVOS MANTENIMIENTO", "049" => "OPERATIVOS MANTENIMIENTO", "031" => "OPERATIVOS PLANTA EXT",
        "055" => "OPERATIVOS PLANTA EXT", "058" => "OPERATIVOS PLANTA EXT", "033" => "OPERATIVOS PRODUCCION AGRICOLA",
        "029" => "OPERATIVOS PRODUCCION AGRICOLA", "095" => "OPERATIVOS PRODUCCION AGRICOLA",
        "104" => "OPERATIVOS PRODUCCION AGRICOLA", "073" => "OPERATIVOS PRODUCCION AGRICOLA",
        "130" => "SUPERVISORES", "089" => "SUPERVISORES", "047" => "SUPERVISORES",
        "072" => "SUPERVISORES", "112" => "SUPERVISORES", "123" => "SUPERVISORES"
    ];
    return $listado_cargos[$cargo_id] ?? 'NO DEFINIDO';
}
