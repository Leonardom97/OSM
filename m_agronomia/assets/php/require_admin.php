<?php
/**
 * require_admin.php
 *
 * Este archivo provee funciones para validación de roles de usuario:
 *  - require_admin(): permite administrador, supervisor agronómico o roles que contengan 'aux'
 *  - require_admin_only(): SOLO administrador o supervisor agronómico (acepta sinónimos: admin, administrador, administrator, supervisor_agronomico)
 *  - collect_roles(): obtiene roles desde sesión y header X-USER-ROLES
 */

/**
 * Recolecta roles del usuario desde la sesión y encabezado HTTP.
 * Devuelve un arreglo de roles únicos en minúscula.
 */
function collect_roles(): array {
  // Asegura que la sesión esté iniciada
  if (session_status() !== PHP_SESSION_ACTIVE) {
    @session_start();
  }
  $raw = [];
  // Función auxiliar para agregar valores al arreglo $raw
  $push = function($v) use (&$raw) {
    if (is_array($v)) {
      foreach ($v as $x) $raw[] = $x;
    } elseif ($v !== null) {
      $raw[] = $v;
    }
  };

  // Recolecta posibles ubicaciones de roles en la sesión o encabezados
  if (isset($_SESSION['roles']))              $push($_SESSION['roles']);
  if (isset($_SESSION['role']))               $push($_SESSION['role']);
  if (isset($_SESSION['rol']))                $push($_SESSION['rol']);
  if (isset($_SESSION['usuario']['roles']))   $push($_SESSION['usuario']['roles']);
  if (!empty($_SERVER['HTTP_X_USER_ROLES']))  $push($_SERVER['HTTP_X_USER_ROLES']);

  $out = [];
  foreach ($raw as $item) {
    // Si es string, lo separa por comas o punto y coma y agrega cada rol
    if (is_string($item)) {
      foreach (preg_split('/[,;]+/', $item) as $p) {
        $p = strtolower(trim($p));
        if ($p !== '') $out[] = $p;
      }
    } elseif (is_scalar($item)) {
      $p = strtolower(trim((string)$item));
      if ($p !== '') $out[] = $p;
    } elseif (is_array($item)) {
      foreach ($item as $x) {
        if (is_scalar($x) || is_string($x)) {
          $p = strtolower(trim((string)$x));
          if ($p !== '') $out[] = $p;
        }
      }
    }
  }
  return array_values(array_unique($out));
}

/**
 * Permite acceso a administradores, supervisor agronómico o usuarios con rol auxiliar.
 */
function require_admin(): void {
  $roles = collect_roles();
  $isAdmin = in_array('administrador', $roles, true) ||
             in_array('admin', $roles, true) ||
             in_array('administrator', $roles, true) ||
             in_array('supervisor_agronomico', $roles, true); // <-- habilita supervisor agronómico

  $isAux = false;
  foreach ($roles as $r) {
    if (strpos($r, 'aux') !== false) { $isAux = true; break; }
  }
  // Si no es admin, auxiliar ni supervisor agronómico, responde 403 y termina
  if (!($isAdmin || $isAux)) {
    http_response_code(403);
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode([
      'success' => false,
      'error'   => 'Acceso denegado. Se requiere rol administrador, supervisor agronómico o auxiliar.',
      'roles_detectados' => $roles
    ]);
    exit;
  }
}

/**
 * Permite acceso SOLO a administradores o supervisor agronómico (acepta variantes admin, administrador, supervisor_agronomico).
 */
function require_admin_only(): void {
  $roles = collect_roles();
  $ok = in_array('administrador', $roles, true) ||
        in_array('admin', $roles, true) ||
        in_array('administrator', $roles, true) ||
        in_array('supervisor_agronomico', $roles, true); // <-- habilita supervisor agronómico
  if (!$ok) {
    http_response_code(403);
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode([
      'success' => false,
      'error'   => 'Acceso denegado. Sólo el rol administrador o supervisor agronómico puede realizar esta acción.',
      'roles_detectados' => $roles
    ]);
    exit;
  }
}