<?php
/**
 * supervision_helpers.php
 *
 * Funciones de apoyo para asegurar que la columna 'supervision' exista
 * y para normalizar un valor por defecto.
 */

/**
 * Valida y encierra el identificador de columna entre comillas dobles.
 */
function vh_quote_ident(string $name): string {
    if (!preg_match('/^[A-Za-z0-9_]+$/', $name)) {
        throw new RuntimeException("Identificador inválido: $name");
    }
    return '"' . $name . '"';
}

/**
 * Crea la columna supervision si no existe.
 * Devuelve true si la columna ya existía o se creó correctamente.
 */
function ensure_supervision_column(PDO $pg, string $schema, string $table): bool {
    $sql = "SELECT 1 FROM information_schema.columns
            WHERE table_schema = :s AND table_name = :t AND column_name = 'supervision'";
    $st = $pg->prepare($sql);
    $st->execute(['s'=>$schema,'t'=>$table]);
    if ($st->fetchColumn()) return true;

    $full = vh_quote_ident($schema) . '.' . vh_quote_ident($table);
    $pg->exec("ALTER TABLE $full ADD COLUMN supervision VARCHAR(20) DEFAULT 'pendiente'");
    return true;
}

/**
 * Normaliza el valor de supervision. Si es nulo o vacío y no es admin estricto, retorna 'pendiente'.
 * Si es admin estricto, retorna 'aprobado'.
 */
function normalize_supervision(?string $v, bool $isAdmin): string {
    $v = trim((string)$v);
    if ($v === '') return $isAdmin ? 'aprobado' : 'pendiente';
    $v = strtolower($v);
    if (!in_array($v, ['pendiente','aprobado','rechazado'], true)) {
        return 'pendiente';
    }
    return $v;
}