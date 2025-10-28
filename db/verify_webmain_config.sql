-- SQL Script para Verificar la Configuración Web
-- Ejecutar este script para verificar que el módulo de configuración web está correctamente instalado

-- 1. Verificar que la tabla existe
SELECT 'Tabla adm_webmain:' as verificacion,
       CASE WHEN EXISTS (
           SELECT 1 FROM information_schema.tables 
           WHERE table_schema = 'public' 
           AND table_name = 'adm_webmain'
       ) THEN 'EXISTE ✓' 
       ELSE 'NO EXISTE ✗ - Ejecutar migration_adm_webmain.sql' 
       END as estado;

-- 2. Verificar estructura de la tabla
SELECT 'Estructura de la tabla:' as info;
SELECT column_name, data_type, character_maximum_length, column_default, is_nullable
FROM information_schema.columns
WHERE table_schema = 'public' 
AND table_name = 'adm_webmain'
ORDER BY ordinal_position;

-- 3. Verificar que existe configuración activa
SELECT 'Configuración Activa:' as info;
SELECT 
    CASE WHEN COUNT(*) > 0 THEN 'EXISTE ✓' 
    ELSE 'NO EXISTE ✗ - Debe crear una configuración' 
    END as estado,
    COUNT(*) as cantidad
FROM adm_webmain 
WHERE is_active = true;

-- 4. Mostrar configuración activa
SELECT 'Detalles de Configuración Activa:' as info;
SELECT 
    id,
    site_title,
    footer_text,
    primary_color,
    theme_name,
    favicon_path,
    login_image_path,
    is_active,
    created_at,
    updated_at
FROM adm_webmain 
WHERE is_active = true
LIMIT 1;

-- 5. Mostrar todos los temas guardados
SELECT 'Todos los Temas Guardados:' as info;
SELECT 
    id,
    theme_name,
    primary_color,
    is_active,
    created_at
FROM adm_webmain 
ORDER BY created_at DESC;

-- 6. Verificar índice
SELECT 'Índices de la tabla:' as info;
SELECT 
    indexname,
    indexdef
FROM pg_indexes
WHERE tablename = 'adm_webmain';

-- 7. Verificar trigger
SELECT 'Triggers de la tabla:' as info;
SELECT 
    trigger_name,
    event_manipulation,
    action_timing,
    action_statement
FROM information_schema.triggers
WHERE event_object_table = 'adm_webmain';

-- 8. Test de permisos (opcional - solo si usas roles específicos)
-- SELECT 'Permisos de la tabla:' as info;
-- SELECT grantee, privilege_type 
-- FROM information_schema.role_table_grants 
-- WHERE table_name = 'adm_webmain';

-- Si todo está correcto, deberías ver:
-- ✓ Tabla existe
-- ✓ Tiene todas las columnas correctas
-- ✓ Existe una configuración activa
-- ✓ El índice idx_adm_webmain_active existe
-- ✓ El trigger trg_adm_webmain_updated_at existe
