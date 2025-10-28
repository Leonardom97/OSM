<?php
require_once 'db_sqlserver.php';
require_once 'db_postgres.php';
require_once 'funciones_sync.php';

syncAllColaboradores($sqlsrv, $pg);

echo "✅ Sincronización finalizada.\n";
