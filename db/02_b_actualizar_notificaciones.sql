-- Fix for actualizar_notificaciones_capacitacion function
-- PostgreSQL 9.x compatible version (without ON CONFLICT)
-- Date: 2025-10-30
-- Purpose: Replace ON CONFLICT with UPDATE/INSERT logic compatible with PostgreSQL 9.0+

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
