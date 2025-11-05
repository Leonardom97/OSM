-- Migration for Web Configuration Management (PostgreSQL 9.x compatible)
-- Date: 2025-10-30
-- Purpose: Create table for managing website configuration (title, footer, icons, theme colors)
-- Compatible with: PostgreSQL 9.0+
-- Notes: Uses SERIAL instead of IDENTITY for PostgreSQL 9.x compatibility

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
COMMENT ON TABLE public.adm_webmain IS 'Web configuration management table for site-wide settings (PostgreSQL 9.x compatible)';

-- Create index for active configuration
CREATE INDEX idx_adm_webmain_active ON public.adm_webmain (is_active);

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
