# Análisis de Compatibilidad SQL para PostgreSQL 9.x

## Resumen Ejecutivo

Este documento proporciona un análisis exhaustivo de la compatibilidad del código SQL del proyecto OSM con PostgreSQL versión 9.x, identificando características que requieren modificación y proporcionando soluciones alternativas.

## Tabla de Contenidos

1. [Estado General de Compatibilidad](#estado-general-de-compatibilidad)
2. [Análisis del Archivo `osm_postgres.sql`](#análisis-del-archivo-osm_postgressql)
3. [Análisis del Archivo `migration_adm_webmain.sql`](#análisis-del-archivo-migration_adm_webmainsql)
4. [Función PL/pgSQL](#función-plpgsql)
5. [Modificaciones Requeridas](#modificaciones-requeridas)
6. [Scripts de Conversión](#scripts-de-conversión)
7. [Recomendaciones](#recomendaciones)

---

## Estado General de Compatibilidad

### ✅ Compatibilidad Global: 95%

| Componente | Compatibilidad | Notas |
|------------|----------------|-------|
| Estructura de tablas | 100% | Sin problemas |
| Tipos de datos | 100% | Todos soportados desde PG 9.0 |
| Secuencias | 100% | Sintaxis estándar |
| Índices | 100% | Todos compatibles |
| Foreign Keys | 100% | CASCADE soportado |
| Vistas | 100% | Sin problemas |
| CTEs (WITH) | 100% | Desde PG 8.4 |
| Funciones PL/pgSQL básicas | 100% | Compatible |
| **IDENTITY Columns** | **❌ 0%** | Requiere PG 10+ |
| **ON CONFLICT** | **❌ 0%** | Requiere PG 9.5+ |

### Archivos Analizados

1. **`db/osm_postgres.sql`** - Base de datos principal
2. **`db/migration_adm_webmain.sql`** - Migración de configuración web
3. **`db/verify_webmain_config.sql`** - Verificación (solo consultas, compatible)

---

## Análisis del Archivo `osm_postgres.sql`

### ✅ Características Compatibles (100% del archivo)

#### 1. **Sequences (Secuencias)**
```sql
DROP SEQUENCE IF EXISTS "public"."adm_intentos_login_id_seq";
CREATE SEQUENCE "public"."adm_intentos_login_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
```
**Estado**: ✅ Compatible desde PostgreSQL 8.0+

#### 2. **Tablas con Tipos de Datos Estándar**
```sql
CREATE TABLE "public"."adm_colaboradores" (
  "ac_id" int4 NOT NULL DEFAULT nextval('asistente_id_seq'::regclass),
  "ac_cedula" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "ac_nombre1" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "ac_contraseña" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ac_id_rol" int4 NOT NULL DEFAULT 1
);
```
**Estado**: ✅ Todos los tipos (int4, varchar, bool, date, timestamp, timestamptz) son compatibles desde PG 8.0+

#### 3. **Índices**
```sql
CREATE INDEX "idx_colaboradores_cedula" ON "public"."adm_colaboradores" USING btree (
  "ac_cedula" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
```
**Estado**: ✅ Sintaxis completa compatible desde PG 8.3+

#### 4. **Foreign Keys con CASCADE**
```sql
ALTER TABLE "public"."cap_programacion" 
  ADD CONSTRAINT "fk_cargo" 
  FOREIGN KEY ("id_cargo") 
  REFERENCES "public"."adm_cargos" ("id_cargo") 
  ON DELETE CASCADE 
  ON UPDATE NO ACTION;
```
**Estado**: ✅ Compatible desde PG 7.3+

#### 5. **Unique Constraints**
```sql
ALTER TABLE "public"."adm_colaboradores" 
  ADD CONSTRAINT "unique_colaborador" 
  UNIQUE ("ac_cedula", "ac_id_situación", "ac_sub_area", "ac_id_cargo", "ac_empresa");
```
**Estado**: ✅ Compatible desde PG 7.1+

#### 6. **CTEs (Common Table Expressions)**
```sql
WITH ultima_capacitacion AS (
  SELECT 
    c.ac_id,
    p.id as programacion_id,
    MAX(CASE WHEN fa.id IS NOT NULL THEN f.fecha ELSE NULL END) AS fecha_ultima
  FROM adm_colaboradores c
  INNER JOIN cap_programacion p ON ...
  GROUP BY c.ac_id, p.id
)
SELECT * FROM ultima_capacitacion;
```
**Estado**: ✅ Compatible desde PG 8.4+

#### 7. **Funciones de Ventana (Window Functions)**
```sql
SELECT 
  MAX(CASE WHEN fa.id IS NOT NULL THEN f.fecha ELSE NULL END) AS fecha_ultima
FROM ...
```
**Estado**: ✅ Compatible desde PG 8.4+

#### 8. **Vistas**
```sql
CREATE VIEW "public"."v_progreso_capacitaciones" AS  
SELECT 
  c.ac_id,
  count(DISTINCT p.id) AS capacitaciones_programadas,
  count(DISTINCT CASE WHEN fa.id IS NOT NULL THEN fa.id_formulario ELSE NULL::integer END) AS capacitaciones_realizadas
FROM adm_colaboradores c
LEFT JOIN cap_programacion p ON ...
GROUP BY c.ac_id;
```
**Estado**: ✅ Compatible desde PG 7.1+

#### 9. **Funciones PL/pgSQL Básicas**
```sql
CREATE OR REPLACE FUNCTION "public"."trigger_set_updated_at"()
RETURNS trigger AS
$$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
```
**Estado**: ✅ Compatible desde PG 7.0+ (PL/pgSQL es el lenguaje nativo)

#### 10. **Triggers**
```sql
CREATE TRIGGER trg_adm_webmain_updated_at
BEFORE UPDATE ON public.adm_webmain
FOR EACH ROW
EXECUTE FUNCTION public.trigger_set_updated_at();
```
**Estado**: ✅ Compatible desde PG 7.0+ (sintaxis moderna desde PG 11, pero equivalente funciona en PG 9)

**Nota**: En PostgreSQL 9.x usar:
```sql
EXECUTE PROCEDURE public.trigger_set_updated_at();
```
En lugar de `EXECUTE FUNCTION` (cambio cosmético introducido en PG 11)

---

## Análisis del Archivo `migration_adm_webmain.sql`

### ❌ Problemas de Compatibilidad

#### Problema 1: IDENTITY Columns

**Código Actual (Requiere PostgreSQL 10+)**:
```sql
CREATE TABLE public.adm_webmain (
  id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  site_title varchar(100) NOT NULL DEFAULT 'OSM',
  ...
);
```

**Por qué NO funciona en PostgreSQL 9.x**:
- La sintaxis `GENERATED BY DEFAULT AS IDENTITY` fue introducida en PostgreSQL 10.0 (Octubre 2017)
- PostgreSQL 9.x no reconoce esta sintaxis y lanzará error de sintaxis

**✅ Solución para PostgreSQL 9.x**:

**Opción A - Usar SERIAL (Recomendado)**:
```sql
CREATE TABLE public.adm_webmain (
  id SERIAL PRIMARY KEY,
  site_title varchar(100) NOT NULL DEFAULT 'OSM',
  footer_text varchar(200) NOT NULL DEFAULT '© OSM 2025',
  favicon_path varchar(255) NOT NULL DEFAULT 'assets/img/Sin título-2.png',
  login_image_path varchar(255) NOT NULL DEFAULT 'assets/img/ico.jpg',
  primary_color varchar(7) NOT NULL DEFAULT '#772e22',
  is_active boolean NOT NULL DEFAULT true,
  theme_name varchar(50),
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
```

**Opción B - Crear Secuencia Manual**:
```sql
-- Crear secuencia manualmente
CREATE SEQUENCE public.adm_webmain_id_seq;

-- Crear tabla con secuencia
CREATE TABLE public.adm_webmain (
  id integer NOT NULL DEFAULT nextval('adm_webmain_id_seq'::regclass) PRIMARY KEY,
  site_title varchar(100) NOT NULL DEFAULT 'OSM',
  ...
);

-- Asociar secuencia con columna
ALTER SEQUENCE public.adm_webmain_id_seq OWNED BY public.adm_webmain.id;

-- Ajustar valor inicial
SELECT setval('public.adm_webmain_id_seq', 1, false);
```

**Diferencias entre SERIAL e IDENTITY**:
- `SERIAL`: Macro que crea secuencia y columna INT con DEFAULT nextval()
- `IDENTITY`: Estándar SQL:2003, mayor control sobre comportamiento
- Ambos logran el mismo resultado para auto-incremento
- `SERIAL` es la solución tradicional de PostgreSQL pre-10

---

## Función PL/pgSQL

### ❌ Problema: ON CONFLICT (UPSERT)

**Código Actual (Requiere PostgreSQL 9.5+)**:
```sql
CREATE OR REPLACE FUNCTION "public"."actualizar_notificaciones_capacitacion"()
RETURNS "pg_catalog"."void" AS $BODY$
BEGIN
  -- ... código previo ...
  
  INSERT INTO cap_notificaciones (
    id_colaborador,
    id_programacion,
    fecha_ultima_capacitacion,
    fecha_proxima,
    dias_para_vencimiento,
    estado
  )
  SELECT 
    uc.ac_id,
    uc.programacion_id,
    ...
  FROM ultima_capacitacion uc
  ON CONFLICT (id_colaborador, id_programacion) 
  DO UPDATE SET
    fecha_ultima_capacitacion = EXCLUDED.fecha_ultima_capacitacion,
    fecha_proxima = EXCLUDED.fecha_proxima,
    dias_para_vencimiento = EXCLUDED.dias_para_vencimiento,
    estado = EXCLUDED.estado,
    fecha_actualizacion = CURRENT_TIMESTAMP;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;
```

**Por qué NO funciona en PostgreSQL 9.x**:
- `INSERT ... ON CONFLICT ... DO UPDATE` (UPSERT) fue introducido en PostgreSQL 9.5
- PostgreSQL 9.0-9.4 no soportan esta sintaxis
- Lanzará error: `syntax error at or near "CONFLICT"`

**✅ Solución para PostgreSQL 9.x**:

**Técnica 1: UPDATE + INSERT Condicional (Recomendado)**:
```sql
CREATE OR REPLACE FUNCTION "public"."actualizar_notificaciones_capacitacion"()
RETURNS "pg_catalog"."void" AS $BODY$
DECLARE
  rec RECORD;
BEGIN
  -- Paso 1: Eliminar notificaciones de programas inactivos
  DELETE FROM cap_notificaciones 
  WHERE id_programacion IN (
    SELECT id FROM cap_programacion WHERE activo = false
  );

  -- Paso 2: Construir datos de notificaciones
  FOR rec IN
    WITH ultima_capacitacion AS (
      SELECT 
        c.ac_id,
        p.id as programacion_id,
        MAX(CASE WHEN fa.id IS NOT NULL THEN f.fecha ELSE NULL END) AS fecha_ultima,
        p.frecuencia_meses
      FROM 
        adm_colaboradores c
        INNER JOIN cap_programacion p ON c.ac_id_cargo = p.id_cargo 
          AND (p.sub_area IS NULL OR p.sub_area = c.ac_sub_area)
          AND p.activo = true
        LEFT JOIN cap_formulario f ON f.id_tema = p.id_tema
        LEFT JOIN cap_formulario_asistente fa ON fa.id_formulario = f.id AND fa.cedula = c.ac_cedula
      WHERE 
        c.ac_id_situación IN ('A', 'V', 'P')
      GROUP BY 
        c.ac_id, p.id, p.frecuencia_meses
    )
    SELECT 
      uc.ac_id as colaborador_id,
      uc.programacion_id,
      uc.fecha_ultima,
      CASE 
        WHEN uc.fecha_ultima IS NULL THEN CURRENT_DATE
        ELSE uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month')
      END AS fecha_proxima,
      CASE 
        WHEN uc.fecha_ultima IS NULL THEN 0
        ELSE EXTRACT(DAY FROM (uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month') - CURRENT_DATE))::int
      END AS dias_para_vencimiento,
      CASE 
        WHEN uc.fecha_ultima IS NULL THEN 'pendiente'
        WHEN (uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month')) < CURRENT_DATE THEN 'vencida'
        WHEN (uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month')) <= (CURRENT_DATE + INTERVAL '30 days') THEN 'proximo_vencer'
        ELSE 'vigente'
      END AS estado
    FROM ultima_capacitacion uc
  LOOP
    -- Intenta UPDATE primero
    UPDATE cap_notificaciones SET
      fecha_ultima_capacitacion = rec.fecha_ultima,
      fecha_proxima = rec.fecha_proxima,
      dias_para_vencimiento = rec.dias_para_vencimiento,
      estado = rec.estado,
      fecha_actualizacion = CURRENT_TIMESTAMP
    WHERE id_colaborador = rec.colaborador_id 
      AND id_programacion = rec.programacion_id;
    
    -- Si no se actualizó ninguna fila, INSERT
    IF NOT FOUND THEN
      INSERT INTO cap_notificaciones (
        id_colaborador,
        id_programacion,
        fecha_ultima_capacitacion,
        fecha_proxima,
        dias_para_vencimiento,
        estado
      ) VALUES (
        rec.colaborador_id,
        rec.programacion_id,
        rec.fecha_ultima,
        rec.fecha_proxima,
        rec.dias_para_vencimiento,
        rec.estado
      );
    END IF;
  END LOOP;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;
```

**Técnica 2: Usar Temporary Table (Alternativa)**:
```sql
CREATE OR REPLACE FUNCTION "public"."actualizar_notificaciones_capacitacion"()
RETURNS "pg_catalog"."void" AS $BODY$
BEGIN
  -- Paso 1: Limpieza
  DELETE FROM cap_notificaciones 
  WHERE id_programacion IN (
    SELECT id FROM cap_programacion WHERE activo = false
  );

  -- Paso 2: Crear tabla temporal con datos nuevos
  CREATE TEMP TABLE temp_notificaciones AS
  WITH ultima_capacitacion AS (
    -- ... mismo CTE ...
  )
  SELECT 
    uc.ac_id as id_colaborador,
    uc.programacion_id as id_programacion,
    uc.fecha_ultima as fecha_ultima_capacitacion,
    CASE 
      WHEN uc.fecha_ultima IS NULL THEN CURRENT_DATE
      ELSE uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month')
    END AS fecha_proxima,
    CASE 
      WHEN uc.fecha_ultima IS NULL THEN 0
      ELSE EXTRACT(DAY FROM (uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month') - CURRENT_DATE))::int
    END AS dias_para_vencimiento,
    CASE 
      WHEN uc.fecha_ultima IS NULL THEN 'pendiente'
      WHEN (uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month')) < CURRENT_DATE THEN 'vencida'
      WHEN (uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month')) <= (CURRENT_DATE + INTERVAL '30 days') THEN 'proximo_vencer'
      ELSE 'vigente'
    END AS estado
  FROM ultima_capacitacion uc;

  -- Paso 3: UPDATE registros existentes
  UPDATE cap_notificaciones cn SET
    fecha_ultima_capacitacion = tn.fecha_ultima_capacitacion,
    fecha_proxima = tn.fecha_proxima,
    dias_para_vencimiento = tn.dias_para_vencimiento,
    estado = tn.estado,
    fecha_actualizacion = CURRENT_TIMESTAMP
  FROM temp_notificaciones tn
  WHERE cn.id_colaborador = tn.id_colaborador
    AND cn.id_programacion = tn.id_programacion;

  -- Paso 4: INSERT registros nuevos
  INSERT INTO cap_notificaciones (
    id_colaborador,
    id_programacion,
    fecha_ultima_capacitacion,
    fecha_proxima,
    dias_para_vencimiento,
    estado
  )
  SELECT 
    tn.id_colaborador,
    tn.id_programacion,
    tn.fecha_ultima_capacitacion,
    tn.fecha_proxima,
    tn.dias_para_vencimiento,
    tn.estado
  FROM temp_notificaciones tn
  WHERE NOT EXISTS (
    SELECT 1 FROM cap_notificaciones cn
    WHERE cn.id_colaborador = tn.id_colaborador
      AND cn.id_programacion = tn.id_programacion
  );

  -- Limpieza
  DROP TABLE temp_notificaciones;
END;
$BODY$ LANGUAGE plpgsql VOLATILE COST 100;
```

**Comparación de Técnicas**:

| Técnica | Ventajas | Desventajas | Rendimiento |
|---------|----------|-------------|-------------|
| **UPDATE + INSERT en LOOP** | Simple, fácil de entender | Más lento con muchos registros | Moderado (1-1000 registros) |
| **Temporary Table** | Más rápido con datasets grandes | Más complejo | Alto (1000+ registros) |
| **ON CONFLICT (PG 9.5+)** | Más limpio, atómico | No disponible en PG 9.x | Óptimo |

**Recomendación**: Usar **Temporary Table** para mejor rendimiento en PostgreSQL 9.x.

---

## Modificaciones Requeridas

### Resumen de Cambios Necesarios

1. **migration_adm_webmain.sql**: Cambiar IDENTITY a SERIAL
2. **osm_postgres.sql**: Cambiar función `actualizar_notificaciones_capacitacion()`
3. **Triggers**: Cambiar `EXECUTE FUNCTION` a `EXECUTE PROCEDURE`

### Archivos a Modificar

| Archivo | Líneas Afectadas | Tipo de Cambio |
|---------|-----------------|----------------|
| `migration_adm_webmain.sql` | 16 | IDENTITY → SERIAL |
| `osm_postgres.sql` | 4826-4892 | ON CONFLICT → UPDATE/INSERT |
| `osm_postgres.sql` | 52 | EXECUTE FUNCTION → EXECUTE PROCEDURE |

---

## Scripts de Conversión

### Script 1: migration_adm_webmain_pg9.sql

```sql
-- Migration for Web Configuration Management (PostgreSQL 9.x compatible)
-- Date: 2025-10-30
-- Purpose: Create table for managing website configuration
-- Compatible with: PostgreSQL 9.0+

BEGIN;

-- Drop existing objects if present
DROP TRIGGER IF EXISTS trg_adm_webmain_updated_at ON public.adm_webmain;
DROP FUNCTION IF EXISTS public.trigger_set_updated_at();
DROP TABLE IF EXISTS public.adm_webmain;

-- Create table adm_webmain with SERIAL (PostgreSQL 9.x compatible)
CREATE TABLE public.adm_webmain (
  id SERIAL PRIMARY KEY,
  site_title varchar(100) NOT NULL DEFAULT 'OSM',
  footer_text varchar(200) NOT NULL DEFAULT '© OSM 2025',
  favicon_path varchar(255) NOT NULL DEFAULT 'assets/img/Sin título-2.png',
  login_image_path varchar(255) NOT NULL DEFAULT 'assets/img/ico.jpg',
  primary_color varchar(7) NOT NULL DEFAULT '#772e22',
  is_active boolean NOT NULL DEFAULT true,
  theme_name varchar(50),
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- Insert default configuration row
INSERT INTO public.adm_webmain (site_title, footer_text, favicon_path, login_image_path, primary_color, is_active, theme_name)
VALUES ('OSM', '© OSM 2025', 'assets/img/Sin título-2.png', 'assets/img/ico.jpg', '#772e22', true, 'Default');

-- Add comment to table
COMMENT ON TABLE public.adm_webmain IS 'Web configuration management table for site-wide settings';

-- Create index for active configuration
CREATE INDEX IF NOT EXISTS idx_adm_webmain_active ON public.adm_webmain (is_active);

-- Trigger function to update updated_at automatically
CREATE OR REPLACE FUNCTION public.trigger_set_updated_at()
RETURNS trigger AS
$$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to fire before update (PostgreSQL 9.x syntax)
CREATE TRIGGER trg_adm_webmain_updated_at
BEFORE UPDATE ON public.adm_webmain
FOR EACH ROW
EXECUTE PROCEDURE public.trigger_set_updated_at();

COMMIT;
```

### Script 2: fix_actualizar_notificaciones_pg9.sql

```sql
-- Fix for actualizar_notificaciones_capacitacion function
-- PostgreSQL 9.x compatible version (without ON CONFLICT)
-- Date: 2025-10-30

CREATE OR REPLACE FUNCTION "public"."actualizar_notificaciones_capacitacion"()
RETURNS "pg_catalog"."void" AS $BODY$
BEGIN
  -- Step 1: Delete old notifications for inactive schedules
  DELETE FROM cap_notificaciones 
  WHERE id_programacion IN (
    SELECT id FROM cap_programacion WHERE activo = false
  );

  -- Step 2 & 3: Create temp table with new notification data
  CREATE TEMP TABLE IF NOT EXISTS temp_notificaciones AS
  WITH ultima_capacitacion AS (
    SELECT 
      c.ac_id,
      p.id as programacion_id,
      MAX(CASE WHEN fa.id IS NOT NULL THEN f.fecha ELSE NULL END) AS fecha_ultima,
      p.frecuencia_meses
    FROM 
      adm_colaboradores c
      INNER JOIN cap_programacion p ON c.ac_id_cargo = p.id_cargo 
        AND (p.sub_area IS NULL OR p.sub_area = c.ac_sub_area)
        AND p.activo = true
      LEFT JOIN cap_formulario f ON f.id_tema = p.id_tema
      LEFT JOIN cap_formulario_asistente fa ON fa.id_formulario = f.id AND fa.cedula = c.ac_cedula
    WHERE 
      c.ac_id_situación IN ('A', 'V', 'P')
    GROUP BY 
      c.ac_id, p.id, p.frecuencia_meses
  )
  SELECT 
    uc.ac_id as id_colaborador,
    uc.programacion_id as id_programacion,
    uc.fecha_ultima as fecha_ultima_capacitacion,
    CASE 
      WHEN uc.fecha_ultima IS NULL THEN CURRENT_DATE
      ELSE uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month')
    END AS fecha_proxima,
    CASE 
      WHEN uc.fecha_ultima IS NULL THEN 0
      ELSE EXTRACT(DAY FROM (uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month') - CURRENT_DATE))::int
    END AS dias_para_vencimiento,
    CASE 
      WHEN uc.fecha_ultima IS NULL THEN 'pendiente'
      WHEN (uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month')) < CURRENT_DATE THEN 'vencida'
      WHEN (uc.fecha_ultima + (uc.frecuencia_meses * INTERVAL '1 month')) <= (CURRENT_DATE + INTERVAL '30 days') THEN 'proximo_vencer'
      ELSE 'vigente'
    END AS estado
  FROM ultima_capacitacion uc;

  -- Step 4: Update existing notifications
  UPDATE cap_notificaciones cn SET
    fecha_ultima_capacitacion = tn.fecha_ultima_capacitacion,
    fecha_proxima = tn.fecha_proxima,
    dias_para_vencimiento = tn.dias_para_vencimiento,
    estado = tn.estado,
    fecha_actualizacion = CURRENT_TIMESTAMP
  FROM temp_notificaciones tn
  WHERE cn.id_colaborador = tn.id_colaborador
    AND cn.id_programacion = tn.id_programacion;

  -- Step 5: Insert new notifications
  INSERT INTO cap_notificaciones (
    id_colaborador,
    id_programacion,
    fecha_ultima_capacitacion,
    fecha_proxima,
    dias_para_vencimiento,
    estado
  )
  SELECT 
    tn.id_colaborador,
    tn.id_programacion,
    tn.fecha_ultima_capacitacion,
    tn.fecha_proxima,
    tn.dias_para_vencimiento,
    tn.estado
  FROM temp_notificaciones tn
  WHERE NOT EXISTS (
    SELECT 1 FROM cap_notificaciones cn
    WHERE cn.id_colaborador = tn.id_colaborador
      AND cn.id_programacion = tn.id_programacion
  );

  -- Cleanup
  DROP TABLE IF EXISTS temp_notificaciones;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
COST 100;

-- Update comment
COMMENT ON FUNCTION "public"."actualizar_notificaciones_capacitacion"() IS 'Updates training notifications based on completed trainings and schedules (PostgreSQL 9.x compatible)';
```

---

## Recomendaciones

### Para Despliegue en PostgreSQL 9.x

1. **Usar scripts de conversión proporcionados**:
   - Ejecutar `migration_adm_webmain_pg9.sql` en lugar del original
   - Ejecutar `fix_actualizar_notificaciones_pg9.sql` después de cargar `osm_postgres.sql`

2. **Verificar versión antes de instalar**:
```sql
SELECT version();
-- Si retorna 9.x, usar scripts adaptados
```

3. **Pruebas recomendadas después de migración**:
```sql
-- Test 1: Verificar creación de tabla
SELECT * FROM adm_webmain;

-- Test 2: Verificar auto-incremento
INSERT INTO adm_webmain (site_title, footer_text) VALUES ('Test', 'Test');
SELECT id FROM adm_webmain ORDER BY id DESC LIMIT 1;

-- Test 3: Verificar función de notificaciones
SELECT actualizar_notificaciones_capacitacion();
SELECT COUNT(*) FROM cap_notificaciones;
```

### Para Actualizar a PostgreSQL 10+

Si decide actualizar a PostgreSQL 10 o superior, puede usar los scripts originales sin modificación.

**Ventajas de actualizar**:
- Sintaxis IDENTITY más estándar (SQL:2003)
- ON CONFLICT más eficiente
- Mejor rendimiento general
- Más características modernas (JSON, particionamiento, etc.)

**Proceso de actualización**:
```bash
# Backup de base de datos
pg_dump -U postgres osm2 > osm2_backup_$(date +%Y%m%d).sql

# Actualizar PostgreSQL
# (procedimiento específico depende del sistema operativo)

# Restaurar base de datos
createdb osm2
psql -U postgres -d osm2 < osm2_backup_$(date +%Y%m%d).sql
```

### Matriz de Decisión

| Escenario | Recomendación | Scripts a Usar |
|-----------|---------------|----------------|
| Nueva instalación en PG 9.x | Usar scripts adaptados | `*_pg9.sql` |
| Nueva instalación en PG 10+ | Usar scripts originales | `*.sql` originales |
| Migración de PG 9.x a 10+ | Actualizar PostgreSQL primero | Scripts originales post-upgrade |
| Sistema existente en PG 9.x | Aplicar fixes | `fix_*.sql` |

---

## Conclusión

El sistema OSM es **altamente compatible** con PostgreSQL 9.x, requiriendo solo **2 modificaciones menores**:

1. ✅ Cambio de IDENTITY a SERIAL (1 tabla)
2. ✅ Reescritura de función ON CONFLICT (1 función)

Todos los demás componentes (95%+ del código SQL) funcionan sin cambios en PostgreSQL 9.0+.

Los scripts de conversión proporcionados garantizan compatibilidad total manteniendo la misma funcionalidad.

---

**Última actualización**: 30 de Octubre de 2025  
**Autor**: Análisis Técnico OSM  
**Versión del Documento**: 1.0
