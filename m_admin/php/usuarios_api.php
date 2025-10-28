<?php
require_once __DIR__ . '/../../php/db_postgres.php';

error_reporting(E_ALL);
ini_set('display_errors', 1);

// GET: consultar roles, siguiente id, usuarios
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (isset($_GET['roles'])) {
        $res_roles = $pg->query("SELECT * FROM adm_roles ORDER BY nombre");
        $roles = $res_roles->fetchAll();
        header('Content-Type: application/json');
        echo json_encode($roles);
        exit;
    }
    if (isset($_GET['next_id'])) {
        $res_id = $pg->query("SELECT MAX(id) AS last_id FROM adm_usuarios");
        $last_id = $res_id->fetch()['last_id'];
        $next_id = $last_id ? $last_id + 1 : 1;
        header('Content-Type: application/json');
        echo json_encode(["next_id" => $next_id]);
        exit;
    }
    $page = isset($_GET['page']) ? intval($_GET['page']) : 1;
    $per_page = isset($_GET['per_page']) ? intval($_GET['per_page']) : 10;
    $search = isset($_GET['search']) ? trim($_GET['search']) : '';
    $id_filter = isset($_GET['id']) ? intval($_GET['id']) : null;
    $offset = ($page - 1) * $per_page;
    $params = [];
    $where = [];
    if ($search !== '') {
        $where[] = "(u.nombre1 ILIKE :search OR u.nombre2 ILIKE :search OR u.apellido1 ILIKE :search OR u.apellido2 ILIKE :search OR u.cedula ILIKE :search OR r.nombre ILIKE :search)";
        $params[':search'] = "%$search%";
    }
    if (!is_null($id_filter)) {
        $where[] = "u.id = :id";
        $params[':id'] = $id_filter;
    }
    $where_sql = $where ? 'WHERE ' . implode(' AND ', $where) : '';
    $sql_total = "SELECT COUNT(DISTINCT u.id) AS total 
        FROM adm_usuarios u
        LEFT JOIN adm_usuario_roles ur ON u.id = ur.usuario_id
        LEFT JOIN adm_roles r ON ur.rol_id = r.id
        $where_sql";
    $stmt_total = $pg->prepare($sql_total);
    $stmt_total->execute($params);
    $total = $stmt_total->fetch()['total'];
    $sql = "SELECT u.*, 
        COALESCE(string_agg(r.nombre, ', ' ORDER BY r.nombre), '') as roles
        FROM adm_usuarios u
        LEFT JOIN adm_usuario_roles ur ON u.id = ur.usuario_id
        LEFT JOIN adm_roles r ON ur.rol_id = r.id
        $where_sql
        GROUP BY u.id
        ORDER BY u.id
        LIMIT $per_page OFFSET $offset";
    $stmt = $pg->prepare($sql);
    $stmt->execute($params);
    $usuarios = $stmt->fetchAll();
    header('Content-Type: application/json');
    echo json_encode([
        "usuarios" => $usuarios,
        "total" => intval($total)
    ]);
    exit;
}

// POST: registrar o editar usuario
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);
    if (!$input) {
        http_response_code(400);
        echo json_encode(["success" => false, "message" => "No se recibieron datos."]);
        exit;
    }
    // Si es registro
    if (isset($input['tipo']) && $input['tipo'] === 'registrar') {
        $cedula = trim($input['cedula']);
        $id_usuario = $cedula; // Usar cédula como identificador externo
        $nombre1 = trim($input['nombre1']);
        $nombre2 = isset($input['nombre2']) ? trim($input['nombre2']) : '';
        $apellido1 = trim($input['apellido1']);
        $apellido2 = isset($input['apellido2']) ? trim($input['apellido2']) : '';
        $contraseña = $input['contraseña'];
        $estado_us = isset($input['estado_us']) ? $input['estado_us'] : "1";
        $avatar = 'avatar1.jpeg';
        $roles = $input['roles'];
        if (!$cedula || !$nombre1 || !$apellido1 || !$contraseña || !is_array($roles) || count($roles) === 0) {
            http_response_code(400);
            echo json_encode(["success" => false, "message" => "Faltan campos obligatorios o roles."]);
            exit;
        }
        // Verificar si la cédula ya existe
        $stmt_check = $pg->prepare("SELECT id FROM adm_usuarios WHERE cedula = :cedula");
        $stmt_check->execute([':cedula' => $cedula]);
        if ($stmt_check->fetch()) {
            http_response_code(409);
            echo json_encode(["success" => false, "message" => "La cédula ya existe en la base de datos."]);
            exit;
        }
        $hash = password_hash($contraseña, PASSWORD_BCRYPT);
        $sql_insert = "INSERT INTO adm_usuarios (id_usuario, cedula, nombre1, nombre2, apellido1, apellido2, contraseña, estado_us, avatar) 
            VALUES (:id_usuario, :cedula, :nombre1, :nombre2, :apellido1, :apellido2, :contrasena, :estado_us, :avatar) RETURNING id";
        $stmt = $pg->prepare($sql_insert);
        $stmt->execute([
            ':id_usuario' => $id_usuario,
            ':cedula' => $cedula,
            ':nombre1' => $nombre1,
            ':nombre2' => $nombre2,
            ':apellido1' => $apellido1,
            ':apellido2' => $apellido2,
            ':contrasena' => $hash,
            ':estado_us' => $estado_us,
            ':avatar' => $avatar
        ]);
        $new_id = $stmt->fetch()['id'];
        foreach ($roles as $rol_id) {
            $stmt_ins = $pg->prepare("INSERT INTO adm_usuario_roles (usuario_id, rol_id) VALUES (:usuario_id, :rol_id)");
            $stmt_ins->execute([
                ':usuario_id' => $new_id,
                ':rol_id' => $rol_id
            ]);
        }
        header('Content-Type: application/json');
        echo json_encode(["success" => true, "message" => "Usuario registrado exitosamente", "id" => $new_id]);
        exit;
    }
    // Si es edición
    if (isset($input['id'])) {
        $id = intval($input['id']);
        $cedula = trim($input['cedula']);
        $id_usuario = $cedula;
        $nombre1 = trim($input['nombre1']);
        $nombre2 = isset($input['nombre2']) ? trim($input['nombre2']) : '';
        $apellido1 = trim($input['apellido1']);
        $apellido2 = isset($input['apellido2']) ? trim($input['apellido2']) : '';
        $estado_us = $input['estado_us'];
        $avatar = 'avatar1.jpeg'; // o del input si se permite editar
        $roles = $input['roles'];
        
        // Check if password is being updated
        if (isset($input['contraseña']) && !empty($input['contraseña'])) {
            $hash = password_hash($input['contraseña'], PASSWORD_BCRYPT);
            $sql_update = "UPDATE adm_usuarios SET id_usuario=:id_usuario, cedula=:cedula, nombre1=:nombre1, nombre2=:nombre2, apellido1=:apellido1, apellido2=:apellido2, contraseña=:contrasena, estado_us=:estado_us, avatar=:avatar WHERE id=:id";
            $stmt = $pg->prepare($sql_update);
            $stmt->execute([
                ':id_usuario' => $id_usuario,
                ':cedula' => $cedula,
                ':nombre1' => $nombre1,
                ':nombre2' => $nombre2,
                ':apellido1' => $apellido1,
                ':apellido2' => $apellido2,
                ':contrasena' => $hash,
                ':estado_us' => $estado_us,
                ':avatar' => $avatar,
                ':id' => $id
            ]);
        } else {
            // Update without changing password
            $sql_update = "UPDATE adm_usuarios SET id_usuario=:id_usuario, cedula=:cedula, nombre1=:nombre1, nombre2=:nombre2, apellido1=:apellido1, apellido2=:apellido2, estado_us=:estado_us, avatar=:avatar WHERE id=:id";
            $stmt = $pg->prepare($sql_update);
            $stmt->execute([
                ':id_usuario' => $id_usuario,
                ':cedula' => $cedula,
                ':nombre1' => $nombre1,
                ':nombre2' => $nombre2,
                ':apellido1' => $apellido1,
                ':apellido2' => $apellido2,
                ':estado_us' => $estado_us,
                ':avatar' => $avatar,
                ':id' => $id
            ]);
        }
        
        $stmt_del = $pg->prepare("DELETE FROM adm_usuario_roles WHERE usuario_id=:id");
        $stmt_del->execute([':id' => $id]);
        if (is_array($roles)) {
            foreach ($roles as $rol_id) {
                $stmt_ins = $pg->prepare("INSERT INTO adm_usuario_roles (usuario_id, rol_id) VALUES (:usuario_id, :rol_id)");
                $stmt_ins->execute([
                    ':usuario_id' => $id,
                    ':rol_id' => $rol_id
                ]);
            }
        }
        header('Content-Type: application/json');
        echo json_encode(["success" => true, "message" => "Usuario actualizado exitosamente", "id" => $id]);
        exit;
    }
}

// PATCH: activar/desactivar usuario
if ($_SERVER['REQUEST_METHOD'] === 'PATCH') {
    $input = json_decode(file_get_contents('php://input'), true);
    if (!$input) {
        http_response_code(400);
        echo json_encode(["success" => false, "message" => "No se recibieron datos."]);
        exit;
    }
    $id = intval($input['id']);
    $estado = $input['estado'];
    $sql_estado = "UPDATE adm_usuarios SET estado_us=:estado WHERE id=:id";
    $stmt = $pg->prepare($sql_estado);
    $stmt->execute([
        ':estado' => $estado,
        ':id' => $id
    ]);
    header('Content-Type: application/json');
    echo json_encode(["success" => true]);
    exit;
}

http_response_code(405);
echo json_encode(["success" => false, "message" => "Método no permitido"]);
exit;
?>