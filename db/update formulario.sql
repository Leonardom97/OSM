-- Agregar columna estado--
ALTER TABLE cap_proceso
ADD COLUMN estado SMALLINT NOT NULL DEFAULT 0 CHECK (estado IN (0,1));

ALTER TABLE cap_lugar
ADD COLUMN estado SMALLINT NOT NULL DEFAULT 0 CHECK (estado IN (0,1));

ALTER TABLE cap_tema
ADD COLUMN estado SMALLINT NOT NULL DEFAULT 0 CHECK (estado IN (0,1));

ALTER TABLE cap_tipo_actividad
ADD COLUMN estado SMALLINT NOT NULL DEFAULT 0 CHECK (estado IN (0,1));

-- Actualizar registros existentes a 0 activos --
UPDATE cap_proceso SET estado = 0;
UPDATE cap_lugar SET estado = 0;
UPDATE cap_tema SET estado = 0;
UPDATE cap_tipo_actividad SET estado = 0;
