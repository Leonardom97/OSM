/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 170005 (170005)
 Source Host           : localhost:5432
 Source Catalog        : osm2
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 170005 (170005)
 File Encoding         : 65001

 Date: 25/10/2025 01:07:37
*/


-- ----------------------------
-- Sequence structure for adm_intentos_login_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."adm_intentos_login_id_seq";
CREATE SEQUENCE "public"."adm_intentos_login_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for adm_sesiones_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."adm_sesiones_id_seq";
CREATE SEQUENCE "public"."adm_sesiones_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for adm_usuario_roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."adm_usuario_roles_id_seq";
CREATE SEQUENCE "public"."adm_usuario_roles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for agr_fecha_corte_id_fc_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."agr_fecha_corte_id_fc_seq";
CREATE SEQUENCE "public"."agr_fecha_corte_id_fc_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for asistente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."asistente_id_seq";
CREATE SEQUENCE "public"."asistente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cap_notificaciones_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cap_notificaciones_id_seq";
CREATE SEQUENCE "public"."cap_notificaciones_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cap_programacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cap_programacion_id_seq";
CREATE SEQUENCE "public"."cap_programacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for formulario_asistente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."formulario_asistente_id_seq";
CREATE SEQUENCE "public"."formulario_asistente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for formulario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."formulario_id_seq";
CREATE SEQUENCE "public"."formulario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for lugar_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."lugar_id_seq";
CREATE SEQUENCE "public"."lugar_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for proceso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."proceso_id_seq";
CREATE SEQUENCE "public"."proceso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."roles_id_seq";
CREATE SEQUENCE "public"."roles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tema_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tema_id_seq";
CREATE SEQUENCE "public"."tema_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_actividad_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tipo_actividad_id_seq";
CREATE SEQUENCE "public"."tipo_actividad_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for usuarios_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuarios_id_seq";
CREATE SEQUENCE "public"."usuarios_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for adm_cargos
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_cargos";
CREATE TABLE "public"."adm_cargos" (
  "id_cargo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "cargo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rango_cargo" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of adm_cargos
-- ----------------------------
INSERT INTO "public"."adm_cargos" VALUES ('141', 'ANALISTA AGRONOMICO', 'ANALISTAS');
INSERT INTO "public"."adm_cargos" VALUES ('135', 'DIBUJANTE TECNICO', 'ANALISTAS');
INSERT INTO "public"."adm_cargos" VALUES ('122', 'LIDER ANALISTA', 'ANALISTAS');
INSERT INTO "public"."adm_cargos" VALUES ('137', 'TECNOLOGO AGRICOLA', 'ANALISTAS');
INSERT INTO "public"."adm_cargos" VALUES ('011', 'TESORERO', 'ANALISTAS');
INSERT INTO "public"."adm_cargos" VALUES ('116', 'ANALISTA DE INFORMACION', 'ANALISTAS');
INSERT INTO "public"."adm_cargos" VALUES ('027', 'ASISTENTE ADMNISTRATIVO', 'ASISTENTES');
INSERT INTO "public"."adm_cargos" VALUES ('114', 'ASISTENTE CONTABLE', 'ASISTENTES');
INSERT INTO "public"."adm_cargos" VALUES ('014', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ASISTENTES');
INSERT INTO "public"."adm_cargos" VALUES ('100', 'ASISTENTE DE MANTENIMIENTO', 'ASISTENTES');
INSERT INTO "public"."adm_cargos" VALUES ('017', 'ASISTENTE DE SISTEMAS', 'ASISTENTES');
INSERT INTO "public"."adm_cargos" VALUES ('125', 'ASISTENTE PRODUCCION INDUSTRIAL', 'ASISTENTES');
INSERT INTO "public"."adm_cargos" VALUES ('119', 'PLANEADOR MANTENIMIENTO', 'ASISTENTES');
INSERT INTO "public"."adm_cargos" VALUES ('085', 'AUXILIAR ADMINISTRATIVO', 'AUXILIARES');
INSERT INTO "public"."adm_cargos" VALUES ('013', 'AUXILIAR CONTABLE', 'AUXILIARES');
INSERT INTO "public"."adm_cargos" VALUES ('052', 'AUXILIAR DE LABORATORIO', 'AUXILIARES OPERATIVOS');
INSERT INTO "public"."adm_cargos" VALUES ('030', 'AUXILIAR DE SUPERVISION AGRICOLA', 'AUXILIARES OPERATIVOS');
INSERT INTO "public"."adm_cargos" VALUES ('024', 'CONDUCTOR ', 'CONDUCTORES');
INSERT INTO "public"."adm_cargos" VALUES ('018', 'CONDUCTOR -MENSAJERO', 'CONDUCTORES');
INSERT INTO "public"."adm_cargos" VALUES ('129', 'COORDINADOR ADMINISTRATIVO', 'COORDINADORES');
INSERT INTO "public"."adm_cargos" VALUES ('081', 'COORDINADOR CONTABLE', 'COORDINADORES');
INSERT INTO "public"."adm_cargos" VALUES ('105', 'COORDINADOR DE PROYECTOS', 'COORDINADORES');
INSERT INTO "public"."adm_cargos" VALUES ('128', 'INGENIERA AGRICOLA', 'COORDINADORES');
INSERT INTO "public"."adm_cargos" VALUES ('091', 'COORDINADOR DE LOGISTICA', 'COORDINADORES');
INSERT INTO "public"."adm_cargos" VALUES ('076', 'COORDINADOR PRODUCCION INDUSTRIAL', 'COORDINADORES');
INSERT INTO "public"."adm_cargos" VALUES ('136', 'COORDINADOR AGRONOMO', 'COORDINADORES');
INSERT INTO "public"."adm_cargos" VALUES ('117', 'DIRECTOR DE MANTENIMIENTO INDUSTRIAL', 'DIRECTORES');
INSERT INTO "public"."adm_cargos" VALUES ('043', 'DIRECTOR DE PLANTA', 'DIRECTORES');
INSERT INTO "public"."adm_cargos" VALUES ('068', 'DIRECTOR LOGISTICA, COSECHA Y MANTENIMIENTO', 'DIRECTORES');
INSERT INTO "public"."adm_cargos" VALUES ('127', 'DIRECTORA ADMINISTRATIVA Y FINANCIERA', 'DIRECTORES');
INSERT INTO "public"."adm_cargos" VALUES ('007', 'JEFE DE COMPRAS', 'JEFES');
INSERT INTO "public"."adm_cargos" VALUES ('126', 'JEFE DE VENTAS', 'JEFES');
INSERT INTO "public"."adm_cargos" VALUES ('140', 'AUXILIAR DE APOYO', 'OPERATIVOS ADMINISTRATIVOS');
INSERT INTO "public"."adm_cargos" VALUES ('020', 'AUXILIAR DE SERVICIOS GENERALES I', 'OPERATIVOS ADMINISTRATIVOS');
INSERT INTO "public"."adm_cargos" VALUES ('054', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'OPERATIVOS MANTENIMIENTO');
INSERT INTO "public"."adm_cargos" VALUES ('046', 'ELECTROMECANICO', 'OPERATIVOS MANTENIMIENTO');
INSERT INTO "public"."adm_cargos" VALUES ('118', 'OPERARIO ENERGIA', 'OPERATIVOS MANTENIMIENTO');
INSERT INTO "public"."adm_cargos" VALUES ('049', 'SOLDADOR MECANICO', 'OPERATIVOS MANTENIMIENTO');
INSERT INTO "public"."adm_cargos" VALUES ('031', 'OPERARIO DE MAQUINARIA AGRICOLA', 'OPERATIVOS PLANTA EXT');
INSERT INTO "public"."adm_cargos" VALUES ('055', 'OPERARIO DE PLANTA I', 'OPERATIVOS PLANTA EXT');
INSERT INTO "public"."adm_cargos" VALUES ('058', 'OPERARIO DE PLANTA II', 'OPERATIVOS PLANTA EXT');
INSERT INTO "public"."adm_cargos" VALUES ('033', 'OFICIOS VARIOS II', 'OPERATIVOS PRODUCCION AGRICOLA');
INSERT INTO "public"."adm_cargos" VALUES ('029', 'OFICIOS VARIOS III', 'OPERATIVOS PRODUCCION AGRICOLA');
INSERT INTO "public"."adm_cargos" VALUES ('095', 'OFICIOS VARIOS IV', 'OPERATIVOS PRODUCCION AGRICOLA');
INSERT INTO "public"."adm_cargos" VALUES ('104', 'OPERARIO DE LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA');
INSERT INTO "public"."adm_cargos" VALUES ('073', 'POLINIZADOR', 'OPERATIVOS PRODUCCION AGRICOLA');
INSERT INTO "public"."adm_cargos" VALUES ('130', 'SUPERVISOR DE LABORATORIO', 'SUPERVISORES');
INSERT INTO "public"."adm_cargos" VALUES ('089', 'SUPERVISOR DE LOGISTICA I', 'SUPERVISORES');
INSERT INTO "public"."adm_cargos" VALUES ('047', 'SUPERVISOR DE PROCESO', 'SUPERVISORES');
INSERT INTO "public"."adm_cargos" VALUES ('072', 'SUPERVISOR DE PRODUCCION', 'SUPERVISORES');
INSERT INTO "public"."adm_cargos" VALUES ('112', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES');
INSERT INTO "public"."adm_cargos" VALUES ('123', 'SUPERVISOR DE TOPOGRAFIA', 'SUPERVISORES');
INSERT INTO "public"."adm_cargos" VALUES ('004', 'DIRECTOR DE PROYECTOS', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('008', 'COORDINADOR DE GESTION HUMANA', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('016', 'ASISTENTE DE SEGURIDAD Y SALUD EN EL TRABAJO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('078', 'AUXILIAR SERVICIOS GENERALES II', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('005', 'DIRECTORA CONTABLE', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('003', 'GERENTE ADMINISTRATIVO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('006', 'COORDINADOR DE SISTEMAS', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('001', 'GERENTE GENERAL', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('009', 'ANALISTA CONTABLE  1', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('019', 'MENSAJERO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('077', 'ASISTENTE ADMINISTRATIVO II', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('010', 'COORDINADOR AMBIENTAL Y SO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('015', 'ASISTENTE ADMINISTRATIVA I', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('021', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('040', 'ESTUDIANTE SENA ETAPA ELECTIVA', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('093', 'COORDINADOR DE SEGURIDAD Y SALUD EN EL TRABAJO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('084', 'AUXILIAR DE SISTEMAS', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('106', 'AUXILIAR ADMINISTRATIVAIII', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('107', 'AUXILIAR DE CONSTRUCCION', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('108', 'ASISTENTE AMBIENTAL', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('111', 'OPERARIO PRODUCCION FIBRAS PRIMIUM', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('124', 'ANALISTA ADMINISTRATIVO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('096', 'PASANTE UNIVERSITARIO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('039', 'JARDINERO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('066', 'SOLDADOR', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('065', 'OPERADOR DE BASCULA', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('115', 'INSPECTOR HSE', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('094', 'ANALISTA PRODUCCION AGRICOLA', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('022', 'OFICIOS VARIOS I', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('034', 'AYUDANTE DE SANIDAD', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('032', 'VAQUERO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('035', 'OPERARIO DE PLUMA', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('041', 'CONVENIO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('036', 'TECNICO MANTENIMIENTO I', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('074', 'DIRECTOR DE PRODUCCION', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('026', 'ASISTENTE AGRONOMICO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('060', 'PEPERO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('061', 'RACIMERO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('062', 'GANCHERO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('051', 'ALMACENISTA', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('090', 'SUPERVISOR DE LOGISTICA II', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('097', 'SUPERVISOR PLANTA DE COMPOSTAJE', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('099', 'ASISTENTE ADMINISTRATIVO III', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('102', 'TOPÓGRAFO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('109', 'SUPERVISOR DE TALLER AGRICOLA', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('131', 'ANALISTA DE INVESTIGACION', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('138', 'COORDINADOR DE PROYECTOS', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('088', 'OPERARIO MAQUINARIA AGRICOLA I', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('042', 'COORDINADOR DE PRODUCCIÓN', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('063', 'RECOGEDOR', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('079', 'ALISTADOR', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('023', 'GERENTE AGRONOMICO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('002', 'GERENTE FINANCIERO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('064', 'COORDINADOR DE PROCESOS Y CALIDAD', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('110', 'DIRECTOR ADMINISTRATIVO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('069', 'TECNICO MANTENIMIENTO AGRICOLA', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('075', 'TECNICO ELECTROMECANICO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('050', 'OPERARIO MINICARGADOR', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('083', 'OFICIAL DE CONSTRUCCION', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('098', 'ELECTROMECANICO II', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('132', 'OPERARIO MANTENIMIENTO LOCATIVO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('087', 'ASISTENTE DE LABORATORIO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('120', 'ANALISTA DE SISTEMA DE GESTION DE MANTENIMIENTO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('139', 'TECNICO EN SISTEMA HADRAULICO', 'NO DEFINIDO');
INSERT INTO "public"."adm_cargos" VALUES ('143', 'COORDINADOR DE ANALITICA Y SISTEMAS', 'NO DEFINIDO');

-- ----------------------------
-- Table structure for adm_colaboradores
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_colaboradores";
CREATE TABLE "public"."adm_colaboradores" (
  "ac_id" int4 NOT NULL DEFAULT nextval('asistente_id_seq'::regclass),
  "ac_cedula" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "ac_nombre1" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "ac_empresa" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "ac_id_cargo" varchar(255) COLLATE "pg_catalog"."default",
  "ac_id_area" varchar(255) COLLATE "pg_catalog"."default",
  "ac_id_situación" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ac_contraseña" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ac_sub_area" varchar(255) COLLATE "pg_catalog"."default",
  "ac_rango" varchar(255) COLLATE "pg_catalog"."default",
  "ac_nombre2" varchar(255) COLLATE "pg_catalog"."default",
  "ac_apellido1" varchar(255) COLLATE "pg_catalog"."default",
  "ac_apellido2" varchar(255) COLLATE "pg_catalog"."default",
  "ac_id_rol" int4 NOT NULL DEFAULT 1
)
;

-- ----------------------------
-- Records of adm_colaboradores
-- ----------------------------
INSERT INTO "public"."adm_colaboradores" VALUES (24, '52231234', 'GLORIA', '1', '003', '000', 'E', '33259PPGP', '000', 'NO DEFINIDO', 'PATRICIA', 'PINTO', 'PUENTES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (37, '40434891', 'YULI', '1', '085', '005', 'E', '36916DMYA', '005', 'AUXILIARES', 'ANDREA', 'DEAZA', 'MURIEL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (25, '1118197909', 'NORIDA', '1', '015', '005', 'E', '99934CBN', '005', 'NO DEFINIDO', '', 'CANO', 'BURITICA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (26, '1122133205', 'MARIA', '1', '040', '000', 'E', '35230HRMF', '000', 'NO DEFINIDO', 'FERNANDA', 'HURTADO', 'RAMOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (27, '1120369160', 'LUIS', '1', '021', '000', 'E', '71185TDLC', '000', 'NO DEFINIDO', 'CARLOS', 'TRUJILLO', 'DE LA VILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (28, '53095774', 'DIANA', '1', '016', '000', 'X', '97799GVDF', '000', 'NO DEFINIDO', 'FERNANDA', 'GUERRERO', 'VALDERRAMA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (29, '7838138', 'VIONNEY', '1', '018', '000', 'E', '40163VPV', '000', 'CONDUCTORES', '', 'VARON', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (30, '1123114665', 'CAMILA', '1', '081', '012', 'A', '16690BDC', '012', 'COORDINADORES', '', 'BAEZ', 'DUEÑAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (32, '1122133205', 'MARIA', '1', '016', '005', 'E', '35230HRMF', '005', 'NO DEFINIDO', 'FERNANDA', 'HURTADO', 'RAMOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (68, '1122136493', 'BRANDON', '1', '040', '000', 'E', '38518TSBJ', '000', 'NO DEFINIDO', 'JAIR', 'TOVAR', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (69, '1122136493', 'BRANDON', '1', '021', '000', 'E', '38518TSBJ', '000', 'NO DEFINIDO', 'JAIR', 'TOVAR', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (70, '1122145093', 'ERIKA', '1', '021', '000', 'E', '47118GAET', '000', 'NO DEFINIDO', 'TATIANA', 'GONZALEZ', 'ALFONSO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (71, '1022938169', 'FRANCISCO', '1', '021', '000', 'E', '40194GOF', '000', 'NO DEFINIDO', '', 'GARZON', 'OLIVOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (72, '1122145093', 'ERIKA', '1', '015', '005', 'X', '47118GAET', '005', 'NO DEFINIDO', 'TATIANA', 'GONZALEZ', 'ALFONSO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (469, '1123116532', 'XIMENA', '1', '073', '002', 'E', '18557HPXC', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAROLINA', 'HERRERA', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (476, '1144083562', 'ANGELICA', '1', '073', '001', 'E', '85587HSA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'HERNANDEZ', 'SALAMANCA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (477, '1118027885', 'DIANA', '1', '073', '001', 'E', '29910LPDE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ESNEIRA', 'LOPEZ', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (478, '40434381', 'OVIDIA', '1', '073', '009', 'A', '36406MMO', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'MENDOZA', 'MALAGON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (661, '1048993096', 'YULEIMER', '1', '104', '001', 'E', '95121DBY', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'DE LA ROSA', 'BARBA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (662, '1030586340', 'MIGUEL', '1', '104', '000', 'E', '88365MMMA', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANGEL', 'MARTINEZ', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (663, '1123115579', 'ARNOLD', '1', '104', '000', 'E', '17604EMAG', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'GUSTAVO', 'ENCISO', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (664, '1123115789', 'SAMUEL', '1', '104', '001', 'E', '17814RCSD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'REYES', 'CARANTON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (665, '17356760', 'ERNESTO', '1', '104', '001', 'E', '58785RCE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'RODRIGUEZ', 'CARANTON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (8, '52795113', 'SANDRA', '1', '011', '000', 'E', '97138ACSC', '000', 'ANALISTAS', 'CONSTANZA', 'ACUÑA', 'CHAVEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (9, '52971630', 'DIANA', '1', '005', '000', 'E', '73655GADG', '000', 'NO DEFINIDO', 'GINETH', 'GARCIA', 'ARBOLEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (10, '66917031', 'SANDRA', '1', '003', '000', 'E', '19056AOSP', '000', 'NO DEFINIDO', 'PATRICIA', 'ACOSTA', 'OLMOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (11, '75104165', 'LEANDRO', '1', '014', '005', 'E', '6190RBLJ', '005', 'ASISTENTES', 'JAVIER', 'ROMERO', 'BELTRAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (12, '79647460', 'JHON', '1', '006', '000', 'E', '49485VDJA', '000', 'NO DEFINIDO', 'ALEXANDER', 'VARGAS', 'DAZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (13, '79785328', 'JORGE', '1', '001', '005', 'A', '87353RMJH', '005', 'NO DEFINIDO', 'HERNANDO', 'RIVEROS', 'MOYANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (14, '1018434379', 'VERONICA', '1', '009', '000', 'E', '36404RQVJ', '000', 'NO DEFINIDO', 'JOHANA', 'RODRIGUEZ', 'QUIROGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (15, '1073232752', 'JULIAN', '1', '019', '000', 'E', '34777APJG', '000', 'NO DEFINIDO', 'GUILLERMO', 'AREVALO', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (470, '1123084139', 'MARIA', '1', '073', '001', 'E', '86164FGMG', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'GUADALUPE', 'FAJARDO', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (471, '1121825153', 'MARIA', '1', '073', '001', 'E', '27178BAMT', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'TATIANA', 'BERMUDEZ', 'ALZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (472, '1122139934', 'DISNARDA', '1', '073', '009', 'V', '41959SGDM', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'MARIA', 'SANABRIA', 'GUACARAPARE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (473, '1006555318', 'ORLANDO', '1', '073', '009', 'A', '57343GO', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'GONZALEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (474, '1123086261', 'GLADYS', '1', '073', '001', 'E', '88286CMGY', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'YOLANDA', 'CARVAJAL', 'MENDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (475, '52850723', 'ELIZABETH', '1', '073', '009', 'A', '52748RGE', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ROSAS', 'GIRALDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (666, '1123116146', 'LUIS', '1', '104', '001', 'E', '18171CCLE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'EDUARDO', 'CUERVO', 'CAICEDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (667, '1123114992', 'HUBER', '1', '104', '001', 'E', '17017CCHA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'CUERVO', 'CAICEDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (4, '23621826', 'ANA', '1', '085', '005', 'E', '23851MFAC', '005', 'AUXILIARES', 'CECILIA', 'MOLINA', 'FULA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (16, '1111199263', 'YAMNA', '1', '077', '000', 'E', '101288LBYZ', '000', 'NO DEFINIDO', 'ZULEIMA', 'LOZANO', 'BARRIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (17, '1121830969', 'ADRIANA', '1', '008', '000', 'E', '32994ALAM', '000', 'NO DEFINIDO', 'MARIA', 'ACOSTA', 'LOZADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (5, '40329539', 'LORENA', '1', '008', '000', 'E', '31564OLL', '000', 'NO DEFINIDO', '', 'ORJUELA', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (7, '51943764', 'LUZ', '1', '078', '000', 'E', '45789VPLM', '000', 'NO DEFINIDO', 'MERY', 'VACA', 'PALACIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (18, '1121866104', 'ALBA', '1', '127', '005', 'V', '68129SRAL', '005', 'DIRECTORES', 'LUCIA', 'SALCEDO', 'RIVAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (19, '1121880805', 'HERNANDO', '1', '011', '000', 'E', '82830NMH', '000', 'ANALISTAS', '', 'NEIVA', 'MARIÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (20, '1121881871', 'DIANA', '1', '010', '000', 'E', '83896CSDY', '000', 'NO DEFINIDO', 'YURANY', 'CABALLERO', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (23, '1122131465', 'LUIS', '1', '021', '000', 'E', '33490MBLB', '000', 'NO DEFINIDO', 'BERTULFO', 'MARIN', 'BALLEN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (33, '1006838624', 'LINA', '1', '021', '003', 'E', '40649GJLP', '003', 'NO DEFINIDO', 'PAOLA', 'GUTIERREZ', 'JARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (34, '1005827897', 'YEIMI', '1', '021', '005', 'E', '29922LIYL', '005', 'NO DEFINIDO', 'LORENA', 'LONDOÑO', 'ITE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (35, '46454101', 'CLARA', '1', '093', '005', 'E', '56126BRCL', '005', 'NO DEFINIDO', 'LILIANA', 'BELTRAN', 'REYES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (36, '1122130558', 'YURI', '1', '084', '000', 'E', '32583RAYJ', '000', 'NO DEFINIDO', 'JOHANA', 'RODRIGUEZ', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (38, '1123115569', 'NATALIA', '1', '021', '005', 'E', '17594BUN', '005', 'NO DEFINIDO', '', 'BARRETO', 'URIBE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (56, '1121817694', 'VICTOR', '1', '018', '005', 'E', '19719VPVA', '005', 'CONDUCTORES', 'ALFONSO', 'VALLEJO', 'PARRADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (57, '1116805369', 'ARLEX', '1', '108', '005', 'E', '7394DAA', '005', 'NO DEFINIDO', '', 'DIAZ', 'ACEVEDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (58, '1122239349', 'WILMER', '1', '021', '005', 'E', '41374AOWY', '005', 'NO DEFINIDO', 'YESID', 'ALVAREZ', 'OROZCO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (59, '19000809', 'JHON', '1', '111', '005', 'E', '2834GVJJ', '005', 'NO DEFINIDO', 'JAIRO', 'GALEANO', 'VALDOMERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (60, '1122130077', 'CAROL', '1', '021', '000', 'E', '32102LMCX', '000', 'NO DEFINIDO', 'XIMENA', 'LARGO', 'MONTOYA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (61, '1121958533', 'DENILSON', '1', '021', '005', 'E', '60558ICD', '005', 'NO DEFINIDO', '', 'IZAJAR', 'CARABALI', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (62, '1123085836', 'LIZETH', '1', '021', '005', 'E', '87861BRLV', '005', 'NO DEFINIDO', 'VERONICA', 'BONILLA', 'RAMOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (63, '1000115363', 'LISSETH', '1', '021', '005', 'E', '17388CGLN', '005', 'NO DEFINIDO', 'NATALIA', 'CARO', 'GRISALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (65, '1120384709', 'LEIDY', '1', '021', '005', 'E', '86734MGLN', '005', 'NO DEFINIDO', 'NATALIA', 'MEDINA', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (66, '1016077570', 'JUAN', '1', '107', '005', 'E', '79595FCJC', '005', 'NO DEFINIDO', 'CAMILO', 'FUENTES', 'CETINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (67, '1122135701', 'ALIXON', '1', '021', '000', 'E', '37726SVAD', '000', 'NO DEFINIDO', 'DAYANA', 'SANCHEZ', 'VARGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (108, '7837606', 'LEOPOLDO', '1', '039', '005', 'A', '39631RIL', '005', 'NO DEFINIDO', '', 'ROBAYO', 'ISAZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (139, '11350118', 'JOSE', '1', '068', '000', 'E', '52143CRJJ', '000', 'DIRECTORES', 'JOAQUIN', 'CARTAGENA', 'RENGIFO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (140, '15684004', 'JEAN', '1', '031', '003', 'X', '86029GMJC', '003', 'OPERATIVOS PLANTA EXT', 'CARLOS', 'GALLEGO', 'MARQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (483, '96357774', 'WILMER', '1', '029', '008', 'A', '59799ABW', '008', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ANTURI', 'BUSTOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (485, '1122145747', 'CRISTIAN', '1', '029', '008', 'A', '47772SACI', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'IGNACIO', 'SILVA', 'ALDANA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (76, '1006777721', 'BRAYAN', '1', '021', '005', 'E', '79746SGBS', '005', 'NO DEFINIDO', 'STIVEN', 'SOLANO', 'GUEVARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (77, '1006777279', 'ERIKA', '1', '021', '005', 'E', '79304LBEJ', '005', 'NO DEFINIDO', 'JULIANA', 'LOZANO', 'BOHORQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (78, '1122130280', 'JENNY', '1', '116', '011', 'A', '32305LAJP', '011', 'ANALISTAS', 'PATRICIA', 'LEMUS', 'ARDILA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (79, '1006778256', 'VICTOR', '1', '021', '005', 'E', '80281MJVM', '005', 'NO DEFINIDO', 'MANUEL', 'MOSQUERA', 'JIMENEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (80, '1006873251', 'EDWARD', '1', '021', '005', 'E', '75276RPEJ', '005', 'NO DEFINIDO', 'JOHAN', 'RACERO', 'PORRAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (3, '17338885', 'FABIO', '1', '007', '010', 'A', '40910RCFA', '010', 'JEFES', 'ANGEL', 'RODRIGUEZ', 'CASTRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (73, '1000972341', 'LEIDY', '1', '021', '000', 'E', '74366AMLE', '000', 'NO DEFINIDO', 'ESTEFANIA', 'APONTE', 'MONTAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (86, '1122138443', 'JEFREY', '1', '017', '011', 'A', '40468ABJ', '011', 'ASISTENTES', '', 'ANDRADE', 'BOLIVAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (87, '1000786430', 'ROSALBA', '1', '021', '005', 'E', '88455SPR', '005', 'NO DEFINIDO', '', 'SANCHEZ', 'PIÑEROS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (100, '1007854227', 'ERIKA', '1', '096', '005', 'E', '56252PDEP', '005', 'NO DEFINIDO', 'PAOLA', 'PEREZ', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1227, '1121843124', 'NOHEMY', '1', '021', '005', 'E', '45149ACNP', '005', 'NO DEFINIDO', 'PAOLA', 'ABELLO', 'CABRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (88, '1122118911', 'SANDRA', '1', '027', '005', 'A', '20936GVSL', '005', 'ASISTENTES', 'LILIANA', 'GUEVARA', 'VELASQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (141, '17265471', 'JOSE', '1', '031', '003', 'E', '67496RGJA', '003', 'OPERATIVOS PLANTA EXT', 'ANGEL', 'RAMOS', 'GUZMAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (486, '7838219', 'ROBER', '1', '073', '009', 'A', '40244IGRA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXANDER', 'IBAÑEZ', 'GALINDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (75, '1120368267', 'LEYDER', '1', '085', '005', 'E', '70292HBLX', '005', 'AUXILIARES', 'XIOMARA', 'HERNANDEZ', 'BORJA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1216, '1111194516', 'YULI', '1', '073', '009', 'E', '96541CFYP', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'PAOLA', 'CAMACHO', 'FLOREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (487, '1121820534', 'CRISTIAN', '1', '073', '009', 'P', '22559CFCJ', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'JULIAN', 'CABALLERO', 'FEO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (104, '1115853757', 'JENIFER', '1', '084', '011', 'A', '55782MMJS', '011', 'NO DEFINIDO', 'SOLANYI', 'MENDIVELSO', 'MORENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (479, '1122120601', 'KARIN', '1', '021', '001', 'E', '22626MGKA', '001', 'NO DEFINIDO', 'ALEXA', 'MORENO', 'GIRALDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (489, '1120580430', 'MAIRA', '1', '033', '002', 'E', '82455CVMC', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAMILA', 'CORREDOR', 'VARGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (82, '1010241177', 'RICARDO', '1', '116', '005', 'E', '43202UORA', '005', 'ANALISTAS', 'ALFONSO', 'UNDA', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (83, '1152463054', 'MANUELA', '1', '128', '999', 'E', '65079RRM', '999', 'COORDINADORES', '', 'RESTREPO', 'ROLDAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (84, '1120576198', 'ANGELA', '1', '021', '005', 'E', '78223UAY', '005', 'NO DEFINIDO', 'YORLENY', 'URRUTIA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (85, '40329539', 'LORENA', '1', '129', '005', 'E', '31564OLL', '005', 'COORDINADORES', '', 'ORJUELA', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (89, '1123116616', 'MARTHA', '1', '021', '005', 'E', '18641LNMY', '005', 'NO DEFINIDO', 'YURANIS', 'LOPEZ', 'NOREÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (90, '1003540912', 'ISABEL', '1', '013', '005', 'E', '42937TFIC', '005', 'AUXILIARES', 'CATALINA', 'TRUJILLO', 'FLOREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (103, '1123510868', 'CAREN', '1', '021', '005', 'A', '12893QACY', '005', 'NO DEFINIDO', 'YULIANA', 'QUEVEDO', 'APONTE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (101, '1121843124', 'NOHEMY', '1', '021', '005', 'A', '45149ACNP', '005', 'NO DEFINIDO', 'PAOLA', 'ABELLO', 'CABRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (91, '1006875191', 'ERIC', '1', '013', '012', 'A', '77216RSEY', '012', 'AUXILIARES', 'YAMID', 'RINTA', 'SAENZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (93, '1122137853', 'DENIS', '1', '116', '011', 'A', '39878RTDC', '011', 'ANALISTAS', 'CAROLINA', 'REINA', 'TELLEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (97, '1006822704', 'NATALIA', '1', '021', '005', 'E', '24729FBNI', '005', 'NO DEFINIDO', 'ISABEL', 'FLOREZ', 'BONILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1246, '1122128543', 'EDISNEY', '1', '021', '002', 'E', '30568MBES', '002', 'NO DEFINIDO', 'SLIAN', 'MARTINEZ', 'BUSTOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (98, '1123510211', 'LAURA', '1', '021', '005', 'E', '12236PULJ', '005', 'NO DEFINIDO', 'JIMENA', 'PARDO', 'URREGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (105, '1121946925', 'KELLY', '1', '021', '005', 'A', '48950HPKY', '005', 'NO DEFINIDO', 'YOHANA', 'HOYOS', 'PARRADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (669, '7837957', 'NELSON', '1', '104', '001', 'X', '39982LMN', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'LOZANO', 'MURILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (106, '1074130554', 'KAREN', '1', '021', '005', 'A', '32579VRKM', '005', 'NO DEFINIDO', 'MARISOL', 'VIZCAINO', 'RIVEROS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (107, '3271551', 'HERNANDO', '1', '039', '002', 'E', '73576CCH', '002', 'NO DEFINIDO', '', 'COGOLLO', 'CORDON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (99, '1123510757', 'ANYI', '1', '021', '005', 'E', '12782GEAA', '005', 'NO DEFINIDO', 'ALEXANDRA', 'GONZALEZ', 'ESPINOSA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (480, '1120818192', 'MARYI', '1', '021', '001', 'E', '20217GSMA', '001', 'NO DEFINIDO', 'ALEJANDRA', 'GUARIN', 'SEGURA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (481, '1122142445', 'ANYI', '1', '021', '001', 'E', '44470RSAL', '001', 'NO DEFINIDO', 'LIZETH', 'RAMIREZ', 'SEGURA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (482, '1006859178', 'DANIEL', '1', '029', '001', 'E', '61203OVDR', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'RICARDO', 'ORTIZ', 'VALERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (671, '17420170', 'KIRK', '1', '104', '001', 'E', '22195GHKA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALAIN', 'GOMEZ', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (672, '1084735140', 'ELICIO', '1', '104', '001', 'E', '37165VCEJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAVIER', 'VALDES', 'CABARCAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1247, '1121935349', 'JAIR', '1', '104', '001', 'X', '37374BRJS', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'SEBASTIAN', 'BERMUDEZ', 'ROMERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (109, '7837774', 'GERARDO', '1', '066', '005', 'E', '39799ZVG', '005', 'NO DEFINIDO', '', 'ZARTA', 'VALDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (110, '17310850', 'JOSE', '1', '039', '005', 'E', '12875AIJI', '005', 'NO DEFINIDO', 'IGNACIO', 'ACOSTA', 'IBARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (113, '1120367141', 'YEISON', '1', '017', '005', 'E', '69166CPYF', '005', 'ASISTENTES', 'FERNANDO', 'CHARRY', 'POLANIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (114, '1122132379', 'JESSICA', '1', '084', '000', 'E', '34404PAJP', '000', 'NO DEFINIDO', 'PAOLA', 'PEREZ', 'AGATON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (115, '1122141128', 'INGRID', '1', '021', '005', 'E', '43153HRIM', '005', 'NO DEFINIDO', 'MARITZA', 'HERNANDEZ', 'RIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (138, '10166719', 'JOSE', '1', '039', '005', 'A', '68744OAJO', '005', 'NO DEFINIDO', 'OLIVERIO', 'OBANDO', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (116, '17292598', 'LUIS', '1', '055', '005', 'E', '94623CALA', '005', 'OPERATIVOS PLANTA EXT', 'ALFREDO', 'CASTRO', 'ACUÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (132, '7838112', 'YASIN', '1', '030', '001', 'E', '40137RAYA', '001', 'AUXILIARES OPERATIVOS', 'ALEXON', 'RODRIGUEZ', 'ALVARADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (133, '7838227', 'GERMAN', '1', '030', '002', 'E', '40252ACG', '002', 'AUXILIARES OPERATIVOS', '', 'ACOSTA', 'CAGUEÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (134, '8055469', 'YADER', '1', '030', '001', 'E', '57494PRYE', '001', 'AUXILIARES OPERATIVOS', 'ENRIQUE', 'PAZ', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (135, '8168423', 'ISIDRO', '1', '095', '017', 'A', '70448CTIA', '017', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANTONIO', 'CHANTACA', 'TORREGLOSA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (136, '8169059', 'LORENZO', '1', '029', '002', 'E', '71084RBLM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'MANUEL', 'RIVERA', 'BARRIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (137, '9021844', 'EZEQUIEL', '1', '029', '001', 'E', '23869LBEA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANTONIO', 'LASTRE', 'BOHORQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (673, '19619269', 'WILDER', '1', '104', '001', 'E', '21294RCWE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ENRIQUE', 'RODRIGUEZ', 'CASTRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (74, '1120368267', 'LEIDER', '1', '021', '000', 'E', '70292HBLX', '000', 'NO DEFINIDO', 'XIOMARA', 'HERNANDEZ', 'BORJA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (191, '1123512702', 'YANIDSAT', '1', '073', '002', 'E', '14727FGY', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'FINO', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (156, '40360388', 'MARIA', '1', '033', '002', 'E', '62413ZMI', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ISAURA', 'ZULUAGA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (197, '1123530038', 'CARLOS', '1', '034', '000', 'E', '32063BMCA', '000', 'NO DEFINIDO', 'ANDRES', 'BUSTOS', 'MARIN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (169, '98687791', 'LUIS', '1', '034', '000', 'E', '89816MJLM', '000', 'NO DEFINIDO', 'MANUEL', 'MEDRANO', 'JIMENEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (186, '1122138452', 'KAREN', '1', '026', '002', 'X', '40477BMKJ', '002', 'NO DEFINIDO', 'JOHANA', 'BARRERA', 'MORALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (165, '94355644', 'DAVID', '1', '034', '000', 'E', '57669QGDJ', '000', 'NO DEFINIDO', 'JAMES', 'QUINTERO', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (173, '1087121903', 'ANDERSON', '1', '030', '002', 'E', '23928CPA', '002', 'AUXILIARES OPERATIVOS', '', 'CASTILLO', 'PRECIADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (188, '1123114517', 'ELKIN', '1', '034', '000', 'E', '16542RMEY', '000', 'NO DEFINIDO', 'YECID', 'ROJAS', 'MORENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (208, '1121912746', 'JUAN', '1', '034', '000', 'E', '14771RCJM', '000', 'NO DEFINIDO', 'MANUEL', 'RIVAS', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (190, '1123115430', 'HECTOR', '1', '033', '008', 'A', '17455MBHA', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'MEDINA', 'BONILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (192, '1122121568', 'JUAN', '1', '060', '000', 'E', '23593TPJC', '000', 'NO DEFINIDO', 'CARLOS', 'TRIANA', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (164, '93121602', 'RUBEN', '1', '031', '001', 'A', '23627RARD', '001', 'OPERATIVOS PLANTA EXT', 'DARIO', 'RAMIREZ', 'AVILES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (166, '96362641', 'JHON', '1', '030', '001', 'E', '64666CTJF', '001', 'AUXILIARES OPERATIVOS', 'FREDY', 'CANTILLO', 'TENORIO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (167, '97610739', 'JHON', '1', '022', '000', 'E', '12764OPJJ', '000', 'NO DEFINIDO', 'JAIRO', 'OROZCO', 'PAEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (168, '98428420', 'CARLOS', '1', '030', '000', 'E', '30445MMCA', '000', 'AUXILIARES OPERATIVOS', 'ALBERTO', 'MURILLO', 'MALAMBA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (170, '1006838624', 'LINA', '1', '034', '000', 'E', '40649GJLP', '000', 'NO DEFINIDO', 'PAOLA', 'GUTIERREZ', 'JARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (171, '1018406701', 'LEIDY', '1', '073', '000', 'X', '8726MPL', '000', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'MALDONADO', 'PABON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (172, '1024494690', 'WILLIAM', '1', '041', '000', 'E', '96715CTWG', '000', 'NO DEFINIDO', 'GUSTAVO', 'CHAGUALA', 'TABARES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (193, '1003672947', 'JUAN', '1', '061', '000', 'E', '74972RAJD', '000', 'NO DEFINIDO', 'DIEGO', 'ROMERO', 'AYALA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (194, '4060864', 'ALVARO', '1', '062', '000', 'E', '62889ECA', '000', 'NO DEFINIDO', '', 'ELIZALDE', 'CORREA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (674, '14107104', 'JOSE', '1', '104', '001', 'E', '9129GYJM', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'MANUEL', 'GONGORA', 'YAIMA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (675, '1122133143', 'WILLIAM', '1', '104', '001', 'E', '35168GLWD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DE JESUS', 'GUARDO', 'LAZARO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (676, '85270689', 'BLADIMIRO', '1', '104', '001', 'E', '72714RTB', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'RANGEL', 'TINOCO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1248, '1027943550', 'NICOLE', '3', '021', '005', 'E', '45575BMNA', '005', 'NO DEFINIDO', 'ANDREA', 'BALANTA', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (102, '1127924851', 'ADRIANA', '1', '021', '005', 'E', '26876PSAM', '005', 'NO DEFINIDO', 'MICHELL', 'PULIDO', 'SANABRIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (199, '16848037', 'HERMES', '1', '030', '002', 'E', '50062DPH', '002', 'AUXILIARES OPERATIVOS', '', 'DIAZ', 'PALOMINO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (201, '86069473', 'HECTOR', '1', '068', '001', 'A', '71498RGHG', '001', 'DIRECTORES', 'GEOVANY', 'ROMERO', 'GAVIRIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (152, '17422412', 'PASTOR', '1', '091', '001', 'E', '24437MDPL', '001', 'COORDINADORES', 'LEONARDO', 'MENDEZ', 'DUARTE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (206, '1122651224', 'NESTOR', '1', '094', '002', 'E', '53249BGNR', '002', 'NO DEFINIDO', 'RODRIGO', 'BRAVO', 'GARZON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (174, '1102119595', 'CARLOS', '1', '036', '000', 'E', '21620RCCM', '000', 'NO DEFINIDO', 'MARIO', 'RICARDO', 'CALDERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (175, '1118197638', 'JUAN', '1', '031', '001', 'E', '99663GRJ', '001', 'OPERATIVOS PLANTA EXT', '', 'GUERRERO', 'RINCON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (176, '1121816510', 'ROGER', '1', '074', '002', 'E', '18535ULRD', '002', 'NO DEFINIDO', 'DE JESUS', 'URREA', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (490, '1120374274', 'ALDAIR', '1', '029', '008', 'A', '76299ASA', '008', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ARISMENDI', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (491, '1061777821', 'BRANDON', '1', '073', '002', 'E', '79846VTBA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXIS', 'VIVAS', 'TOMBE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (492, '1015477571', 'KAREN', '1', '141', '002', 'A', '79596BHKD', '002', 'ANALISTAS', 'DANIELA', 'BERNAL', 'HENDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (195, '1019103601', 'YORDIN', '1', '061', '000', 'E', '5626CAYA', '000', 'NO DEFINIDO', 'ALONSO', 'CAMACHO', 'DELGADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (493, '1006721519', 'DABIAN', '1', '137', '004', 'A', '23544APDA', '004', 'ANALISTAS', 'ALEXANDER', 'ARENAS', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (494, '1029983878', 'ANGELICA', '1', '021', '002', 'E', '85903MMAY', '002', 'NO DEFINIDO', 'YULIANA', 'MORENO', 'MACIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (495, '1122120601', 'KARIN', '1', '073', '009', 'A', '22626MGKA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXA', 'MORENO', 'GIRALDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (198, '1148699510', 'GIANCARLO', '1', '073', '000', 'X', '101535QMG', '000', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'QUINTANA', 'MASERI', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (177, '1121862676', 'ALEX', '1', '041', '000', 'E', '64701MVAA', '000', 'NO DEFINIDO', 'ANYEL', 'MARTINEZ', 'VALENCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (180, '1121883724', 'JULIO', '1', '030', '001', 'A', '85749MJJC', '001', 'AUXILIARES OPERATIVOS', 'CESAR', 'MORENO', 'JIMENEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (196, '1037479936', 'YIMIS', '1', '051', '000', 'E', '81961QMY', '000', 'NO DEFINIDO', '', 'QUINTANA', 'MORELO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (178, '1121863174', 'SERGIO', '1', '054', '003', 'E', '65199MPS', '003', 'OPERATIVOS MANTENIMIENTO', '', 'MARTINEZ', 'PINEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (182, '1121932734', 'RUBEN', '1', '021', '000', 'E', '34759RRRC', '000', 'NO DEFINIDO', 'CAMILO', 'RAMIREZ', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (181, '1121932668', 'ANYELA', '1', '021', '000', 'E', '34693TLAM', '000', 'NO DEFINIDO', 'MARCELA', 'TORO', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (183, '1122121409', 'LINA', '1', '027', '000', 'E', '23434VHLM', '000', 'ASISTENTES', 'MARCELA', 'VARON', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (184, '1122121972', 'RAUL', '1', '034', '000', 'X', '23997RSRR', '000', 'NO DEFINIDO', 'RICARDO', 'REYES', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (185, '1122122892', 'EDWIN', '1', '030', '001', 'A', '24917SAEC', '001', 'AUXILIARES OPERATIVOS', 'CAMILO', 'SALGADO', 'ARANGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (187, '1122651224', 'NESTOR', '1', '035', '000', 'E', '53249BGNR', '000', 'NO DEFINIDO', 'RODRIGO', 'BRAVO', 'GARZON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (200, '17422634', 'OSCAR', '1', '033', '000', 'E', '24659VVOE', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'EDUARDO', 'VARON', 'VARGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (202, '1121945825', 'ROSEMBER', '1', '021', '000', 'E', '47850CDRA', '000', 'NO DEFINIDO', 'ANDRES', 'CARRILLO', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (203, '40448420', 'SANDRA', '1', '073', '000', 'E', '50445RS', '000', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'RAMIREZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (154, '20705111', 'ANGELA', '1', '035', '000', 'E', '7136OAA', '000', 'NO DEFINIDO', '', 'OLARTE', 'ALVAREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (205, '98686765', 'HUMBERTO', '1', '029', '001', 'A', '88790GPHA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANTONIO', 'GOMEZ', 'PAEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (207, '1109419077', 'BIBIA', '1', '073', '002', 'E', '21102HRBA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEJANDRA', 'HERRERA', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (209, '86075326', 'JOSE', '1', '033', '002', 'E', '77351GDJM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'MANUEL', 'GONZALEZ', 'DUARTE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (153, '17422976', 'MAURICIO', '1', '089', '001', 'A', '25001GCM', '001', 'SUPERVISORES', '', 'GOMEZ', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (234, '1122237940', 'FILLER', '1', '029', '001', 'E', '39965GGFA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXIS', 'GARZON', 'GARZON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (243, '1124190487', 'EDNA', '1', '033', '002', 'E', '92512SCER', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ROCIO', 'SANDOVAL', 'CALLEJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (244, '1122132323', 'ANGELA', '1', '029', '002', 'E', '34348OGAP', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'PATRICIA', 'OCHOA', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (217, '30389287', 'YASMIN', '1', '073', '002', 'E', '91312RHY', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'RIOS', 'HOYOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (235, '17421364', 'JOSE', '1', '031', '003', 'E', '23389PFJW', '003', 'OPERATIVOS PLANTA EXT', 'WILLIAM', 'POBLADOR', 'FORERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (236, '94355644', 'DAVID', '1', '033', '002', 'E', '57669QGDJ', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAMES', 'QUINTERO', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (264, '1120503811', 'SORLEY', '1', '073', '002', 'E', '5836COSN', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'NATHALIA', 'CLEVES', 'OVIEDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (265, '1107093188', 'DIXIE', '1', '021', '001', 'E', '95213AMDK', '001', 'NO DEFINIDO', 'KATHERINE', 'AZA', 'MORALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (266, '1121935892', 'MAROLINN', '1', '021', '001', 'E', '37917LHMD', '001', 'NO DEFINIDO', 'DAYANN', 'LOZA', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (267, '1124826689', 'KELLY', '1', '097', '002', 'E', '28714GGKY', '002', 'NO DEFINIDO', 'YOJANA', 'GONZALEZ', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (268, '1123114786', 'JUAN', '1', '095', '002', 'E', '16811PHJC', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAMILO', 'PARRA', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (269, '80324097', 'VICTOR', '1', '029', '002', 'A', '26122BTVM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'MANUEL', 'BALLEN', 'TRIANA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (270, '93297612', 'JOSÉ', '1', '095', '002', 'E', '99637LGJF', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'FILADELFIO', 'LIZCANO', 'GALEANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (271, '86002691', 'JAIRO', '1', '095', '002', 'E', '4716MCJ', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'MOLINA', 'CONDE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (496, '1116266182', 'JHONATAN', '1', '073', '009', 'A', '68207BMJ', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'BEDOYA', 'MANRIQUE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (677, '1121208322', 'DUMAR', '1', '104', '000', 'E', '10347CDDF', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'FABIAN', 'CARRILLO', 'DURAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1249, '1032443022', 'ANLLY', '1', '129', '005', 'E', '45047GRAJ', '005', 'COORDINADORES', 'JULIET', 'GARZON', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (143, '17267125', 'JULIO', '1', '031', '001', 'E', '69150LDJC', '001', 'OPERATIVOS PLANTA EXT', 'CESAR', 'LOZANO', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (213, '1120871785', 'IVAN', '1', '021', '002', 'E', '73810CRIA', '002', 'NO DEFINIDO', 'ANDRES', 'CANO', 'RIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (218, '1120371909', 'JHON', '1', '021', '001', 'E', '73934MRJA', '001', 'NO DEFINIDO', 'ALEXIS', 'MONTAÑA', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (219, '1119891079', 'DORA', '1', '021', '004', 'E', '93104MLDC', '004', 'NO DEFINIDO', 'CECILIA', 'MARTINEZ', 'LERMA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (220, '7838043', 'YEISON', '1', '033', '002', 'E', '40068RAYA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXANDER', 'RODRIGUEZ', 'ALVARADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (221, '17265720', 'EDILSON', '1', '033', '002', 'E', '67745VLE', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'VALLEJO', 'LOZANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (222, '1039694937', 'JUAN', '1', '021', '001', 'E', '96962BMJC', '001', 'NO DEFINIDO', 'CAMILO', 'BARRAGAN', 'MOLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (223, '86072558', 'JOSE', '1', '024', '001', 'E', '74583ORJA', '001', 'CONDUCTORES', 'ANTONIO', 'ORBEGOZO', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (224, '1121826418', 'DIANA', '1', '073', '002', 'E', '28443RADF', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'FAISULY', 'RINCON', 'ARDILA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (225, '41225846', 'GLORIA', '1', '033', '002', 'E', '27871GSGN', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'NANCY', 'GARZON', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (226, '97447171', 'JORGE', '1', '074', '002', 'X', '49196RLJA', '002', 'NO DEFINIDO', 'AVELINO', 'RODRIGUEZ', 'LOZADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (227, '93438893', 'WILSON', '1', '033', '002', 'E', '40918EBWO', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ORLANDO', 'ECHEVERRY', 'BEDOYA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (228, '1124831384', 'JULIO', '1', '029', '002', 'E', '33409CVJA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEJANDRO', 'CASTAÑO', 'VALLES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (229, '1070917974', 'FREDY', '1', '029', '002', 'E', '19999BPFS', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'SMIT', 'BAEZ', 'PERALTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (230, '1122139054', 'DUMAR', '1', '029', '002', 'E', '41079UBDS', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'SEBASTIAN', 'UMBARILA', 'BENAVIDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (232, '17416669', 'HUMBERTO', '1', '031', '001', 'X', '18694SGH', '001', 'OPERATIVOS PLANTA EXT', '', 'SANABRIA', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (233, '1123115866', 'CRISTIAN', '1', '029', '001', 'E', '17891AMCD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'ALVAREZ', 'MORA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (237, '1123115615', 'OSCAR', '1', '090', '001', 'A', '17640DROI', '001', 'NO DEFINIDO', 'IVAN', 'DUQUE', 'RIAÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (238, '7838052', 'RAMIRO', '1', '029', '002', 'E', '40077ADR', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'AVILA', 'DUEÑAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (239, '1121938411', 'CLAUDIA', '1', '021', '004', 'E', '40436SCCM', '004', 'NO DEFINIDO', 'MARCELA', 'SIERRA', 'CUERVO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (240, '1121909815', 'CRISTIAN', '1', '021', '001', 'E', '11840GPCG', '001', 'NO DEFINIDO', 'GILDARDO', 'GUTIERREZ', 'PARDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (241, '1121929068', 'DIEGO', '1', '021', '001', 'E', '31093GRDA', '001', 'NO DEFINIDO', 'ANDRES', 'GOMEZ', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (245, '1124218139', 'WILMER', '1', '033', '002', 'E', '20164RRW', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ROZO', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (246, '91363426', 'DORYAM', '1', '029', '002', 'E', '65451VQDW', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'WILFREDO', 'VARGAS', 'QUIROGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (247, '17390081', 'WILLIAM', '1', '029', '002', 'E', '92106HCWF', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'FRANCISCO', 'HUERTAS', 'CORTES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (248, '1123512255', 'CARLOS', '1', '029', '001', 'X', '14280LBCG', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'GREGORIO', 'LLANOS', 'BOLAÑOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (249, '1122135991', 'ASTRID', '1', '073', '002', 'E', '38016RLAC', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAROLINA', 'ROA', 'LEON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (250, '1121923711', 'LUZ', '1', '021', '002', 'E', '25736GSLI', '002', 'NO DEFINIDO', 'IDALIA', 'GOMEZ', 'SOTELO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (251, '1121921499', 'MIGUEL', '1', '040', '003', 'E', '23524DBMA', '003', 'NO DEFINIDO', 'ANGEL', 'DIAZ', 'BELTRAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (252, '1123533740', 'CLAUDIA', '1', '021', '002', 'E', '35765VQCP', '002', 'NO DEFINIDO', 'PATRICIA', 'VALENCIA', 'QUIÑONES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (253, '31021722', 'YULY', '1', '033', '002', 'E', '23747LJYA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDREA', 'LEAL', 'JIMENEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (254, '1123114517', 'ELKIN', '1', '033', '002', 'E', '16542RMEY', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'YECID', 'ROJAS', 'MORENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (255, '17421545', 'MISAEL', '1', '031', '001', 'E', '23570MMM', '001', 'OPERATIVOS PLANTA EXT', '', 'MORA', 'MONTENEGRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (256, '97610739', 'JHON', '1', '031', '003', 'E', '12764OPJJ', '003', 'OPERATIVOS PLANTA EXT', 'JAIRO', 'OROZCO', 'PAEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (257, '17496516', 'LUIS', '1', '029', '001', 'E', '98541RPLA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALBERTO', 'ROBLES', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (258, '12198472', 'HECTOR', '1', '029', '001', 'E', '100497CUHH', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'HERNANDO', 'CALDERON', 'URRIAGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (259, '17420986', 'ARTURO', '1', '031', '003', 'E', '23011LA', '003', 'OPERATIVOS PLANTA EXT', '', 'LONDOÑO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (260, '1123514383', 'CRISTIAN', '1', '029', '002', 'E', '16408MSCJ', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAVIER', 'MARIN', 'SAAVEDRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (261, '1119890843', 'INGRITH', '1', '033', '002', 'E', '92868LCIG', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'GINNETH', 'LOPEZ', 'CONTRERAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (262, '1123115561', 'ADRIANA', '1', '030', '008', 'A', '17586MMAM', '008', 'AUXILIARES OPERATIVOS', 'MILENA', 'MENDOZA', 'MURCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (263, '1151942114', 'CHRISTIAN', '1', '029', '002', 'E', '44139MACA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALVEIRO', 'MEJIA', 'ARCE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (231, '1122136422', 'DUVERNEY', '1', '033', '002', 'E', '38447GSD', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'GARAVITO', 'SARAY', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (215, '86056213', 'JOSE', '1', '033', '008', 'A', '58238VIJS', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'SAID', 'VARGAS', 'IPUS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (214, '1024570083', 'DEIBY', '1', '021', '002', 'E', '72108MTDP', '002', 'NO DEFINIDO', 'PAOLA', 'MOSQUERA', 'TAPIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (294, '1120374612', 'ROSENBER', '1', '021', '001', 'E', '76637BCRW', '001', 'NO DEFINIDO', 'WILSON', 'BERNAL', 'CANDIL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (304, '86050603', 'ALEJANDRO', '1', '033', '002', 'E', '52628AMA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'AVELLANEDA', 'MEDINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (278, '1119949699', 'ZULAIDY', '1', '021', '002', 'E', '51724HOZ', '002', 'NO DEFINIDO', '', 'HERNANDEZ', 'OLAYA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (295, '1102229799', 'JADER', '1', '029', '002', 'E', '31824VSJA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANTONIO', 'VILLEGAS', 'SOTO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (296, '17420372', 'JOSÉ', '1', '066', '003', 'E', '22397GPJN', '003', 'NO DEFINIDO', 'NELSON', 'GONZALEZ', 'PULIDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (326, '1006776716', 'YEISON', '1', '029', '002', 'E', '78741PMYA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'PICO', 'MORENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (327, '66852732', 'YASMIN', '1', '033', '002', 'E', '54757RRYE', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'EISER', 'REYES', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (328, '1123115865', 'HEYVER', '1', '033', '002', 'E', '17890AMHD', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'DUVAN', 'ALVAREZ', 'MORA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (329, '12400882', 'JHON', '1', '032', '002', 'E', '2907CPJJ', '002', 'NO DEFINIDO', 'JAIRO', 'CUADRO', 'PAYARES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (330, '1121888552', 'JHON', '1', '054', '003', 'E', '90577OPJW', '003', 'OPERATIVOS MANTENIMIENTO', 'WILMAR', 'ORDOÑEZ', 'PEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (331, '49669258', 'LUZ MERY', '1', '021', '001', 'E', '71283PL', '001', 'NO DEFINIDO', '', 'PLATA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (333, '40430705', 'ALEX', '1', '021', '000', 'E', '32730RCA', '000', 'NO DEFINIDO', '', 'ROMERO', 'CHAUX', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (334, '1006697633', 'JIMENA', '1', '073', '002', 'E', '99658TJK', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'KATHERINE', 'TINOCO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (335, '40433886', 'MERLY', '1', '073', '009', 'A', '35911GAMJ', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'JOHANA', 'GOMEZ', 'ALVAREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (678, '1005130452', 'FERLEY', '1', '104', '000', 'E', '32477CDFE', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'ESTEBAN', 'CARRILLO', 'DURAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (216, '1113036196', 'ELMIN', '1', '033', '002', 'E', '38221CPEF', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'FAVITH', 'CANO', 'PALACIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (275, '11323245', 'JOSE', '1', '029', '001', 'E', '25270GRJN', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'NABOR', 'GUZMAN', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (276, '13520681', 'EDWAR', '1', '090', '001', 'A', '22706RPEA', '001', 'NO DEFINIDO', 'ARTURO', 'ROJAS', 'PRADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (277, '1122131357', 'MANUEL', '1', '029', '001', 'E', '33382RQMA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEJANDRO', 'REYES', 'QUINTERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (279, '1006658545', 'LUDY', '1', '021', '002', 'E', '60570CDLJ', '002', 'NO DEFINIDO', 'JASBLEIDY', 'CIFUENTES', 'DAZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (280, '1122130915', 'EDISSON', '1', '029', '001', 'E', '32940SEA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'SANDOBAL', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (281, '1123533740', 'CLAUDIA', '1', '099', '002', 'E', '35765VQCP', '002', 'NO DEFINIDO', 'PATRICIA', 'VALENCIA', 'QUIÑONEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (282, '1119888423', 'EUCARYS', '1', '099', '001', 'E', '90448CJE', '001', 'NO DEFINIDO', '', 'CALDAS', 'JIMENEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (283, '1123114785', 'JULIAN', '1', '095', '002', 'E', '16810PHJD', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'PARRA', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (284, '1123115674', 'WILMER', '1', '033', '002', 'E', '17699LCWF', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'FAVIAN', 'LEON', 'CASTRILLON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (285, '17423246', 'JUAN', '1', '102', '002', 'E', '25271RMJC', '002', 'NO DEFINIDO', 'CARLOS', 'ROJAS', 'MURILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (286, '1122142624', 'BRAYAN', '1', '029', '001', 'E', '44649BABF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNANDO', 'BOLAÑOS', 'ARANGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (287, '1121915924', 'ARTURO', '1', '095', '001', 'E', '17949RMAD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'RIVERA', 'MORA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (288, '1123116395', 'YEISON', '1', '029', '002', 'E', '18420ARYF', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNANDO', 'ACOSTA', 'RIAÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (289, '1123116044', 'EDWAR', '1', '031', '003', 'E', '18069RREE', '003', 'OPERATIVOS PLANTA EXT', 'ESNEYDER', 'RESTREPO', 'RAMOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (290, '1122655444', 'FABIAN', '1', '021', '002', 'E', '57469FGFS', '002', 'NO DEFINIDO', 'STEVEN', 'FAJARDO', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (291, '17420445', 'LUIS', '1', '029', '002', 'E', '22470ALA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXANDER', 'ARIZA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (292, '1120356827', 'ESNEYDER', '1', '029', '002', 'E', '58852BDE', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'BERMUDEZ', 'DUQUE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (293, '10474099', 'JEFFERSON', '1', '030', '002', 'E', '76124DCJ', '002', 'AUXILIARES OPERATIVOS', '', 'DIAZ', 'CHARRUPI', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (297, '1062305766', 'CRISTIAN', '1', '029', '002', 'E', '7791QICE', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'EDWIN', 'QUINTANA', 'IPA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (298, '1121902026', 'MARIA', '1', '096', '002', 'E', '4051RCMA', '002', 'NO DEFINIDO', 'ALEJANDRA', 'RESTREPO', 'CHAVEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (299, '1122139454', 'JOSÉ', '1', '031', '003', 'E', '41479MBJD', '003', 'OPERATIVOS PLANTA EXT', 'DUVAN', 'MONTEALEGRE', 'BERMUDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (300, '1119949699', 'ZULEIDY', '1', '033', '002', 'E', '51724HOZ', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'HERNANDEZ', 'OLAYA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (301, '1123086926', 'ELIZABETH', '1', '021', '002', 'E', '88951CCE', '002', 'NO DEFINIDO', '', 'CACERES', 'CUMACO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (302, '1122124398', 'CATERINE', '1', '021', '002', 'E', '26423CCC', '002', 'NO DEFINIDO', '', 'CACERES', 'CUMACO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (305, '86072558', 'JOSE', '1', '024', '003', 'E', '74583ORJA', '003', 'CONDUCTORES', 'ANTONIO', 'ORBEGOZO', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (306, '1120498699', 'MIRYAM', '1', '073', '002', 'E', '100724CTML', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'LUCENA', 'CESPEDES', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (307, '1122118103', 'NUBIA', '1', '033', '002', 'E', '20128RGN', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'RODRÍGUEZ', 'GARZON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (308, '1123114911', 'HADER', '1', '095', '002', 'E', '16936VMH', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'VARON', 'MORA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (309, '1123114418', 'YESSIKA', '1', '073', '002', 'E', '16443CCY', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CALLEJAS', 'CUMBE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (310, '1069725971', 'JHON', '1', '109', '003', 'E', '27996OHJM', '003', 'NO DEFINIDO', 'MIRLEN', 'OLIVEROS', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (311, '1123115004', 'MARIA', '1', '073', '002', 'E', '17029MGMA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEJANDRA', 'MORA', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (312, '4438730', 'HENRY', '1', '054', '003', 'E', '40755PSH', '003', 'OPERATIVOS MANTENIMIENTO', '', 'PEREZ', 'SALINAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (313, '1122145488', 'LUISA', '1', '021', '001', 'E', '47513GCLC', '001', 'NO DEFINIDO', 'CAMILA', 'GUEVARA', 'CABANZO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (314, '35263682', 'CLAUDIA', '1', '021', '002', 'E', '65707TRCP', '002', 'NO DEFINIDO', 'PATRICIA', 'TELLO', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (315, '1121917443', 'NILSON', '1', '096', '002', 'E', '19468LRNA', '002', 'NO DEFINIDO', 'ALEXANDER', 'LOPEZ', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (316, '1122655444', 'FABIAN', '1', '033', '002', 'E', '57469FGFS', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'STEVEN', 'FAJARDO', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (317, '11524306', 'CARLOS', '1', '029', '000', 'E', '26331ESCF', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNANDO', 'ESPEJO', 'SIERRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (318, '80414210', 'JESUS', '1', '031', '003', 'E', '16235PLJA', '003', 'OPERATIVOS PLANTA EXT', 'ALBERTO', 'PEREZ', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (319, '1122138020', 'EMILIO', '1', '029', '001', 'E', '40045GCEA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'GUEVARA', 'CABANZO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (320, '1122140130', 'EVA', '1', '021', '002', 'E', '42155RGEY', '002', 'NO DEFINIDO', 'YAJAIRA', 'RUIZ', 'GUIZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (321, '1120874977', 'LEIDY', '1', '073', '002', 'E', '77002RGLD', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'DANIELA', 'RODRIGUEZ', 'GIRALDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (322, '1122139711', 'ZOILA', '1', '021', '001', 'E', '41736MMZR', '001', 'NO DEFINIDO', 'ROSA', 'MOTTA', 'MOLINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (323, '1001198357', 'NANCY', '1', '021', '002', 'E', '100382RONK', '002', 'NO DEFINIDO', 'KATHERINE', 'RODRIGUEZ', 'OSPINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (324, '52485298', 'NIDIA', '1', '021', '002', 'E', '87323CONP', '002', 'NO DEFINIDO', 'PATRICIA', 'CHISCO', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (325, '1116438699', 'EDGAR', '1', '029', '000', 'E', '40724LDER', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'RODOLFO', 'LIBERATO', 'DELGADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (358, '1122130397', 'JENNIFER', '1', '033', '002', 'E', '32422BMJE', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ELIANA', 'BERNAL', 'MAHECHA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (370, '1123114218', 'PAOLA', '1', '073', '009', 'A', '16243GLPA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDREA', 'GONZALEZ', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (343, '52373396', 'DORA', '1', '021', '000', 'E', '75421BHDI', '000', 'NO DEFINIDO', 'INES', 'BOHORQUEZ', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (393, '1007221883', 'ISABEL', '1', '128', '004', 'A', '23908RRI', '004', 'COORDINADORES', '', 'RAMIREZ', 'RIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (360, '1006720150', 'KAREN', '1', '021', '001', 'E', '22175RNKY', '001', 'NO DEFINIDO', 'YARITZA', 'RIVEROS', 'NIETO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (371, '1000616234', 'MARIA', '1', '141', '002', 'A', '18259HBMF', '002', 'ANALISTAS', 'FERNANDA', 'HURTADO', 'BOHORQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (361, '1120579404', 'LEIDY', '1', '096', '002', 'E', '81429ZBLM', '002', 'NO DEFINIDO', 'MABEL', 'ZARTA', 'BARRETO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (391, '1122140679', 'YAZMIN', '1', '021', '002', 'E', '42704SPYL', '002', 'NO DEFINIDO', 'LORENA', 'SILVA', 'PEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (362, '1121860660', 'CRISTIAN', '1', '030', '002', 'E', '62685SRCC', '002', 'AUXILIARES OPERATIVOS', 'CAMILO', 'SANCHEZ', 'ROZO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (392, '1006779558', 'JONATHAN', '1', '033', '002', 'E', '81583DAJE', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ENRIQUE', 'DIAZ', 'ALVAREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (394, '1006782614', 'ANA', '1', '033', '008', 'A', '84639SMAF', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'FELIZA', 'SALGADO', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (395, '35262056', 'ANGELICA', '1', '033', '008', 'A', '64081AAM', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'MARIA', 'ANZOLA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (396, '1121939838', 'YULY', '1', '131', '002', 'E', '41863VGYA', '002', 'NO DEFINIDO', 'ANDREA', 'VACA', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (397, '1115916468', 'WILMAR', '1', '033', '008', 'A', '18493GAWR', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'RICARDO', 'GARCIA', 'ACOSTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (398, '1122131043', 'GLORIA', '1', '021', '002', 'E', '33068RGGC', '002', 'NO DEFINIDO', 'CECILIA', 'RODRIGUEZ', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (399, '9770300', 'EIMER', '1', '030', '001', 'A', '72325OTEY', '001', 'AUXILIARES OPERATIVOS', 'YITZHAK', 'ORTEGA', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (401, '1084738901', 'YOSCAR', '1', '029', '002', 'E', '40926CPYM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'MANUEL', 'CABALLERO', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (497, '1006838744', 'DEISY', '1', '073', '009', 'A', '40769MGDA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXANDRA', 'MELO', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (679, '74852977', 'WILSON', '1', '104', '000', 'E', '55002CCWJ', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAIR', 'COMAYAN', 'CETINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (340, '1122129358', 'JENNY', '1', '021', '000', 'E', '31383MRJK', '000', 'NO DEFINIDO', 'KATERIN', 'MARTINEZ', 'RESTREPO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (274, '86052721', 'MAURICIO', '1', '095', '002', 'E', '54746CVM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CANO', 'VALDERRAMA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (339, '1122145462', 'ANGHELA', '1', '021', '000', 'E', '47487MHAJ', '000', 'NO DEFINIDO', 'JULIETH', 'MONTOYA', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (400, '1121879560', 'DELIO', '1', '030', '001', 'A', '81585LCDF', '001', 'AUXILIARES OPERATIVOS', 'FERNANDO', 'LLANOS', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (342, '1000616234', 'MARIA', '1', '021', '000', 'E', '18259HBMF', '000', 'NO DEFINIDO', 'FERNANDA', 'HURTADO', 'BOHORQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (359, '65801502', 'SANDRA', '1', '073', '002', 'E', '3527SVSM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'MILENA', 'SAAVEDRA', 'VERGARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (344, '20768035', 'CLARA', '1', '021', '000', 'E', '70060GPCY', '000', 'NO DEFINIDO', 'YINETH', 'GAVIRIA', 'PERALTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (345, '40432324', 'MARIA', '1', '073', '000', 'E', '34349RGMC', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'CRISTINA', 'RUIZ', 'GUIZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (346, '1121888387', 'NEYDI', '1', '021', '000', 'E', '90412SDNV', '000', 'NO DEFINIDO', 'VANEZA', 'SANCHEZ', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (347, '1122130280', 'JENNY', '1', '021', '000', 'E', '32305LAJP', '000', 'NO DEFINIDO', 'PATRICIA', 'LEMUS', 'ARDILA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (363, '1122144720', 'DERLI', '1', '021', '001', 'E', '46745GRDY', '001', 'NO DEFINIDO', 'YURANI', 'GARCIA', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (348, '1122126767', 'ALEXANDER', '1', '054', '000', 'E', '28792MBA', '000', 'OPERATIVOS MANTENIMIENTO', '', 'MONTOYA', 'BUITRAGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (349, '35286120', 'ANA', '1', '021', '000', 'E', '88145GLAR', '000', 'NO DEFINIDO', 'ROSALBA', 'GUASCA', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (350, '1123436709', 'DARWIN', '1', '100', '000', 'E', '38734PRDL', '000', 'ASISTENTES', 'LEONEL', 'PARRA', 'RUBIO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (351, '1121847329', 'OLGA', '1', '021', '000', 'E', '49354MRON', '000', 'NO DEFINIDO', 'NATALIA', 'MONSALVE', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (352, '1120387689', 'MICHELL', '1', '021', '000', 'E', '89714GAM', '000', 'NO DEFINIDO', '', 'GOMEZ', 'ALVAREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (353, '1010241177', 'RICARDO', '1', '021', '000', 'E', '43202UORA', '000', 'NO DEFINIDO', 'ALFONSO', 'UNDA', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (354, '1123087178', 'ZULLY', '1', '021', '001', 'E', '89203BRZP', '001', 'NO DEFINIDO', 'PATRICIA', 'BALDION', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (356, '1122125826', 'JIRALY', '1', '021', '002', 'E', '27851HNJY', '002', 'NO DEFINIDO', 'YURLEY', 'HERNANDEZ', 'NOVOA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (364, '1121951849', 'LEIDY', '1', '021', '002', 'E', '53874PRLV', '002', 'NO DEFINIDO', 'VIVIANA', 'PARRADO', 'ROMERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (367, '1111194516', 'YULI', '1', '073', '009', 'A', '96541CFYP', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'PAOLA', 'CAMACHO', 'FLOREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (365, '1121949321', 'MARIA', '1', '021', '002', 'E', '51346OFMC', '002', 'NO DEFINIDO', 'CAMILA', 'OTELO', 'FRANCO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (366, '1123114806', 'LUZ', '1', '073', '002', 'E', '16831CSLM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'MARY', 'CRISTANCHO', 'SAENZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (368, '1123115152', 'PAOLA', '1', '021', '002', 'E', '17177APPA', '002', 'NO DEFINIDO', 'ANDREA', 'ACOSTA', 'PICON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (369, '1122127448', 'MARYORI', '1', '030', '009', 'A', '29473ASMJ', '009', 'AUXILIARES OPERATIVOS', 'JOHANA', 'ARIAS', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (372, '20768035', 'CLARA', '1', '030', '017', 'A', '70060GPCY', '017', 'AUXILIARES OPERATIVOS', 'YINETH', 'GAVIRIA', 'PERALTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (373, '1112781358', 'HUBERNEY', '1', '123', '007', 'A', '83383CPH', '007', 'SUPERVISORES', '', 'CANAVAL', 'POSSO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (374, '1124818470', 'DIDIER', '1', '029', '000', 'E', '20495YMD', '000', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'YEPES', 'MONTENEGRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (375, '1005776562', 'KONY', '1', '021', '001', 'E', '78587MGKN', '001', 'NO DEFINIDO', 'NATALIA', 'MUÑOZ', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (376, '1122124446', 'JENNY', '1', '073', '002', 'E', '26471ASJY', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'YAMILE', 'ARIAS', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (377, '39950724', 'ANA', '1', '033', '002', 'E', '52749PGAM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'MILENA', 'PALACIOS', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (378, '1123116569', 'YILMER', '1', '029', '002', 'E', '18594RCYL', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'LORENZO', 'RICO', 'CERVANTES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (379, '1121920173', 'CRISTIAN', '1', '029', '002', 'X', '22198JBCC', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAMILO', 'JIMENEZ', 'BENITO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (380, '1006658935', 'NIDIA', '1', '021', '001', 'E', '60960RRNJ', '001', 'NO DEFINIDO', 'JOHANA', 'REYES', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (381, '86013949', 'FAVER', '1', '090', '001', 'A', '15974HAF', '001', 'NO DEFINIDO', '', 'HERNANDEZ', 'ARREDONDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (382, '1120874706', 'JEISSON', '1', '096', '002', 'E', '76731SHJS', '002', 'NO DEFINIDO', 'STEVEN', 'SALAMANCA', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (383, '1120579404', 'LEIDY', '1', '131', '002', 'E', '81429ZBLM', '002', 'NO DEFINIDO', 'MABEL', 'ZARTA', 'BARRETO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (385, '1121934098', 'WINNY', '1', '021', '002', 'E', '36123GOWY', '002', 'NO DEFINIDO', 'YANILA', 'GUEVARA', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (386, '1122127033', 'CINDI', '1', '033', '008', 'A', '29058GCCL', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'LORENA', 'GUEVARA', 'CALDERON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (387, '1121875256', 'SOFIA', '1', '027', '001', 'A', '77281CPSP', '001', 'ASISTENTES', 'PAOLA', 'CUBILLOS', 'PATIÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (388, '1006774821', 'LIZZETH', '1', '040', '002', 'E', '76846DMLD', '002', 'NO DEFINIDO', 'DANIELA', 'DIAZ', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (389, '1002623157', 'YESICA', '1', '073', '009', 'A', '25182EUYS', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'SIRLEY', 'ESPEJO', 'USECHE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (390, '1006774821', 'LIZZETH', '1', '021', '002', 'E', '76846DMLD', '002', 'NO DEFINIDO', 'DANIELA', 'DIAZ', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (357, '40433187', 'LUZ', '1', '021', '002', 'E', '35212OTLM', '002', 'NO DEFINIDO', 'MARY', 'OROZCO', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (428, '1006779056', 'LEIDY', '1', '073', '002', 'E', '81081OGLM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'MARCELA', 'OBANDO', 'GIRALDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (436, '52446937', 'ZURLAY', '1', '040', '001', 'E', '48962VDZJ', '001', 'NO DEFINIDO', 'JHASBLEYDY', 'VIGOYA', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (429, '1123116494', 'JAIDI', '1', '073', '002', 'E', '18519PAJT', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'TATIANA', 'PARRADO', 'ALVARAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (437, '1006777187', 'MARIA', '1', '040', '002', 'E', '79212RFMA', '002', 'NO DEFINIDO', 'ANGELA', 'ROBLES', 'FAJARDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (430, '1121825154', 'MARIA', '1', '073', '009', 'A', '27179BAMC', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAMILA', 'BERMUDEZ', 'ALZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (431, '1056769191', 'LEIDY', '1', '073', '002', 'E', '71216GGLN', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'NATALIA', 'GARCIA', 'GIRALDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (462, '1121937616', 'EDWIN', '1', '137', '001', 'E', '39641VCEA', '001', 'ANALISTAS', 'ADRIAN', 'VILLEGAS', 'CARDOZO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (463, '1122120798', 'JUAN', '1', '073', '002', 'E', '22823MCJC', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAMILO', 'MARTINEZ', 'CARO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (464, '86078810', 'JEFFERSON', '1', '029', '008', 'A', '80835GGJ', '008', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'GUTIERREZ', 'GAMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (680, '17414398', 'NELSON', '1', '104', '000', 'X', '16423TLNJ', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAVIER', 'TUNJANO', 'LARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (681, '17415101', 'EDILBERTO', '1', '104', '000', 'E', '17126YEE', '000', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'YGUINA', 'ESCOBAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (445, '1006779061', 'VALENTINA', '1', '073', '009', 'A', '81086CGV', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CESPEDES', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (338, '1122142057', 'LEIDY', '1', '021', '000', 'E', '44082BRLE', '000', 'NO DEFINIDO', 'EMILSEN', 'BALDION', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (404, '1193139838', 'JENNIFER', '1', '073', '002', 'E', '41863QJ', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'QUIROZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (408, '1123115528', 'ANGIE', '1', '073', '002', 'E', '17553JEAY', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'YULIETH', 'JAIME', 'ESPITIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (409, '1122120878', 'ALEXANDRA', '1', '073', '002', 'E', '22903OGA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'OBANDO', 'GIRALDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (410, '1116202263', 'EUSER', '1', '029', '002', 'A', '4288POEH', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'HUMBERTO', 'POVEDA', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (411, '1122120195', 'MARIA', '1', '073', '002', 'E', '22220GRMN', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'NELLY', 'GARCIA', 'ROA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (412, '1010127903', 'ANDRES', '1', '033', '002', 'E', '29928BVAF', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'FELIPE', 'BAEZ', 'VARON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (413, '1006779399', 'PAULA', '1', '033', '008', 'A', '81424CPPA', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDREA', 'CASALLAS', 'PACHECO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (414, '1123116537', 'DANISSA', '1', '033', '008', 'A', '18562VPD', '008', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'VIVEROS', 'PANAMEÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (415, '1006875133', 'SEBASTIAN', '1', '029', '008', 'A', '77158RRS', '008', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'RAMIREZ', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (416, '1006838744', 'DEISY', '1', '073', '002', 'E', '40769MGDA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXANDRA', 'MELO', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (417, '1007780450', 'MANUEL', '1', '095', '017', 'A', '82475DPME', '017', 'OPERATIVOS PRODUCCION AGRICOLA', 'ESTEBAN', 'DIAZ', 'PEREIRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (418, '16045285', 'WILDER', '1', '029', '002', 'E', '47310ZAW', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ZAPATA', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (419, '1123114051', 'ARGENIDA', '1', '073', '002', 'E', '16076VDA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'VARGAS', 'DEVIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (427, '1123114406', 'ARACELY', '1', '073', '002', 'E', '16431OAA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ORTIZ', 'ALVARAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (420, '52805686', 'ROSA', '1', '085', '001', 'A', '7711BERM', '001', 'AUXILIARES', 'MARIA', 'BENAVIDES', 'ESPINOSA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (421, '1120472141', 'EIDY', '1', '073', '002', 'E', '74166GOEV', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'VANESA', 'GRACIA', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (422, '1010087203', 'JULIAN', '1', '029', '002', 'E', '89228ZPJA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'ZAPATA', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (424, '1007703963', 'LAURA', '1', '073', '002', 'E', '5988RCLN', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'NATALIA', 'RAMIREZ', 'CORDOBA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (425, '1084743593', 'JAVIER', '1', '073', '002', 'E', '45618LUJA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALFONSO', 'LEAL', 'URINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (426, '1121951537', 'ANYI', '1', '027', '001', 'E', '53562PAAL', '001', 'ASISTENTES', 'LUZCENIT', 'PRADA', 'AREVALO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (460, '1000969908', 'SEBASTIAN', '1', '029', '002', 'A', '71933CES', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CASTAÑEDA', 'ESGUERRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (432, '1006409147', 'PEDRO', '1', '029', '002', 'E', '11172MAPJ', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'JOSE', 'MURILLO', 'AGUILAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (433, '1070603190', 'JONATHAN', '1', '096', '002', 'E', '5215PRJH', '002', 'NO DEFINIDO', 'HARVEY', 'POVEDA', 'RICO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (434, '1007650748', 'LUIS', '1', '029', '002', 'E', '52773VQLA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANGEL', 'VARGAS', 'QUEVEDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (435, '1113633734', 'JUAN', '1', '131', '002', 'E', '35759POJA', '002', 'NO DEFINIDO', 'ALBERTO', 'PULGARIN', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (438, '1023918053', 'MABEL', '1', '040', '002', 'E', '20078SCMA', '002', 'NO DEFINIDO', 'ANDREA', 'SALAZAR', 'CUELLAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (440, '52446937', 'ZURLAY', '1', '021', '001', 'E', '48962VDZJ', '001', 'NO DEFINIDO', 'JHASBLEYDY', 'VIGOYA', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (441, '1006777187', 'MARIA', '1', '021', '001', 'E', '79212RFMA', '001', 'NO DEFINIDO', 'ANGELA', 'ROBLES', 'FAJARDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (442, '1023918053', 'MABEL', '1', '021', '001', 'E', '20078SCMA', '001', 'NO DEFINIDO', 'ANDREA', 'SALAZAR', 'CUELLAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (443, '1006729446', 'NAYIVE', '1', '033', '001', 'E', '31471HVN', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'HERNANDEZ', 'VARELA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (444, '1007613918', 'ANDRES', '1', '030', '001', 'A', '15943MMAF', '001', 'AUXILIARES OPERATIVOS', 'FELIPE', 'MELO', 'MEJIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (446, '1116266182', 'JHONATAN', '1', '073', '002', 'E', '68207BMJ', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'BEDOYA', 'MANRIQUE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (447, '1096238017', 'SULEIMA', '1', '073', '001', 'E', '40042APSA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDREA', 'AMADO', 'PARDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (448, '1122236712', 'WILMER', '1', '029', '002', 'E', '38737GGWA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXANDER', 'GOMEZ', 'GARZON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (449, '1122651477', 'HENRY', '1', '138', '001', 'E', '53502MCHD', '001', 'NO DEFINIDO', 'DAVID', 'MESA', 'CHAPARRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (451, '1095843267', 'MARIA', '1', '105', '001', 'A', '45292CCMF', '001', 'COORDINADORES', 'FERNANDA', 'CHINCHILLA', 'CASTELLANOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (452, '40775117', 'ROCIO', '1', '073', '009', 'V', '77142CRR', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CONTRERAS', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (453, '52966773', 'NILSA', '1', '073', '009', 'A', '68798CYN', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CAPERA', 'YATE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (454, '1122139276', 'JHON', '1', '029', '002', 'E', '41301HPJJ', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAIRO', 'HERNANDEZ', 'PINEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (455, '1122144833', 'MAYERLI', '1', '073', '002', 'E', '46858VCM', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'VARGAS', 'CADENA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (456, '1022349358', 'JHON', '1', '073', '009', 'A', '51383JVJE', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'EDINSSON', 'JIMENEZ', 'VALERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (457, '1122649092', 'MARIA', '1', '073', '002', 'E', '51117MMMI', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ISABEL', 'MENDOZA', 'MALAGON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (458, '1122116265', 'MARIA', '1', '073', '002', 'E', '18290ABMA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANGELICA', 'ANDRADE', 'BOLIVAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (459, '1122117454', 'HENRY', '1', '095', '002', 'E', '19479AJH', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ACOSTA', 'JIMENEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (461, '1067715524', 'FELIX', '1', '029', '001', 'E', '17549PBFD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'PIÑERES', 'BORRE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (450, '40432001', 'CLAUDIA', '1', '029', '001', 'A', '34026CCR', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ROCIO', 'CABRERA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (423, '1121942062', 'INGRID', '1', '073', '002', 'E', '44087SGIJ', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'JINETH', 'SANTAFE', 'GALVIS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (733, '1121935349', 'JAIR', '1', '104', '001', 'A', '37374BRJS', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'SEBASTIAN', 'BERMUDEZ', 'ROMERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (690, '1122127274', 'CARLOS', '1', '104', '000', 'E', '29299GDCE', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'ENRIQUE', 'GONZALEZ', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (731, '1122130992', 'JENNIFER', '1', '104', '001', 'A', '33017LCJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'LOPEZ', 'CASTAÑEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (732, '1084728329', 'CARLOS', '1', '104', '001', 'A', '30354JHCA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'JULIO', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (737, '7711031', 'JHON', '1', '104', '001', 'A', '13056ORJJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAIR', 'OVIEDO', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (734, '1010186065', 'GIOVANNY', '1', '104', '001', 'A', '88090PPGC', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAMILO', 'PADILLA', 'PEREIRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (717, '1080426065', 'ANDERSON', '1', '104', '001', 'E', '28090SGAA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'SALCEDO', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (691, '19621206', 'JOSE', '1', '104', '001', 'E', '23231PJJL', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'LUIS', 'POLO', 'JURADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (692, '10499152', 'JHON', '1', '104', '001', 'A', '101177BCJJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAIMER', 'BALANTA', 'CIFUENTES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (693, '1081795404', 'JUAN', '1', '104', '001', 'E', '97429PIJP', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'PABLO', 'PAEZ', 'IBAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (694, '72262612', 'MIGUEL', '1', '104', '001', 'A', '64637MBM', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'MIRANDA', 'BERMUDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (695, '1123510481', 'EDWAR', '1', '104', '001', 'E', '12506PNE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'PINTO', 'NOVA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (696, '86081442', 'RICARDO', '1', '104', '001', 'E', '83467DDR', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'DIAZ', 'DEVIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (698, '5136057', 'JAIRO', '1', '104', '001', 'E', '38082CPJA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALONSO', 'CIENFUEGO', 'PADILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (699, '1075539290', 'EMILIANO', '1', '104', '001', 'E', '41315RGE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'RAMIREZ', 'GARZON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (700, '19000809', 'JHON', '1', '104', '001', 'A', '2834GVJJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAIRO', 'GALEANO', 'VALDOMERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (701, '1081827188', 'BLAS', '1', '104', '000', 'E', '29213PIBA', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANTONIO', 'PAEZ', 'IBAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (702, '1004335328', 'MIGUEL', '1', '104', '001', 'A', '37353CVME', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'EDUARDO', 'CARO', 'VILLEGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (703, '1108934349', 'ROQUE', '1', '104', '001', 'E', '36374BGRD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DUBAN', 'BOCANEGRA', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (668, '79890251', 'CARLOS', '1', '104', '001', 'E', '92276NRCO', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ORLANDO', 'NIÑO', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (720, '1116866658', 'ESNEIDER', '1', '104', '001', 'E', '68683PBEF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNEY', 'PASTO', 'BERNAL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (721, '1007399085', 'HEIKER', '1', '104', '001', 'E', '101110CBHD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DANIEL', 'CAMACHO', 'BOADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (722, '31031928', 'EDY', '1', '104', '001', 'E', '33953CSEY', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'YANIRA', 'CRISTANCHO', 'SAENZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (723, '1054549131', 'ALEJANDRO', '1', '104', '001', 'A', '51156NMA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'NIÑO', 'MURC IA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (724, '1121908364', 'CRISTIAN', '1', '104', '001', 'X', '10389RGCL', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'LEONARDO', 'ROJAS', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (725, '1081795404', 'JUAN', '1', '104', '001', 'A', '97429PIJP', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'PABLO', 'PAEZ', 'IBAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (726, '86076533', 'CORNELIO', '1', '104', '001', 'A', '78558SGC', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'SILVA', 'GAITAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (727, '1081827188', 'BLAS', '1', '104', '001', 'A', '29213PIBA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANTONIO', 'PAEZ', 'IBAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (728, '1123510481', 'EDWAR', '1', '104', '001', 'A', '12506PNE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'PINTO', 'NOVA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (735, '1081789015', 'AUGUSTO', '1', '104', '001', 'A', '91040HFAJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JOSE', 'HERNANDEZ', 'FONSECA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (736, '1006718229', 'ROBERT', '1', '104', '001', 'A', '20254MPRM', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'MAURICIO', 'MANCHAY', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (738, '1037478252', 'NEIS', '1', '104', '001', 'A', '80277CTND', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'CABRERA', 'TAPIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (705, '1003369097', 'VLADIMIR', '1', '104', '001', 'A', '71122SPV', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'SUAREZ', 'PEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (142, '17265720', 'EDILSON', '1', '034', '000', 'E', '67745VLE', '000', 'NO DEFINIDO', '', 'VALLEJO', 'LOZANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (467, '1123433048', 'JUAN', '1', '029', '001', 'E', '35073GGJS', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'SEBASTIAN', 'GALINDO', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (468, '1006838737', 'ROSAISELA', '1', '073', '002', 'E', '40762MGR', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'MONGE', 'GALINDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (704, '1065123031', 'ANTONIO', '1', '104', '001', 'A', '25056VCAR', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'RAFAEL', 'VALDES', 'CABARCAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (706, '1063274441', 'ALVARO', '1', '104', '001', 'E', '76466PPAJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JOSE', 'PATERNINA', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (707, '1122125625', 'HECTOR', '1', '104', '001', 'E', '27650QLHR', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'RAUL', 'QUEVEDO', 'LEYVA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (708, '1002722082', 'HECTOR', '1', '104', '001', 'E', '24107RLHA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ARBEY', 'ROMERO', 'LEGUIZAMON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (670, '1128190929', 'JOSE', '1', '104', '001', 'E', '92954ABJM', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'MIGUEL', 'AHUMADA', 'BOLAÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (682, '1128200455', 'JUAN', '1', '104', '001', 'A', '2480MZJC', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'CARLOS', 'MATUTE', 'ZUÑIGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (683, '85260267', 'RUBEN', '1', '104', '000', 'E', '62292SVRD', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'DARIO', 'SALCEDO', 'VISBAL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (684, '5653664', 'CRISANTO', '1', '104', '001', 'A', '55689GBC', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'GOMEZ', 'BENAVIDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (685, '1084735140', 'ELICIO', '1', '104', '000', 'E', '37165VCEJ', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAVIER', 'VALDES', 'CABARCAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (686, '19617449', 'MANUEL', '1', '104', '000', 'E', '19474JMMS', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'SALVADOR', 'JULIO', 'MEZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (687, '17422139', 'EDWIN', '1', '104', '000', 'E', '24164SGE', '000', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'SANTANA', 'GAMBA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (688, '1006723719', 'STIVEN', '1', '104', '001', 'A', '25744GMSA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'GOMEZ', 'MOYANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (689, '1065123031', 'ANTONIO', '1', '104', '000', 'E', '25056VCAR', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'RAFAEL', 'VALDES', 'CABARCAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (709, '76007201', 'NELSON', '1', '104', '001', 'E', '9226VVNH', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'HILARIO', 'VIA', 'VILLANUEVA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (711, '1128187143', 'LUIS', '1', '104', '001', 'E', '89168AZLD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'ALCAZAR', 'ZUÑIGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (712, '1123114185', 'GERARDO', '1', '104', '001', 'E', '16210BOG', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'BENAVIDES', 'OJEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (713, '1069582221', 'HAROLD', '1', '030', '001', 'E', '84246PCHS', '001', 'AUXILIARES OPERATIVOS', 'STEVEN', 'PULIDO', 'CARRILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (714, '19563455', 'JORGE', '1', '104', '001', 'A', '65480CJA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ARMANDO', 'CANTILLO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (715, '1084731299', 'JOVANI', '1', '104', '001', 'A', '33324PAJE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ENRIQUE', 'POLO', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (716, '1121920902', 'JUAN', '1', '104', '001', 'E', '22927RRJA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANGEL', 'RODRIGUEZ', 'RIOJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (729, '1123084858', 'RAFAEL', '1', '104', '001', 'A', '86883RORS', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'STIVEN', 'ROMERO', 'OBANDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (730, '1049894190', 'YAELIS', '1', '104', '001', 'A', '96215CRY', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CANTILLO', 'RAMOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (770, '52900115', 'DIANA', '3', '002', '005', 'V', '2140RMDC', '005', 'NO DEFINIDO', 'CONSTANZA', 'RIVEROS', 'MEDINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (771, '1121833535', 'MONICA', '3', '064', '000', 'X', '35560RCMA', '000', 'NO DEFINIDO', 'ANDREA', 'RAMIREZ', 'CASTEBLANCO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (783, '1122129057', 'DUVAR', '3', '031', '000', 'E', '31082AADA', '000', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'ACOSTA', 'AGUIRRE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (784, '1121880702', 'LUISA', '3', '119', '003', 'A', '82727TTLF', '003', 'ASISTENTES', 'FERNANDA', 'TELLO', 'TOVAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (786, '1121874595', 'RAUL', '3', '095', '000', 'E', '76620SZR', '000', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'SAAVEDRA', 'ZARATE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (787, '1122140130', 'EVA', '3', '014', '000', 'E', '42155RGEY', '000', 'ASISTENTES', 'YAJAIRA', 'RUIZ', 'GUIZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (788, '4438730', 'HENRY', '3', '049', '000', 'E', '40755PSH', '000', 'OPERATIVOS MANTENIMIENTO', '', 'PEREZ', 'SALINAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (789, '1122144833', 'MAYERLI', '3', '021', '000', 'E', '46858VCM', '000', 'NO DEFINIDO', '', 'VARGAS', 'CADENA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (790, '1006723403', 'LUZ', '3', '021', '000', 'E', '25428OGLK', '000', 'NO DEFINIDO', 'KATHERIN', 'OSPINA', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (791, '4438730', 'HENRRY', '3', '049', '999', 'E', '40755PSH', '999', 'OPERATIVOS MANTENIMIENTO', '', 'PEREZ', 'SALINAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (792, '6406181', 'JOSE', '3', '052', '015', 'A', '8206RFJM', '015', 'AUXILIARES OPERATIVOS', 'MARTIN', 'REYES', 'FERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (793, '7838219', 'ROBER', '3', '058', '000', 'E', '40244IGRA', '000', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'IBAÑEZ', 'GALINDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (794, '8167946', 'ALVARO', '3', '055', '000', 'E', '69971GMA', '000', 'OPERATIVOS PLANTA EXT', '', 'GARCIA', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (795, '11685251', 'RAFAEL', '3', '021', '000', 'E', '87276RHR', '000', 'NO DEFINIDO', '', 'RODRIGUEZ', 'HENAO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (796, '16473572', 'BERNE', '3', '075', '000', 'E', '75597AVBE', '000', 'NO DEFINIDO', 'ENRIQUE', 'ARANGO', 'VIDAL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (797, '17268552', 'JAVIER', '3', '031', '000', 'E', '70577BTJI', '000', 'OPERATIVOS PLANTA EXT', 'IGNACIO', 'BELTRAN', 'TRIANA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (798, '17414234', 'FERNANDO', '3', '054', '003', 'A', '16259CVF', '003', 'OPERATIVOS MANTENIMIENTO', '', 'CAÑON', 'VALERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (799, '17419215', 'ALI', '3', '043', '016', 'A', '21240ALAY', '016', 'DIRECTORES', 'YOVAN', 'AZUERO', 'LOZANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (800, '17420140', 'ALVARO', '3', '021', '000', 'X', '22165CVA', '000', 'NO DEFINIDO', '', 'CAÑON', 'VALERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1228, '17423595', 'YEISON', '1', '021', '002', 'E', '25620APYE', '002', 'NO DEFINIDO', 'EDUARDO', 'ANGEL', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1218, '1006718229', 'ROBERT', '1', '104', '001', 'E', '20254MPRM', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'MAURICIO', 'MANCHAY', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (740, '1121836068', 'ERWIN', '1', '104', '001', 'E', '38093HREF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNANDO', 'HERRERA', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (741, '17288237', 'ABELARDO', '1', '104', '001', 'A', '90262CMA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CARRILLO', 'MEDINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (742, '1004319912', 'IVAN', '1', '104', '001', 'A', '21937MDIA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'MONTES', 'DE AGUA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (743, '80159846', 'BENJAMIN', '1', '104', '001', 'A', '61871RJB', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'RIOS', 'JIMENEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (745, '1123114978', 'JAIVER', '1', '104', '001', 'E', '17003RRJE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ESTIVEN', 'RAMIREZ', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (746, '1122117551', 'MADIAN', '1', '104', '001', 'A', '19576JAMB', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'BRISELIO', 'JIMENEZ', 'ALARCON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (747, '1007399085', 'HEIKER', '1', '104', '001', 'A', '101110CBHD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DANIEL', 'CAMACHO', 'BOADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (748, '1123115890', 'JOSE', '1', '104', '001', 'A', '17915ARJL', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'LUIS', 'ACOSTA', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (749, '19615595', 'RAFAEL', '1', '104', '001', 'A', '17620MVRR', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'RAMON', 'MARTINEZ', 'VAN STRALEM', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (750, '1006826075', 'JONATHAN', '1', '104', '001', 'A', '28100DLJS', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'STIVEN', 'DUCUARA', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (751, '1003087759', 'CARLOS', '1', '104', '001', 'A', '89784SACM', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'MANUEL', 'SOLANO', 'AREVALO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (752, '1005573447', 'HECTOR', '1', '104', '001', 'A', '75472VDH', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'VERGARA', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (754, '74857088', 'NELSON', '1', '104', '001', 'E', '59113GBNF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNANDO', 'GOMEZ', 'BLANCO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (755, '1064981517', 'JANIEN', '1', '104', '001', 'A', '83542PAJF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FIDEL', 'PEREZ', 'ARCIRIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (756, '1064983822', 'EMERSON', '1', '104', '001', 'A', '85847SMED', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'SANCHEZ', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (758, '1121849448', 'YOAN', '1', '104', '001', 'A', '51473PAYE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ESTEBAN', 'PATIÑO', 'ACOSTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (759, '79951026', 'DIEGO', '2', '023', '007', 'A', '53051RSDM', '007', 'NO DEFINIDO', 'MANUEL', 'RIVEROS', 'SANTAMARIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (760, '1121862171', 'CARLOS', '2', '009', '000', 'E', '64196BMCA', '000', 'NO DEFINIDO', 'ARTURO', 'BERNAL', 'MORALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (761, '17119106', 'MARCO', '2', '041', '000', 'E', '21131RBMF', '000', 'NO DEFINIDO', 'FIDEL', 'RIVEROS', 'BAQUERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (757, '19597191', 'ELEDIENER', '1', '104', '001', 'A', '99216PIEE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ENRIQUE', 'PAEZ', 'IBAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (763, '19194455', 'MANUEL', '2', '085', '000', 'E', '96480RBMJ', '000', 'AUXILIARES', 'JOSE', 'RIVEROS', 'BAQUERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (764, '41342149', 'MARIA', '2', '085', '000', 'E', '44174RBMD', '000', 'AUXILIARES', 'DEL ROSARIO', 'RIVEROS', 'BAQUERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (765, '51556311', 'MARIA', '2', '085', '000', 'E', '58336MTM', '000', 'AUXILIARES', '', 'MEDINA', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (766, '1019056420', 'DIANA', '2', '081', '000', 'E', '58445LTDC', '000', 'COORDINADORES', 'CAROLINA', 'LOBATON', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (767, '1049649229', 'HAROLD', '2', '131', '999', 'E', '51254EVHM', '999', 'NO DEFINIDO', 'MAURICIO', 'ESTEPA', 'VEGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (768, '1070603190', 'JONATHAN', '2', '136', '007', 'A', '5215PRJH', '007', 'COORDINADORES', 'HARVEY', 'POVEDA', 'RICO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (769, '13520245', 'EDILBERTO', '2', '042', '000', 'E', '22270LGE', '000', 'NO DEFINIDO', '', 'LOPEZ', 'GUALDRON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (772, '31031907', 'YOR', '3', '027', '000', 'E', '33932VPYM', '000', 'ASISTENTES', 'MARY', 'VARON', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (773, '1122121389', 'ERIKA', '3', '013', '012', 'P', '23414AAEJ', '012', 'AUXILIARES', 'JOHANNA', 'ALARCON', 'APOLINAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (774, '1122648898', 'JASMIN', '3', '014', '000', 'E', '50923PGJ', '000', 'ASISTENTES', '', 'PRADA', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (775, '72208155', 'CRISTOBAL', '3', '110', '000', 'E', '10180RMCA', '000', 'NO DEFINIDO', 'ANTONIO', 'RODRIGUEZ', 'MONTAÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (776, '40334822', 'ALBA', '3', '114', '000', 'E', '36847UMAP', '000', 'ASISTENTES', 'PATRICIA', 'ULLOA', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (777, '1123116041', 'LINA', '3', '100', '000', 'E', '18066SCLD', '000', 'ASISTENTES', 'DAYANNA', 'SARRIA', 'CAPERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (778, '1125476642', 'INGRID', '3', '027', '005', 'P', '78667JUIT', '005', 'ASISTENTES', 'TATIANA', 'JARAMILLO', 'URIBE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (779, '1125179605', 'ERLENDY', '3', '021', '012', 'A', '81630VPEB', '012', 'NO DEFINIDO', 'BELLANID', 'VALENCIA', 'POLANIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (780, '17411199', 'EMILIO', '3', '069', '000', 'E', '13224MVE', '000', 'NO DEFINIDO', '', 'MARIN', 'VARGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (781, '51742339', 'FLOR', '3', '020', '005', 'A', '44364RQFM', '005', 'OPERATIVOS ADMINISTRATIVOS', 'MARIA', 'RAVELO', 'QUINTERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (782, '1006838624', 'LINA', '3', '143', '011', 'A', '40649GJLP', '011', 'NO DEFINIDO', 'PAOLA', 'GUTIERREZ', 'JARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (762, '1122134068', 'EDWIN', '2', '021', '000', 'E', '36093COEF', '000', 'NO DEFINIDO', 'FERNANDO', 'CONDE', 'OROZCO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (839, '1123114695', 'OMAR', '3', '058', '000', 'E', '16720VMOA', '000', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'VILLADA', 'MAHECHA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (840, '1123115108', 'RUBEN', '3', '058', '000', 'E', '17133RMRD', '000', 'OPERATIVOS PLANTA EXT', 'DARIO', 'RUIZ', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (841, '1123115734', 'ARNOLD', '3', '016', '000', 'E', '17759RGA', '000', 'NO DEFINIDO', '', 'RUBIO', 'GARZON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (842, '1123862532', 'YONNY', '3', '021', '000', 'E', '64557SVYA', '000', 'NO DEFINIDO', 'ALEXIS', 'SAENZ', 'VILLEGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (843, '1124217820', 'YEISON', '3', '065', '000', 'E', '19845GMYA', '000', 'NO DEFINIDO', 'ANDRES', 'GOMEZ', 'MORENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (819, '1081785405', 'JAIDER', '3', '058', '000', 'E', '87430DCJE', '000', 'OPERATIVOS PLANTA EXT', 'ENRIQUE', 'DE LA CRUZ', 'CESPEDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (838, '1123114444', 'EDISON', '3', '058', '000', 'E', '16469HME', '000', 'OPERATIVOS PLANTA EXT', '', 'HERNANDEZ', 'MORALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (844, '1124244023', 'DUVAN', '3', '016', '000', 'E', '46048GCDS', '000', 'NO DEFINIDO', 'SNEYDER', 'GUEVARA', 'CARDENAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (845, '1124848880', 'OSMAN', '3', '031', '016', 'A', '50905BCOF', '016', 'OPERATIVOS PLANTA EXT', 'FABIAN', 'BAMBAGUE', 'CHAVES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (846, '97111315659', 'YULISA', '3', '021', '000', 'E', '17684MAYF', '000', 'NO DEFINIDO', 'FERNANDA', 'MARTINEZ', 'AGUIRRE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (847, '11206477', 'FRANK', '3', '058', '000', 'E', '8502BBFS', '000', 'OPERATIVOS PLANTA EXT', 'STIVENSON', 'BRIÑEZ', 'BRIÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (849, '86074579', 'ANDRES', '3', '058', '000', 'E', '76604STAM', '000', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'SALAZAR', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (850, '53095774', 'DIANA', '3', '021', '000', 'E', '97799GVDF', '000', 'NO DEFINIDO', 'FERNANDA', 'GUERRERO', 'VALDERRAMA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (851, '17357825', 'CESAR', '3', '058', '000', 'E', '59850RRCA', '000', 'OPERATIVOS PLANTA EXT', 'AUGUSTO', 'ROJAS', 'REYES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (852, '1070809850', 'WILSON', '3', '055', '000', 'E', '11875HSW', '000', 'OPERATIVOS PLANTA EXT', '', 'HERRERA', 'SILGADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (853, '17641451', 'HOMER', '3', '140', '005', 'A', '43476RTH', '005', 'OPERATIVOS ADMINISTRATIVOS', '', 'RAMIREZ', 'TRUJILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (211, '79188550', 'GUILLERMO', '1', '024', '001', 'E', '90575CPG', '001', 'CONDUCTORES', '', 'CASTRO', 'PRIETO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (212, '7837761', 'JESUS', '1', '029', '001', 'E', '39786MCJA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANTONIO', 'MENDOZA', 'CARDONA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (273, '7838194', 'NESTOR', '1', '030', '001', 'V', '40219HPNJ', '001', 'AUXILIARES OPERATIVOS', 'JULIO', 'HERRERA', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (337, '1122141733', 'YEIMY', '1', '021', '000', 'E', '43758MPYK', '000', 'NO DEFINIDO', 'KATHERINE', 'MARROQUIN', 'PRIETO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (403, '1006658935', 'NIDIA', '1', '027', '001', 'A', '60960RRNJ', '001', 'ASISTENTES', 'JOHANA', 'REYES', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (654, '19617449', 'MANUEL', '1', '104', '001', 'E', '19474JMMS', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'SALVADOR', 'JULIO', 'MESA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (655, '1122650208', 'EDISSON', '1', '104', '001', 'E', '52233BCEJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAVIER', 'BONILLA', 'CASTAÑEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (656, '86054605', 'JAMES', '1', '104', '001', 'E', '56630MJY', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'YESIT', 'MORA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (657, '1122135032', 'YONER', '1', '104', '001', 'E', '37057PCYA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXANDER', 'PIZA', 'CORDOBA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (658, '74348139', 'FRACISCO', '1', '104', '001', 'E', '50164CNF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CASTRO', 'NIÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (739, '1128190601', 'JOSE', '1', '104', '001', 'A', '92626RAJL', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'LUIS', 'RODRIGUEZ', 'AHUMADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (801, '38361600', 'ANGELA', '3', '043', '000', 'E', '63625SRAS', '000', 'DIRECTORES', 'SOFIA', 'SILVA', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (802, '66945678', 'MARCIA', '3', '058', '016', 'A', '47703PRM', '016', 'OPERATIVOS PLANTA EXT', '', 'PANAMEÑO', 'RAMOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (803, '74347807', 'CARLOS', '3', '016', '000', 'E', '49832VRCA', '000', 'NO DEFINIDO', 'ALBERTO', 'VARGAS', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (804, '74845106', 'JESUS', '3', '014', '000', 'E', '47131VJA', '000', 'ASISTENTES', 'ANTONIO', 'VARGAS', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (805, '79636045', 'EDWIN', '3', '112', '003', 'A', '38070DMEO', '003', 'SUPERVISORES', 'OLIMPO', 'DELGADO', 'MENDOZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (806, '83230060', 'ADOLFO', '3', '047', '016', 'A', '32085PVA', '016', 'SUPERVISORES', '', 'PARRA', 'VARGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (807, '85261763', 'WILMAR', '3', '016', '000', 'E', '63788GGWE', '000', 'NO DEFINIDO', 'ENRIQUE', 'GONZALEZ', 'GUERRERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (808, '86005534', 'JAIRO', '3', '058', '000', 'X', '7559BPJ', '000', 'OPERATIVOS PLANTA EXT', '', 'BASTOS', 'PEÑALOZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (809, '86010357', 'JORGE', '3', '047', '000', 'E', '12382CHJ', '000', 'SUPERVISORES', '', 'CORREDOR', 'HINCAPIE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (810, '86011153', 'JOSE', '3', '054', '000', 'E', '13178HGJO', '000', 'OPERATIVOS MANTENIMIENTO', 'ORLANDO', 'HERRERA', 'GALINDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (811, '86013633', 'JOSE', '3', '016', '000', 'E', '15658GCJB', '000', 'NO DEFINIDO', 'BERTULFO', 'GONZALEZ', 'COCA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (812, '86014263', 'LUIS', '3', '049', '000', 'E', '16288AELA', '000', 'OPERATIVOS MANTENIMIENTO', 'ALBERTO', 'AGUIRRE', 'ECHEVERRI', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (813, '86043385', 'JORGE', '3', '117', '003', 'A', '45410SCJA', '003', 'DIRECTORES', 'ALEXANDER', 'SILVA', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (814, '86068662', 'LUIS', '3', '051', '000', 'E', '70687GLJ', '000', 'NO DEFINIDO', 'JARLEY', 'GONZALEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (815, '87451815', 'VICENTE', '3', '055', '000', 'E', '53840DYVG', '000', 'OPERATIVOS PLANTA EXT', 'GERMAN', 'DIAZ', 'YELA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (816, '87948678', 'JAVIER', '3', '055', '000', 'E', '50703CJA', '000', 'OPERATIVOS PLANTA EXT', 'ALFREDO', 'CENTENO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (817, '1006838738', 'JOSE', '3', '016', '000', 'E', '40763MGJG', '000', 'NO DEFINIDO', 'GENTIL', 'MONGE', 'GALINDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (818, '1065905486', 'ALDRITSCH', '3', '058', '000', 'E', '7511PMAF', '000', 'OPERATIVOS PLANTA EXT', 'FERNANDO', 'PARDO', 'MOLINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (820, '1094163398', 'ERWIN', '3', '058', '000', 'E', '65423GE', '000', 'OPERATIVOS PLANTA EXT', '', 'GUERRERO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (822, '1116866067', 'JAVIER', '3', '058', '000', 'E', '68092JLJ', '000', 'OPERATIVOS PLANTA EXT', '', 'JIMENEZ', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (823, '1118197909', 'NORIDA', '3', '015', '000', 'E', '99934CBN', '000', 'NO DEFINIDO', '', 'CANO', 'BURITICA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (824, '1120363799', 'WILLIAM', '3', '058', '000', 'E', '65824CTW', '000', 'OPERATIVOS PLANTA EXT', '', 'CAICEDO', 'TRIANA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (825, '1120364583', 'SULMAN', '3', '050', '000', 'E', '66608GRSA', '000', 'NO DEFINIDO', 'ANTONIO', 'GALLEGO', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (826, '1120365099', 'JULIO', '3', '058', '000', 'E', '67124BMJC', '000', 'OPERATIVOS PLANTA EXT', 'CESAR', 'BACCA', 'MORENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (827, '1120366033', 'JOSE', '3', '052', '000', 'X', '68058SVJG', '000', 'AUXILIARES OPERATIVOS', 'GERLEIN', 'SAAVEDRA', 'VILLAMIL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (828, '1121416929', 'LEONARDO', '3', '049', '000', 'E', '18954MLLA', '000', 'OPERATIVOS MANTENIMIENTO', 'ALIRIO', 'MALAGON', 'LEYVA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (829, '1121841091', 'JUAN', '3', '008', '000', 'E', '43116GLJC', '000', 'NO DEFINIDO', 'CAMILO', 'GALVIZ', 'LOAIZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (830, '1121914869', 'WILSON', '3', '020', '000', 'E', '16894VPW', '000', 'OPERATIVOS ADMINISTRATIVOS', '', 'VALENZUELA', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (831, '1122124797', 'YEISON', '3', '055', '000', 'E', '26822CGYJ', '000', 'OPERATIVOS PLANTA EXT', 'JAVIER', 'CARRILLO', 'GAMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (832, '1122127220', 'JORGE', '3', '116', '003', 'A', '29245ABJL', '003', 'ANALISTAS', 'LEONARDO', 'ANDRADE', 'BOLIVAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (833, '1122129144', 'DUMAR', '3', '116', '016', 'A', '31169RHDI', '016', 'ANALISTAS', 'ISRAEL', 'ROJAS', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (834, '1122129468', 'VICTOR', '3', '055', '000', 'E', '31493CVVA', '000', 'OPERATIVOS PLANTA EXT', 'ALFONSO', 'CALLEJAS', 'VELOZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (835, '1122132047', 'JORGE', '3', '016', '000', 'E', '34072UBJA', '000', 'NO DEFINIDO', 'ARIEL', 'UMBARILA', 'BENAVIDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (836, '1122132739', 'CARLOS', '3', '058', '000', 'E', '34764GTCA', '000', 'OPERATIVOS PLANTA EXT', 'ALBERTO', 'GUTIERREZ', 'TOCARIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (837, '1122647830', 'GUILLERMO', '3', '014', '000', 'X', '49855MLGA', '000', 'ASISTENTES', 'ARMANDO', 'MONTEALEGRE', 'LOZADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (821, '1116444180', 'JHON', '3', '055', '000', 'E', '46205LGJE', '000', 'OPERATIVOS PLANTA EXT', 'EDWARD', 'LOPEZ', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (406, '1006838470', 'NASLY', '1', '073', '002', 'E', '40495VNG', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'GLAVEDIS', 'VIRGUEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (466, '1015477571', 'KAREN', '1', '096', '002', 'E', '79596BHKD', '002', 'NO DEFINIDO', 'DANIELA', 'BERNAL', 'HENDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (498, '1123512702', 'YANIDSAT', '1', '073', '009', 'A', '14727FGY', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'FINO', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (499, '1123115004', 'MARIA', '1', '073', '009', 'A', '17029MGMA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEJANDRA', 'MORA', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (500, '1006693721', 'VIVIANA', '1', '033', '002', 'E', '95746PMVC', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'CATERINE', 'PUENTES', 'MAYORGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1217, '1120473636', 'YEINY', '1', '073', '009', 'E', '75661LVYL', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'LORENA', 'LOMBANA', 'VALLEJO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (527, '1029986025', 'NATALIA', '1', '073', '009', 'X', '88050ALN', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ARANDA', 'LARGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (621, '1065123031', 'ANTONIO', '1', '062', '001', 'E', '25056VCAR', '001', 'NO DEFINIDO', 'RAFAEL', 'VALDES', 'CABARCAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (646, '40330756', 'LUZ', '1', '104', '001', 'E', '32781GRLA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ADELA', 'GOMEZ', 'REALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (660, '1123530038', 'CARLOS', '1', '104', '001', 'E', '32063BMCA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'BUSTOS', 'MARIN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (753, '18235985', 'JOSE', '1', '104', '001', 'A', '38010LRJO', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'OMAR', 'LEON', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1250, '1053332529', 'YESSID', '1', '104', '001', 'A', '34554CSYE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ESNEIDER', 'CARRILLO', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1251, '1006838686', 'YORDAN', '3', '052', '015', 'X', '40711BLY', '015', 'AUXILIARES OPERATIVOS', '', 'BERMUDEZ', 'LEON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1219, '1006718229', 'ROBERT', '3', '058', '999', 'E', '20254MPRM', '999', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'MANCHAY', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1230, '1006797944', 'YIRSLY', '1', '096', '001', 'E', '99969FAYD', '001', 'NO DEFINIDO', 'DAHANA', 'FONTECHA', 'ANDRADE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (502, '1122128543', 'EDISNEY', '1', '021', '002', 'A', '30568MBES', '002', 'NO DEFINIDO', 'SLIAN', 'MARTINEZ', 'BUSTOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1252, '1121879560', 'DELIO', '1', '030', '001', 'E', '81585LCDF', '001', 'AUXILIARES OPERATIVOS', 'FERNANDO', 'LLANOS', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1221, '1006838669', 'JENNY', '1', '073', '009', 'X', '40694GYJA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXANDRA', 'GUTIERREZ', 'YARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1222, '1006779589', 'LUISA', '1', '021', '002', 'E', '81614RALF', '002', 'NO DEFINIDO', 'FERNANDA', 'RODRIGUEZ', 'ABELLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1223, '1000969908', 'SEBASTIAN', '1', '029', '002', 'E', '71933CES', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CASTAÑEDA', 'ESGUERRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1224, '1006779589', 'LUISA', '1', '033', '008', 'X', '81614RBLF', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNANDA', 'RODRIGUEZ', 'BELLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (501, '1120026250', 'ESTEBAN', '1', '033', '008', 'A', '28275GIES', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'SANTIAGO', 'GUZMAN', 'IPUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1231, '1007546727', 'CESAR', '1', '073', '009', 'A', '48752DPCL', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'LUIS', 'DIAZ', 'PAEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1232, '1122119780', 'EDUAR', '1', '073', '009', 'A', '21805BNEK', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'KALETH', 'BARRETO', 'NARVAEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (891, '1121819126', 'RODRIGO', '3', '058', '000', 'E', '21151CARA', '000', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'CARDONA', 'ACOSTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (918, '1116438699', 'EDGAR', '3', '058', '999', 'E', '40724LDER', '999', 'OPERATIVOS PLANTA EXT', 'RODOLFO', 'LIBERATO', 'DELGADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (948, '1109294421', 'DIEGO 		', '3', '058', '999', 'E', '96446CMDA', '999', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'CRUZ 	', 'MONTEALEGRE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (975, '86067413', 'EDUARDO', '3', '058', '000', 'E', '69438HTEE', '000', 'OPERATIVOS PLANTA EXT', 'EFREY', 'HERNANDEZ', 'TAPIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (875, '1120503908', 'ARLEX', '3', '058', '000', 'E', '5933RRAA', '000', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'REYES', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1004, '1123116260', 'ANDERSON', '3', '058', '000', 'E', '18285SGAF', '000', 'OPERATIVOS PLANTA EXT', 'FARID', 'SALCEDO', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1022, '1123115218', 'YEFRIN', '3', '058', '000', 'E', '17243RZYD', '000', 'OPERATIVOS PLANTA EXT', 'DURFAY', 'RIOS', 'ZAPATA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1029, '1122117851', 'JOHN', '3', '058', '000', 'E', '19876RGJJ', '000', 'OPERATIVOS PLANTA EXT', 'JAIRO', 'RODRIGUEZ', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1060, '1234791972', 'CRISTHIAN', '3', '046', '999', 'E', '93997RCCC', '999', 'OPERATIVOS MANTENIMIENTO', 'CAMILO', 'RAMIREZ', 'CASTRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1233, '1082974980', 'JESUS', '3', '058', '999', 'E', '77005MTJM', '999', 'OPERATIVOS PLANTA EXT', 'MIGUEL', 'MIRANDA', 'TUNA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1234, '1123114330', 'WILVER', '3', '058', '016', 'E', '16355BPW', '016', 'OPERATIVOS PLANTA EXT', '', 'BAQUERO', 'PINEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1235, '1121973213', 'JOHANDRI', '3', '058', '016', 'E', '75238VVJJ', '016', 'OPERATIVOS PLANTA EXT', 'JOSE', 'VIVANCO', 'VERGARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1236, '1006772386', 'ANGELA', '3', '096', '005', 'E', '74411MAAP', '005', 'NO DEFINIDO', 'PATRICIA', 'MENDEZ', 'ALMANZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1237, '1082974980', 'JESUS', '3', '058', '016', 'X', '77005MTJM', '016', 'OPERATIVOS PLANTA EXT', 'MIGUEL', 'MIRANDA', 'TUNA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1238, '1120841203', 'YEISON', '3', '058', '016', 'E', '43228DMYS', '016', 'OPERATIVOS PLANTA EXT', 'STIVEN', 'DIAZ', 'MENDOZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1239, '1006777925', 'MICHAEL', '3', '058', '016', 'E', '79950SOME', '016', 'OPERATIVOS PLANTA EXT', 'ESTEBAN', 'SAAVEDRA', 'OCHOA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1229, '1123510868', 'CAREN', '1', '021', '005', 'E', '12893QACY', '005', 'NO DEFINIDO', 'YULIANA', 'QUEVEDO', 'APONTE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1220, '1123512579', 'SURY', '1', '021', '005', 'A', '14604RGSY', '005', 'NO DEFINIDO', 'YONEYI', 'REINA', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (504, '17423595', 'YEISON', '1', '021', '002', 'A', '25620APYE', '002', 'NO DEFINIDO', 'EDUARDO', 'ANGEL', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (111, '17445036', 'ANGEL', '1', '039', '002', 'E', '47061FAAB', '002', 'NO DEFINIDO', 'BENEDICTO', 'FORERO', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (112, '43591285', 'LUZ', '1', '020', '005', 'P', '93310NCLD', '005', 'OPERATIVOS ADMINISTRATIVOS', 'DARY', 'NOREÑA', 'CARDENA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (157, '52532534', 'YANEA', '1', '034', '000', 'E', '34559LBYM', '000', 'NO DEFINIDO', 'MILENA', 'LOPEZ', 'BAQUERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (158, '74751300', 'JAVIER', '1', '031', '001', 'E', '53325MAJ', '001', 'OPERATIVOS PLANTA EXT', '', 'MORENO', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (159, '74846079', 'ARISTOBULO', '1', '072', '008', 'A', '48104BMA', '008', 'SUPERVISORES', '', 'BELTRAN', 'MORA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (160, '78320907', 'FREDY', '1', '029', '001', 'E', '22932AHFA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANTONIO', 'AVILEZ', 'HOYOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (161, '80659063', 'LUIS', '1', '072', '002', 'E', '61088PPLC', '002', 'SUPERVISORES', 'CARLOS', 'PAREDES', 'PIZZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (162, '83087127', 'JOSE', '1', '089', '001', 'E', '89152CPJ', '001', 'SUPERVISORES', '', 'CORTES', 'PERDOMO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (163, '93065010', 'WENCESLADO', '1', '029', '002', 'E', '67035ECW', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ESPINOSA', 'CALDERON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1225, '1007221883', 'ISABEL', '1', '128', '004', 'X', '23908RRI', '004', 'COORDINADORES', '', 'RAMIREZ', 'RIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1226, '1006779061', 'VALENTINA', '1', '073', '009', 'X', '81086CGV', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CESPEDES', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (503, '1122141570', 'BRIYID', '1', '021', '002', 'E', '43595AGBY', '002', 'NO DEFINIDO', 'YULIETH', 'AVILA', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1253, '38361641', 'SANDRA', '1', '021', '007', 'A', '63666CASM', '007', 'NO DEFINIDO', 'MILENA', 'CASTRO', 'ACOSTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (848, '86085633', 'YORGE', '3', '055', '016', 'A', '87658CEYA', '016', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'CUBILLOS', 'ESPITIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1241, '1121919092', 'JENNINSON', '3', '054', '999', 'E', '21117CDJ', '999', 'OPERATIVOS MANTENIMIENTO', '', 'CRISPIN', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (964, '1120365242', 'GUSTAVO', '3', '058', '999', 'E', '67267BRGA', '999', 'OPERATIVOS PLANTA EXT', 'ADOLFO', 'BAQUERO', 'RUBIO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1242, '1000047346', 'JHON', '3', '058', '999', 'E', '49371GZJA', '999', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'GOMEZ', 'ZAMBRANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1243, '1123116401', 'NELSON', '3', '058', '016', 'E', '18426MVNM', '016', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'MORA', 'VARON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1244, '1000047346', 'JHON', '3', '058', '016', 'E', '49371GZJA', '016', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'GOMEZ', 'ZAMBRANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1245, '1115790149', 'ANDRES', '3', '058', '016', 'X', '92174RGAM', '016', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'RIOS', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (505, '1123114895', 'CLAUDIA', '1', '073', '009', 'A', '16920AVCP', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'PATRICIA', 'AYALA', 'VEGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (506, '1123114379', 'DELIDA', '1', '073', '002', 'E', '16404RMD', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ROA', 'MESA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1240, '1115851359', 'VALENTINA', '1', '073', '009', 'A', '53384GCV', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'GUTIERREZ', 'CALLEJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (566, '4655193', 'RESULIO', '1', '063', '000', 'E', '57218BAR', '000', 'NO DEFINIDO', '', 'BANGUERO', 'ARARAT', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (587, '1118167546', 'JEISON', '1', '104', '001', 'A', '69571BBJA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEJANDRO', 'BEJARANO', 'BOTIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (588, '17417534', 'WILSON', '1', '062', '001', 'E', '19559PMWE', '001', 'NO DEFINIDO', 'ENRIQUE', 'PALOMINO', 'MORA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (589, '1104129413', 'LUIS', '1', '062', '001', 'E', '31438VOLE', '001', 'NO DEFINIDO', 'EDUARDO', 'VANEGAS', 'OLIVERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (590, '17414770', 'GERARDO', '1', '062', '001', 'E', '16795RRG', '001', 'NO DEFINIDO', '', 'ROJAS', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (591, '91325367', 'DADVISON', '1', '062', '001', 'E', '27392FCDM', '001', 'NO DEFINIDO', 'MANUEL', 'FLOREZ', 'CARDENAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (592, '17416245', 'FRANCISCO', '1', '062', '001', 'E', '18270BRF', '001', 'NO DEFINIDO', '', 'BRICEÑO', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (593, '17418415', 'WILSON', '1', '062', '001', 'E', '20440PCW', '001', 'NO DEFINIDO', '', 'PACHON', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (595, '1122121853', 'JOSE', '1', '062', '001', 'E', '23878RMJY', '001', 'NO DEFINIDO', 'YELNER', 'RICO', 'MACHADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (596, '1120871067', 'BAIRON', '1', '079', '001', 'E', '73092GABJ', '001', 'NO DEFINIDO', 'JAVIER', 'GARCIA', 'AGUIRRE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (597, '94502808', 'JIMY', '1', '062', '001', 'E', '4833AJ', '001', 'NO DEFINIDO', '', 'ABONIA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (598, '17421577', 'JOSE', '1', '062', '001', 'E', '23602AUJR', '001', 'NO DEFINIDO', 'ROBINSON', 'ASPRILLA', 'URRUTIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (599, '17418393', 'OSCAR', '1', '062', '001', 'E', '20418LAO', '001', 'NO DEFINIDO', '', 'LARA', 'AGUDELO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (600, '1003100571', 'JOSE', '1', '062', '001', 'E', '2596MFJO', '001', 'NO DEFINIDO', 'OSVADIS', 'MARTINEZ', 'FAJARDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (81, '31031907', 'YOR', '1', '124', '005', 'E', '33932VPYM', '005', 'NO DEFINIDO', 'MARY', 'VARON', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (507, '1128187143', 'LUIS', '1', '073', '002', 'E', '89168AZLD', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'ALCAZAR', 'ZUÑIGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (508, '1027947140', 'CARLOS', '1', '073', '009', 'A', '49165FGCA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALBERTO', 'FUENTES', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (601, '17420447', 'ALEXANDER', '1', '062', '001', 'E', '22472RBA', '001', 'NO DEFINIDO', '', 'RODRIGUEZ', 'BARRERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (602, '1122128102', 'JOHATHAN', '1', '062', '001', 'E', '30127LAJ', '001', 'NO DEFINIDO', '', 'LONGA', 'ASPRILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (603, '86071038', 'LUIS', '1', '062', '001', 'E', '73063CALH', '001', 'NO DEFINIDO', 'HERNANDO', 'CARDONA', 'ACOSTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (604, '1045234938', 'LUIS', '1', '062', '001', 'E', '36963GPLF', '001', 'NO DEFINIDO', 'FERNANDO', 'GONZALEZ', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (605, '1123115161', 'FABIAN', '1', '104', '001', 'E', '17186PRF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'PINEDA', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (606, '1123114855', 'JHON', '1', '104', '001', 'E', '16880JCJE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ESTEBAN', 'JIMENEZ', 'CHAVEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (607, '1120576318', 'JEFFERSON', '1', '104', '001', 'E', '78343NAJA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDREY', 'NIÑO', 'AGUIRRE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (608, '9737074', 'RAUL', '1', '104', '001', 'E', '39099ZPR', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ZARAZA', 'PEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (609, '1081799860', 'EVER', '1', '104', '001', 'E', '101885AFEL', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'LUIS', 'ARIAS', 'FIGUEROA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (610, '85261777', 'MILTON', '1', '104', '001', 'A', '63802GJMJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JULIO', 'GONZALEZ', 'JULIO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (612, '1098100388', 'EDWAR', '1', '062', '001', 'E', '2413BSEM', '001', 'NO DEFINIDO', 'MAURICIO', 'BERMUDEZ', 'SILVA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (613, '71195504', 'YEISON', '1', '062', '001', 'E', '97529LLYE', '001', 'NO DEFINIDO', 'ESTID', 'LOPEZ', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (614, '1120384087', 'NELSON', '1', '104', '001', 'E', '86112GAND', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'GUTIERREZ', 'ARTEAGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (615, '74348139', 'FRANCISCO', '1', '062', '001', 'E', '50164CNF', '001', 'NO DEFINIDO', '', 'CASTRO', 'NIÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (616, '17420170', 'KIRK', '1', '062', '001', 'E', '22195GHKA', '001', 'NO DEFINIDO', 'ALAIN', 'GOMEZ', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (617, '19621155', 'JAVIER', '1', '062', '001', 'E', '23180GFJF', '001', 'NO DEFINIDO', 'FRANCISCO', 'GUTIERREZ', 'FONTALVO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (618, '7121398', 'JHON', '1', '062', '001', 'E', '23423GRJF', '001', 'NO DEFINIDO', 'FREDY', 'GANTIVA', 'RODRÍGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (619, '17420931', 'PEDRO', '1', '062', '001', 'E', '22956RSPJ', '001', 'NO DEFINIDO', 'JESUS', 'RUIZ', 'SOTO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (620, '72054749', 'YAMITH', '1', '062', '001', 'E', '56774CVY', '001', 'NO DEFINIDO', '', 'CHACON', 'VERGEL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (622, '7062566', 'RODRIGO', '1', '062', '001', 'E', '64591MAR', '001', 'NO DEFINIDO', '', 'MECHE', 'ADAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (623, '1122116853', 'ANDRES', '1', '062', '001', 'E', '18878ZMA', '001', 'NO DEFINIDO', '', 'ZARTA', 'MONCALEANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (624, '17419798', 'ALEXANDER', '1', '104', '001', 'E', '21823ZMA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'ZARTA', 'MONCALEANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (625, '1069582221', 'HAROLD', '1', '104', '001', 'E', '84246PCHS', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'STEVEN', 'PULIDO', 'CARRILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (626, '1117323747', 'FAUSTO', '1', '104', '001', 'E', '25772BRFA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXIS', 'BETANCOURTH', 'RIVAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (627, '17423182', 'LUIS', '1', '062', '001', 'E', '25207GRLE', '001', 'NO DEFINIDO', 'ERNESTO', 'GUSMAN', 'RESTREPO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (628, '98196303', 'LUIS', '1', '062', '001', 'E', '98328QVLA', '001', 'NO DEFINIDO', 'ALEXANDER', 'QUENGUAN', 'VASQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (629, '5075470', 'ASDRUBAL', '1', '104', '001', 'E', '77495MGAR', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'RAFAEL', 'MELENDEZ', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (630, '1106399541', 'LUIS', '1', '104', '001', 'E', '101566DRLA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANGEL', 'DIAZ', 'RICO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (631, '1006776869', 'JULIO', '1', '062', '001', 'E', '78894BCJA', '001', 'NO DEFINIDO', 'ALBERTO', 'BARON', 'CARREÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (632, '17422623', 'DUMAR', '1', '104', '001', 'E', '24648NRDA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALBERTO', 'NIÑO', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (633, '1122139434', 'MARLON', '1', '104', '001', 'E', '41459MAMD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DUVAN', 'MORALES', 'ARBOLEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (634, '1123115566', 'DUVAN', '1', '104', '001', 'E', '17591CIDF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FELIPE', 'CARRILLO', 'IZQUIERDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (635, '1116207904', 'CRISTIAN', '1', '104', '001', 'E', '9929RCCC', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAMILO', 'ROJAS', 'CUELLAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (636, '87948648', 'FRANCISCO', '1', '062', '001', 'E', '50673TFM', '001', 'NO DEFINIDO', 'MARINO', 'TORRES', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (637, '1125184551', 'JHONATAN', '1', '104', '001', 'E', '86576MCJS', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'STIVEN', 'MARTINEZ', 'COBALERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (638, '16892752', 'ROSENDO', '1', '062', '001', 'E', '94777OR', '001', 'NO DEFINIDO', '', 'OCORO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (639, '1050398058', 'CESAR', '1', '062', '001', 'E', '100083RBCA', '001', 'NO DEFINIDO', 'AGUSTO', 'RIZO', 'BENAVIDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (640, '1123116498', 'JOSE', '1', '104', '001', 'E', '18523GRJD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DAVID', 'GARCIA', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (641, '1069900257', 'YEISON', '1', '104', '001', 'E', '2282CBY', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'CHALA', 'BEJARANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (642, '1123114392', 'LUIS', '1', '104', '001', 'E', '16417ORLG', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'GUILLERMO', 'ORTEGA', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (594, '14699484', 'FELIX', '1', '062', '001', 'E', '101509ACFE', '001', 'NO DEFINIDO', 'ESTEBAN', 'ASPRILLA', 'CACERES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (643, '17419959', 'ALFREDO', '1', '104', '001', 'E', '21984GMAA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALFONSO', 'GARCIA', 'MORA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (644, '17417921', 'JAIRO', '1', '062', '001', 'E', '19946EFJH', '001', 'NO DEFINIDO', 'HUMBERTO', 'ESTEPA', 'FORERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (509, '1120473636', 'YEINY', '1', '073', '009', 'A', '75661LVYL', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'LORENA', 'LOMBANA', 'VALLEJO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (510, '1084791483', 'TIBISAY', '1', '073', '009', 'A', '93508PLT', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'PITRE', 'LAGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (511, '1121870996', 'MARIA', '1', '033', '008', 'A', '73021AMF', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNANDA', 'ANZOLA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (512, '1123086261', 'GLADYS', '1', '033', '008', 'A', '88286CMGY', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'YOLANDA', 'CARVAJAL', 'MENDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (513, '1084789074', 'JULIETH', '1', '073', '009', 'A', '91099BAJP', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'PAOLA', 'BOLAÑO', 'ARIZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (514, '1098100371', 'JENYFER', '1', '033', '008', 'P', '2396RDJA', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEJANDRA', 'ROJAS', 'DUARTE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (515, '1122126576', 'YENIFER', '1', '027', '001', 'E', '28601BCYM', '001', 'ASISTENTES', 'MARCELA', 'BERNAL', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (516, '1006878479', 'EVELIN', '1', '073', '009', 'A', '80504MMEJ', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAENI', 'MUÑOZ', 'MUR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (517, '1000160932', 'YURY', '1', '027', '002', 'A', '62957GOYN', '002', 'ASISTENTES', 'NAYELLY', 'GUALTEROS', 'OSPINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (854, '93421465', 'HECTOR', '3', '058', '000', 'X', '23490VMH', '000', 'OPERATIVOS PLANTA EXT', '', 'VILLARREAL', 'MANRIQUE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (855, '1121901125', 'ARNOL', '3', '058', '000', 'E', '3150LOAE', '000', 'OPERATIVOS PLANTA EXT', 'ESTIBEN', 'LOPEZ', 'OSORIO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (856, '1122131465', 'LUIS', '3', '027', '000', 'E', '33490MBLB', '000', 'ASISTENTES', 'BERTULFO', 'MARIN', 'BALLEN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (857, '9499110', 'WILLIAM', '3', '058', '000', 'E', '101135HMW', '000', 'OPERATIVOS PLANTA EXT', '', 'HERNANDEZ', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (858, '1121907918', 'EDWIN', '3', '021', '000', 'E', '9943CSEA', '000', 'NO DEFINIDO', 'ANTONIO', 'CEBALLOS', 'SOLANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (859, '1094368159', 'RAMIRO', '3', '049', '000', 'X', '70184SPR', '000', 'OPERATIVOS MANTENIMIENTO', '', 'SANTAFE', 'PARADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (950, '1119888077', 'JEISSON', '3', '058', '999', 'E', '90102GJE', '999', 'OPERATIVOS PLANTA EXT', 'ENRIQUE', 'GAHONA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (532, '1123114524', 'JORGE', '1', '088', '003', 'E', '16549BAJA', '003', 'NO DEFINIDO', 'ANDRES', 'BOCANEGRA', 'ARTEAGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (533, '16435722', 'FREDY', '1', '088', '003', 'E', '37747CRF', '003', 'NO DEFINIDO', '', 'CARDONA', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (534, '1124825227', 'WILLIAM', '1', '090', '001', 'A', '27252AGWY', '001', 'NO DEFINIDO', 'YECID', 'ARREDONDO', 'GAMBOA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (536, '1234788687', 'JEISON', '1', '095', '000', 'E', '90712BCJS', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'STIVEN', 'BAQUIRO', 'CHICO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (537, '5459456', 'HERIBERTO', '1', '095', '000', 'E', '61481BVH', '000', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'BACA', 'VEGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (538, '17287753', 'ISIDRO', '1', '095', '017', 'A', '89778GPI', '017', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'GARZON', 'PENAGOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (539, '1122119449', 'OLGA', '1', '073', '009', 'A', '21474ROOL', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'LUCIA', 'RIVEROS', 'ORTEGA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (540, '39760134', 'AYDEE', '1', '029', '001', 'E', '62159QOAO', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'OLAVE', 'QUIÑONES', 'ORDOÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (541, '39008924', 'CANDIDA', '1', '033', '002', 'E', '10949MCCR', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ROSA', 'MORENO', 'CARPIO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (861, '1032469690', 'JAMES', '3', '058', '000', 'E', '71715MPJA', '000', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'MOLINA', 'PAEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (862, '17420760', 'ALEXANDER', '3', '058', '000', 'E', '22785LCA', '000', 'OPERATIVOS PLANTA EXT', '', 'LOPEZ', 'CARDENAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (863, '11229898', 'SANTOS', '3', '058', '000', 'E', '31923GRSR', '000', 'OPERATIVOS PLANTA EXT', 'RAMON', 'GOMEZ', 'ROCHA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (864, '1121836833', 'CARLOS', '3', '083', '000', 'E', '38858CPCA', '000', 'NO DEFINIDO', 'ANDRES', 'CIFUENTES', 'PRECIADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (865, '17420510', 'ALVARO', '3', '055', '000', 'E', '22535CA', '000', 'OPERATIVOS PLANTA EXT', '', 'CAÑON', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (866, '1052407054', 'YULI', '3', '021', '000', 'E', '9079RCYJ', '000', 'NO DEFINIDO', 'JASBLEIDY', 'RONDEROS', 'CANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (518, '1122120878', 'ALEXANDRA', '1', '073', '009', 'A', '22903OGA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'OBANDO', 'GIRALDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (519, '1122116022', 'JOHAN', '1', '073', '009', 'A', '18047RAJF', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'FELIPE', 'RUIZ', 'AGUDELO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (520, '1122124507', 'LUZ', '1', '073', '009', 'E', '26532AQLM', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'MAYERLI', 'AGUDELO', 'QUEVEDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (521, '1122122966', 'YURI', '1', '021', '002', 'A', '24991RRYA', '002', 'NO DEFINIDO', 'ALEJANDRA', 'ROMERO', 'RINCON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (522, '1124242936', 'YUVY', '1', '021', '002', 'A', '44961MVYA', '002', 'NO DEFINIDO', 'ANDREA', 'MAHECHA', 'VALENCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (523, '1030599614', 'REINA', '1', '021', '007', 'A', '101639AARL', '007', 'NO DEFINIDO', 'LUCIA', 'AGUJA', 'ASCENCIO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (524, '1123533687', 'KATHERINE', '1', '073', '009', 'A', '35712GCK', '009', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'GAMEZ', 'CESPEDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (526, '1006902643', 'KEYNY', '1', '073', '009', 'A', '4668CSKD', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'DANIEL', 'CASTRO', 'SIERRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (528, '1122135370', 'JESUS', '1', '073', '009', 'A', '37395GMJA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ADELMO', 'GOMEZ', 'MOSQUERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (860, '17420398', 'NEDIER', '3', '058', '000', 'E', '22423HANS', '000', 'OPERATIVOS PLANTA EXT', 'SINEY', 'HINCAPIE', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (529, '17286025', 'GUSTAVO', '1', '095', '017', 'P', '88050GPG', '017', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'GARZON', 'PENAGOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (867, '1121823601', 'DIEGO', '3', '065', '000', 'E', '25626CUDF', '000', 'NO DEFINIDO', 'FERNANDO', 'CAMACHO', 'URUEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (868, '7838138', 'VIONNEY', '3', '058', '000', 'E', '40163VPV', '000', 'OPERATIVOS PLANTA EXT', '', 'VARON', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (870, '1121869274', 'CESAR', '3', '058', '000', 'E', '71299MSCE', '000', 'OPERATIVOS PLANTA EXT', 'ESNEIDER', 'MADERO', 'SANABRIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (871, '1121931948', 'DUVIER', '3', '021', '000', 'E', '33973TSDS', '000', 'NO DEFINIDO', 'STIVEN', 'TAMAYO', 'SABOGAL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (872, '1123114785', 'JULIAN', '3', '058', '000', 'X', '16810PHJD', '000', 'OPERATIVOS PLANTA EXT', 'DAVID', 'PARRA', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (530, '1078368777', 'LUIS', '1', '024', '017', 'A', '70802RTLA', '017', 'CONDUCTORES', 'ALEJANDRO', 'RIVAS', 'TRIANA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (531, '1120499071', 'FELIX', '1', '097', '002', 'E', '101096MOFO', '002', 'NO DEFINIDO', 'OCTAVIO', 'MORENO', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1160, '6407157', 'WILLIAM', '3', '058', '999', 'E', '9182RFWA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'REYES', 'FERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1136, '1123115111', 'JAIR', '3', '058', '999', 'E', '17136RCJA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'ROJAS', 'CHAVEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1161, '1123511714', 'JOHN', '3', '031', '999', 'E', '13739MPJA', '999', 'OPERATIVOS PLANTA EXT', 'ARLEY', 'MEDINA', 'PUENTES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1162, '1006823065', 'ANDREA', '3', '130', '015', 'A', '25090MPAN', '015', 'SUPERVISORES', 'NATALIA', 'MOSQUERA', 'PERDOMO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1137, '1006776756', 'BRAYAN', '3', '054', '003', 'A', '78781OHBS', '003', 'OPERATIVOS MANTENIMIENTO', 'SMITH', 'ORTEGA', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1138, '1006701714', 'ERICK', '3', '058', '999', 'E', '3739RSED', '999', 'OPERATIVOS PLANTA EXT', 'DUVAIT', 'RODRIGUEZ', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1139, '1006779934', 'LUISA', '3', '027', '016', 'A', '81959CALF', '016', 'ASISTENTES', 'FERNANDA', 'CERA', 'ATEHORTUA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1119, '1005690575', 'JORGE', '3', '031', '016', 'A', '92600VRJA', '016', 'OPERATIVOS PLANTA EXT', 'ANTONIO', 'VILLALOBOS', 'RIAÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1120, '1052416137', 'ANGELA', '3', '130', '999', 'E', '18162GBAD', '999', 'SUPERVISORES', 'DAYANA', 'GALINDO', 'BARRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1167, '1006858085', 'CRISTIAN', '3', '096', '999', 'E', '60110PSCF', '999', 'NO DEFINIDO', 'FELIPE', 'PIÑEROS', 'SARMIENTO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1168, '1062355319', 'CAMILO', '3', '021', '999', 'E', '57344VPCA', '999', 'NO DEFINIDO', 'ANDRES', 'VILORIA', 'PEDROZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1169, '1120839879', 'STHEFANNY', '3', '021', '999', 'E', '41904AVSA', '999', 'NO DEFINIDO', 'ALEXANDRA', 'ARENAS', 'VELASQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1132, '1122116683', 'WILMER', '3', '031', '999', 'E', '18708MW', '999', 'OPERATIVOS PLANTA EXT', '', 'MORERA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1170, '1079184819', 'CRISTIAN', '3', '058', '999', 'E', '86844CLCF', '999', 'OPERATIVOS PLANTA EXT', 'FERNANDO', 'CORDOBA', 'LIZCANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1171, '1122125402', 'EDISNOVER', '3', '058', '999', 'E', '27427VCE', '999', 'OPERATIVOS PLANTA EXT', '', 'VALENCIA', 'CANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1172, '1063950016', 'DUBAN', '3', '058', '999', 'E', '52041MGDJ', '999', 'OPERATIVOS PLANTA EXT', 'JESUS', 'MONTERO', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1173, '1010131201', 'DANIEL', '3', '058', '999', 'E', '33226AGDA', '999', 'OPERATIVOS PLANTA EXT', 'ANDREY', 'AGUIRRE', 'GALVIS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1174, '1087786215', 'KEVIN', '3', '058', '999', 'E', '88240PVKE', '999', 'OPERATIVOS PLANTA EXT', 'ESTEBAN', 'PEÑA', 'VALENCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1176, '1115853757', 'JENIFER', '3', '021', '999', 'E', '55782MMJS', '999', 'NO DEFINIDO', 'SOLANYI', 'MENDIVELSO', 'MORENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (542, '21088082', 'NOHORA', '1', '073', '002', 'E', '90107LCNE', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'EMILCE', 'LEON', 'CARDENAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1112, '1007546727', 'CESAR', '3', '058', '999', 'E', '48752DPCL', '999', 'OPERATIVOS PLANTA EXT', 'LUIS', 'DIAZ', 'PAEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1117, '1193130794', 'FARDEY', '3', '058', '999', 'E', '32819LVF', '999', 'OPERATIVOS PLANTA EXT', '', 'LASSO', 'VALDERRAMA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1118, '11275841', 'WALTER', '3', '058', '016', 'A', '77866LTWA', '016', 'OPERATIVOS PLANTA EXT', 'ANTONIO', 'LOPEZ', 'TABARES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1121, '1123117506', 'YOVANIS', '3', '049', '003', 'A', '19531BHYA', '003', 'OPERATIVOS MANTENIMIENTO', 'ALEXIS', 'BARROSO', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1150, '1123116401', 'NELSON', '3', '058', '016', 'A', '18426MVNM', '016', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'MORA', 'VARON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1122, '1123116616', 'MARTHA', '3', '100', '003', 'A', '18641LNMY', '003', 'ASISTENTES', 'YURANIS', 'LOPEZ', 'NOREÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1123, '86085972', 'NELSON', '3', '021', '999', 'E', '87997SNA', '999', 'NO DEFINIDO', 'ALEJANDRO', 'SANCHEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1124, '1006796762', 'ARLEY', '3', '096', '999', 'E', '98787JAAF', '999', 'NO DEFINIDO', 'FERNANDO', 'JIMENEZ', 'ABELLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1125, '1006779702', 'JULIAN', '3', '058', '016', 'A', '81727PMJF', '016', 'OPERATIVOS PLANTA EXT', 'FELIPE', 'PINZON', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1126, '1056769935', 'JHON', '3', '058', '999', 'E', '71960GGJL', '999', 'OPERATIVOS PLANTA EXT', 'LEIDER', 'GUZMAN', 'GALEANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1127, '1003624974', 'FEDERICO', '3', '058', '999', 'E', '26999VCFF', '999', 'OPERATIVOS PLANTA EXT', 'FABIAN', 'VARGAS', 'CASTILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1128, '1123432549', 'KEVIN', '3', '058', '999', 'E', '34574HBKD', '999', 'OPERATIVOS PLANTA EXT', 'DUVAN', 'HERRERA', 'BARRAGAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1129, '1123085690', 'GABRIEL', '3', '058', '999', 'E', '87715GAG', '999', 'OPERATIVOS PLANTA EXT', '', 'GUTIERREZ', 'APONTE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1131, '1123116641', 'ROBINSON', '3', '058', '999', 'E', '18666CARM', '999', 'OPERATIVOS PLANTA EXT', 'MANUEL', 'CASTRO', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1133, '1123115647', 'DIEGO', '3', '058', '016', 'A', '17672PVDA', '016', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'PEÑA', 'VARELA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1152, '1123114330', 'WILVER', '3', '058', '016', 'A', '16355BPW', '016', 'OPERATIVOS PLANTA EXT', '', 'BAQUERO', 'PINEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1134, '1123115899', 'FRANK', '3', '058', '999', 'E', '17924DPFS', '999', 'OPERATIVOS PLANTA EXT', 'SANTIAGO', 'DELGADO', 'PINTO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1135, '1122652148', 'WILMER', '3', '076', '016', 'A', '54173RLWE', '016', 'COORDINADORES', 'ELIECER', 'ROMERO', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1140, '1121146332', 'JOSE', '3', '058', '999', 'E', '48357MJJA', '999', 'OPERATIVOS PLANTA EXT', 'AGUSTIN', 'MOLINA', 'JIMENEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1141, '1122239747', 'MARLOS', '3', '031', '999', 'E', '41772YFMS', '999', 'OPERATIVOS PLANTA EXT', 'STEVEN', 'YEPES', 'FLORES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1142, '1022930497', 'JEIDER', '3', '058', '999', 'E', '32522MVJA', '999', 'OPERATIVOS PLANTA EXT', 'ALEJANDRO', 'MORA', 'VARGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1144, '1000158979', 'DEYVHID', '3', '058', '999', 'E', '61004BPDF', '999', 'OPERATIVOS PLANTA EXT', 'FELIPE', 'BARRAGAN', 'PAREDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1145, '1006838515', 'ROBERTO', '3', '058', '999', 'E', '40540VRR', '999', 'OPERATIVOS PLANTA EXT', '', 'VILLALOBOS', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1146, '1060586244', 'ADRIAN', '3', '058', '999', 'E', '88269RRA', '999', 'OPERATIVOS PLANTA EXT', '', 'RUIZ', 'RIVERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1147, '1122146037', 'MIGUEL', '3', '058', '999', 'E', '48062VRME', '999', 'OPERATIVOS PLANTA EXT', 'EDUARDO', 'VILLALOBOS', 'RIAÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1148, '1120500027', 'RUBEN', '3', '058', '999', 'E', '2052PTRD', '999', 'OPERATIVOS PLANTA EXT', 'DARIO', 'PEÑA', 'TILANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1149, '1122139565', 'JHON', '3', '058', '999', 'E', '41590GRJA', '999', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'GUTIERREZ', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1151, '1007294800', 'JONATHAN', '3', '058', '999', 'E', '96825HMJF', '999', 'OPERATIVOS PLANTA EXT', 'FELIPE', 'HERNANDEZ', 'MEJIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1153, '1006838662', 'JUAN', '3', '118', '003', 'A', '40687RNJC', '003', 'OPERATIVOS MANTENIMIENTO', 'CAMILO', 'RAMIREZ', 'NOGUERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1154, '1121944108', 'ERIK', '3', '046', '999', 'E', '46133SNEA', '999', 'OPERATIVOS MANTENIMIENTO', 'ALEXANDER', 'SANABRIA', 'NAVAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1155, '1019023147', 'WILSON', '3', '021', '999', 'E', '25172RPWS', '999', 'NO DEFINIDO', 'SEBASTIAN', 'RONDON', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1156, '1019023149', 'OSCAR', '3', '021', '999', 'E', '25174RPOJ', '999', 'NO DEFINIDO', 'JAVIER', 'RONDON', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1157, '86085972', 'NELSON', '3', '135', '003', 'A', '87997SNA', '003', 'ANALISTAS', 'ALEJANDRO', 'SANCHEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1158, '1002721425', 'LEYDY', '3', '021', '999', 'E', '23450RGLY', '999', 'NO DEFINIDO', 'YECENIA', 'RAMIREZ', 'GAMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1159, '1006863053', 'OSCAR', '3', '118', '003', 'A', '65078SQOE', '003', 'OPERATIVOS MANTENIMIENTO', 'EDUARDO', 'SANTANILLA', 'QUINTERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1163, '1123115517', 'DIDIER', '3', '058', '999', 'E', '17542CADA', '999', 'OPERATIVOS PLANTA EXT', 'ALEXIS', 'CERA', 'ATEHORTUA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1164, '1122508447', 'CARLOS', '3', '058', '999', 'E', '10472GCA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'GOMEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1165, '1120838807', 'MARIA', '3', '021', '999', 'E', '40832MGMJ', '999', 'NO DEFINIDO', 'JOSE', 'MAHECHA', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1166, '1123531569', 'JOSE', '3', '139', '003', 'A', '33594RYJM', '003', 'NO DEFINIDO', 'MAIRON', 'RUBIANO', 'YATE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1175, '1123560144', 'ANDRES', '3', '052', '015', 'A', '62169ADAA', '015', 'AUXILIARES OPERATIVOS', 'ALBERTO', 'AYALA', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1197, '1120361996', 'KEVIN', '3', '058', '016', 'A', '64021CRKD', '016', 'OPERATIVOS PLANTA EXT', 'DAVID', 'CARTAGENA', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1198, '1006838441', 'LUIS', '3', '058', '016', 'A', '40466SZLH', '016', 'OPERATIVOS PLANTA EXT', 'HUMBERTO', 'SAAVEDRA', 'ZARATE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1191, '1027943550', 'NICOLE', '3', '021', '005', 'A', '45575BMNA', '005', 'NO DEFINIDO', 'ANDREA', 'BALANTA', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (119, '40397487', 'LUZ', '1', '020', '005', 'A', '99512ZTLE', '005', 'OPERATIVOS ADMINISTRATIVOS', 'ESTELLA', 'ZARATE', 'TRIANA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (155, '40272218', 'HERCILIA', '1', '030', '002', 'E', '74243AVH', '002', 'AUXILIARES OPERATIVOS', '', 'AYALA', 'VASQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1199, '1122144114', 'BAIRON', '3', '058', '999', 'E', '46139TTBS', '999', 'OPERATIVOS PLANTA EXT', 'STIVEN', 'TRIVIÑO', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (272, '1120500230', 'EDWIN', '1', '031', '002', 'E', '2255GCEL', '002', 'OPERATIVOS PLANTA EXT', 'LEONARDO', 'GARZON', 'CONTRERAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (303, '80927256', 'WILLIAN', '1', '095', '999', 'E', '29281SPW', '999', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'SOLER', 'PULIDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (64, '1122139206', 'TARIN', '1', '021', '005', 'E', '41231GRTT', '005', 'NO DEFINIDO', 'TATIANA', 'GUARIN', 'ROZO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (332, '1123116186', 'JOSE', '1', '031', '001', 'E', '18211GAJN', '001', 'OPERATIVOS PLANTA EXT', 'NICODEMUS', 'GUTIERREZ', 'ARDILA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1200, '1120838807', 'MARIA', '3', '085', '005', 'A', '40832MGMJ', '005', 'AUXILIARES', 'JOSE', 'MAHECHA', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (204, '98686714', 'MANUEL', '1', '033', '002', 'E', '88739TTMD', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'DE JESUS', 'TORRES', 'TORO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (873, '1123114786', 'JUAN', '3', '058', '000', 'X', '16811PHJC', '000', 'OPERATIVOS PLANTA EXT', 'CAMILO', 'PARRA', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (874, '1123114837', 'VICTOR', '3', '046', '003', 'V', '16862CMVA', '003', 'OPERATIVOS MANTENIMIENTO', 'ALFONSO', 'CORTES', 'MOLINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (336, '1122119953', 'JOHANNA', '1', '021', '000', 'E', '21978HCJA', '000', 'NO DEFINIDO', 'ALEXANDRA', 'HERNANDEZ', 'CARDONA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (355, '1120501574', 'MARIBEL', '1', '030', '001', 'E', '3599VGM', '001', 'AUXILIARES OPERATIVOS', '', 'VILLAMIL', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1178, '1000226435', 'MIGUEL', '3', '058', '999', 'E', '28460CBMA', '999', 'OPERATIVOS PLANTA EXT', 'ANGEL', 'CORTES', 'BASTO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1179, '1122120970', 'HAROLD', '3', '058', '016', 'A', '22995CHJ', '016', 'OPERATIVOS PLANTA EXT', 'JHONDANY', 'CRUZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1130, '1121836068', 'ERWIN', '3', '058', '999', 'E', '38093HREF', '999', 'OPERATIVOS PLANTA EXT', 'FERNANDO', 'HERRERA', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1177, '1123116008', 'MIGUEL', '3', '058', '999', 'E', '18033LBMA', '999', 'OPERATIVOS PLANTA EXT', 'ANGEL', 'LEGUIZAMON', 'BERNAL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1183, '1115790149', 'ANDRES', '3', '058', '016', 'A', '92174RGAM', '016', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'RIOS', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (92, '1032443022', 'ANLLY', '1', '129', '005', 'A', '45047GRAJ', '005', 'COORDINADORES', 'JULIET', 'GARZON', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (242, '86051270', 'JOSE FREY', '1', '049', '003', 'E', '53295VCJD', '003', 'OPERATIVOS MANTENIMIENTO', 'DAVID', 'VIUCHE', 'CUPITRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1201, '1121967163', 'DANIEL', '3', '046', '003', 'A', '69188SBDL', '003', 'OPERATIVOS MANTENIMIENTO', 'LEONARDO', 'SUAREZ', 'BUSTOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (488, '1006779589', 'LUISA', '1', '033', '008', 'A', '81614RBLF', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNANDA', 'RODRIGUEZ', 'BELLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1204, '1123114224', 'NICHELZEN', '3', '058', '016', 'A', '16249LDNA', '016', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'LOPEZ', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1184, '1123085690', 'GABRIEL', '3', '058', '016', 'A', '87715GAG', '016', 'OPERATIVOS PLANTA EXT', '', 'GUTIERREZ', 'APONTE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (384, '1006697696', 'KAREN', '1', '021', '002', 'E', '99721PGKN', '002', 'NO DEFINIDO', 'NATALIA', 'PALACIOS', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1205, '1006863050', 'DIEGO', '3', '058', '016', 'A', '65075MGDA', '016', 'OPERATIVOS PLANTA EXT', 'ALEJANDRO', 'MOYANO', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1206, '1006415951', 'JHONATAN', '3', '058', '016', 'A', '17976EMJA', '016', 'OPERATIVOS PLANTA EXT', 'ARLEY', 'ESPEJO', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1208, '1123114633', 'DEIBER', '3', '058', '016', 'A', '16658CRDH', '016', 'OPERATIVOS PLANTA EXT', 'HUMBERTO', 'CARDENAS', 'RICO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (525, '1123435956', 'FERNEY', '1', '073', '009', 'A', '37981MOFE', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ESTIBEN', 'MORALES', 'OBANDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1209, '1026257976', 'BRAYAN', '3', '058', '016', 'A', '60001LSBS', '016', 'OPERATIVOS PLANTA EXT', 'STEVEN', 'LOPEZ', 'SERRATO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1212, '1123114388', 'DIEGO', '3', '058', '016', 'A', '16413RCDA', '016', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'RODRIGUEZ', 'CASTAÑEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1213, '1122513183', 'JOHAN', '3', '058', '016', 'A', '15208PGJS', '016', 'OPERATIVOS PLANTA EXT', 'SANTIAGO', 'POBLADOR', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1214, '1067718738', 'JUAN', '3', '058', '016', 'E', '20763PBJR', '016', 'OPERATIVOS PLANTA EXT', 'RAFAEL', 'PEREZ', 'BARRIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1215, '40433429', 'MARIA', '3', '052', '015', 'A', '35454PPME', '015', 'AUXILIARES OPERATIVOS', 'EDILMA', 'PUENTES', 'PEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (2, '11052275', 'JOSE', '1', '004', '000', 'E', '54300SRJD', '000', 'NO DEFINIDO', 'DAVID', 'SUAREZ', 'RIVERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (6, '40434734', 'JANNETH', '1', '016', '005', 'E', '36759UVJR', '005', 'NO DEFINIDO', 'ROCIO', 'UBAQUE', 'VIGOYA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (31, '1120369160', 'LUIS', '1', '085', '005', 'E', '71185TDLC', '005', 'AUXILIARES', 'CARLOS', 'TRUJILLO', 'DE LA VILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1182, '1000047346', 'JHON', '3', '058', '016', 'A', '49371GZJA', '016', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'GOMEZ', 'ZAMBRANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1203, '1082974980', 'JESUS', '3', '058', '016', 'A', '77005MTJM', '016', 'OPERATIVOS PLANTA EXT', 'MIGUEL', 'MIRANDA', 'TUNA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1211, '1006777925', 'MICHAEL', '3', '058', '016', 'A', '79950SOME', '016', 'OPERATIVOS PLANTA EXT', 'ESTEBAN', 'SAAVEDRA', 'OCHOA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (402, '1006822396', 'ANDRES', '1', '029', '002', 'A', '24421ROAF', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'FELIPE', 'RINCON', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (405, '40340107', 'SANDRA', '1', '073', '002', 'E', '42132CSC', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'CAROLINA', 'CAICEDO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (465, '1122134542', 'ALDEMAR', '1', '073', '002', 'E', '36567MVA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'MONROY', 'VANEGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1187, '1121973213', 'JOHANDRI', '3', '058', '016', 'A', '75238VVJJ', '016', 'OPERATIVOS PLANTA EXT', 'JOSE', 'VIVANCO', 'VERGARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (876, '1007168011', 'JORGE', '3', '058', '000', 'E', '70036QJA', '000', 'OPERATIVOS PLANTA EXT', 'ALIRIO', 'QUIJANO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1185, '1123115593', 'JUAN', '3', '058', '016', 'A', '17618RQJD', '016', 'OPERATIVOS PLANTA EXT', 'DAVID', 'ROCHA', 'QUINTERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1186, '31031839', 'YUDY', '3', '058', '999', 'E', '33864MYA', '999', 'OPERATIVOS PLANTA EXT', 'ADRIANA', 'MARTINEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1188, '1006877320', 'EDWARD', '3', '058', '999', 'E', '79345ROEE', '999', 'OPERATIVOS PLANTA EXT', 'ESNEIDER', 'RAMIREZ', 'ORREGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1207, '1120841203', 'YEISON', '3', '058', '016', 'A', '43228DMYS', '016', 'OPERATIVOS PLANTA EXT', 'STIVEN', 'DIAZ', 'MENDOZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1189, '1029984323', 'HEXUM', '3', '058', '999', 'E', '86348CRHF', '999', 'OPERATIVOS PLANTA EXT', 'FERNEY', 'CERVANTES', 'RICO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1192, '1006838564', 'CESAR', '3', '058', '016', 'A', '40589SOCF', '016', 'OPERATIVOS PLANTA EXT', 'FABIAN', 'SAAVEDRA', 'OCHOA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1193, '1146439656', 'ANDRES', '3', '058', '999', 'E', '41681RPA', '999', 'OPERATIVOS PLANTA EXT', '', 'ROJAS', 'PRIETO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (439, '1006779589', 'LUISA', '1', '021', '002', 'A', '81614RALF', '002', 'NO DEFINIDO', 'FERNANDA', 'RODRIGUEZ', 'ABELLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1194, '1006799630', 'HERNAN', '3', '058', '016', 'A', '101655SQHD', '016', 'OPERATIVOS PLANTA EXT', 'DARIO', 'SANTANILLA', 'QUINTERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1195, '1006837429', 'JEFERSON', '3', '058', '016', 'A', '39454LCJS', '016', 'OPERATIVOS PLANTA EXT', 'SNEYDER', 'LEON', 'CASTRILLON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1196, '1019022428', 'MAICOL', '3', '058', '016', 'A', '24453OBMS', '016', 'OPERATIVOS PLANTA EXT', 'STIVEN', 'OSORIO', 'BAQUERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1210, '1122141585', 'NIXON', '3', '058', '016', 'E', '43610AANB', '016', 'OPERATIVOS PLANTA EXT', 'BALENTIN', 'ARIZA', 'AGUDELO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1202, '1006772386', 'ANGELA', '3', '096', '005', 'A', '74411MAAP', '005', 'NO DEFINIDO', 'PATRICIA', 'MENDEZ', 'ALMANZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1143, '1006797263', 'DARWIN', '3', '058', '999', 'E', '99288TDDM', '999', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'TAPIERO', 'DUQUE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1190, '1193583858', 'CESAR', '3', '058', '999', 'E', '85883ECCE', '999', 'OPERATIVOS PLANTA EXT', 'ESTIVEN', 'ESPITIA', 'CARRILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (179, '1121868646', 'RONAL', '1', '031', '002', 'E', '70671HMRD', '002', 'OPERATIVOS PLANTA EXT', 'DE JESUS', 'HERNANDEZ', 'MORALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (189, '1123115105', 'DANIELA', '1', '033', '002', 'E', '17130VBDA', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEJANDRA', 'VILLAMIL', 'BEJARANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (210, '1124827879', 'ASTRID', '1', '033', '002', 'E', '29904APAK', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'KATHERINE', 'ALZATE', 'PALMAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (535, '1148948024', 'JOSE', '1', '095', '002', 'E', '50049DFJG', '002', 'OPERATIVOS PRODUCCION AGRICOLA', 'GREGORIO', 'DEMOYA', 'FORTICH', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (543, '1121863868', 'CESAR', '1', '029', '001', 'E', '65893ATCF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERNANDO', 'AGUDELO', 'TERREROS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (544, '1106894544', 'YINETH', '1', '026', '001', 'E', '96569MMY', '001', 'NO DEFINIDO', '', 'MURCIA', 'MURCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (545, '1050951819', 'DEINER', '1', '030', '001', 'V', '53844MPDD', '001', 'AUXILIARES OPERATIVOS', 'DE JESUS', 'MULET', 'PAZO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (546, '18129784', 'JHON', '1', '042', '000', 'E', '31809BCJJ', '000', 'NO DEFINIDO', 'JAIRO', 'BAMBAGUE', 'CHAVEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (547, '7837896', 'LUIS', '1', '052', '000', 'A', '39921GLA', '000', 'AUXILIARES OPERATIVOS', 'ANGEL', 'GUAYARA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (125, '17416230', 'UMAR', '1', '018', '000', 'A', '18255UPU', '000', 'CONDUCTORES', '', 'UMBARILA', 'POVEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (575, '78302418', 'HONORIO', '1', '062', '000', 'E', '4443RAHG', '000', 'NO DEFINIDO', 'GABRIEL', 'REYES', 'ARRIETA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (611, '1122142561', 'CRISTIAN', '1', '104', '001', 'E', '44586ERCA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANDRES', 'ESPINOSA', 'ROBLES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (648, '1122145567', 'KEVIN', '1', '104', '001', 'E', '47592HVKA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEJANDRO', 'HERNANDEZ', 'VARGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (659, '1119887188', 'DARIO', '1', '104', '001', 'A', '89213PADA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALFONSO', 'PEÑUELA', 'ACOSTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (697, '19619269', 'WILDER', '1', '104', '001', 'A', '21294RCWE', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ENRIQUE', 'RODRIGUEZ', 'CASTRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (718, '85260267', 'RUBEN', '1', '104', '001', 'E', '62292SVRD', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'DARIO', 'SALCEDO', 'VISBAL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (719, '17417340', 'EDILSON', '1', '104', '001', 'A', '19365GME', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'GALINDO', 'MENDOZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (744, '1006718482', 'KEVIN', '1', '104', '001', 'X', '20507PVKF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FERLEY', 'PIÑEROS', 'VARGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (407, '1006838669', 'JENNY', '1', '073', '009', 'A', '40694GYJA', '009', 'OPERATIVOS PRODUCCION AGRICOLA', 'ALEXANDRA', 'GUTIERREZ', 'YARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (41, '1014200495', 'PEDRO', '1', '105', '005', 'E', '2520SFPF', '005', 'COORDINADORES', 'FELIPE', 'SUAREZ', 'FLOREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (50, '1122138131', 'ERICKA', '1', '021', '999', 'E', '40156MLEM', '999', 'NO DEFINIDO', 'MILENA', 'MEDINA', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (117, '17418301', 'JAVIER', '1', '126', '013', 'A', '20326MBJ', '013', 'JEFES', '', 'MENDOZA', 'BOJACA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (550, '4060414', 'IGNACIO', '1', '062', '001', 'E', '62439SGI', '001', 'NO DEFINIDO', '', 'SILVA', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (877, '1122125418', 'JOHN', '3', '058', '000', 'E', '27443RCJJ', '000', 'OPERATIVOS PLANTA EXT', 'JAIRO', 'RUIZ', 'COCA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (118, '31031947', 'DIANA', '1', '065', '000', 'E', '33972PSDC', '000', 'NO DEFINIDO', 'CONSTANZA', 'PEREZ', 'SALAZAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (551, '1121857022', 'EDWIN', '1', '062', '001', 'E', '59047BAEO', '001', 'NO DEFINIDO', 'ORLANDO', 'BEJARANO', 'ARENAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (552, '17266716', 'JOSE', '1', '104', '001', 'A', '68741TGJA', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'ARIEL', 'TAPIA', 'GUZMAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (553, '1070706178', 'ALEXANDER', '1', '061', '000', 'E', '8203GA', '000', 'NO DEFINIDO', '', 'GOMEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (554, '1120369982', 'EDGAR', '1', '062', '000', 'E', '72007DCE', '000', 'NO DEFINIDO', '', 'DIAZ', 'CORREA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (555, '1123116268', 'OSCAR', '1', '029', '001', 'E', '18293MBOF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FABIAN', 'MEDINA', 'BONILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (559, '1102801231', 'RUBIELA', '1', '060', '000', 'E', '3256ABRM', '000', 'NO DEFINIDO', 'MARIA', 'ARIAS', 'BENITEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (878, '1123114111', 'WUILMER', '3', '058', '000', 'E', '16136HGWA', '000', 'OPERATIVOS PLANTA EXT', 'ARTURO', 'HUESO', 'GALINDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (879, '7696144', 'RODOLFO', '3', '058', '000', 'X', '98169MHR', '000', 'OPERATIVOS PLANTA EXT', '', 'MENZA', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (880, '1121946894', 'MICHELL', '3', '021', '000', 'E', '48919RRMN', '000', 'NO DEFINIDO', 'NICOLAS', 'RIVEROS', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (881, '1120499797', 'EDWIN', '3', '058', '000', 'E', '101822RMER', '000', 'OPERATIVOS PLANTA EXT', 'RICARDO', 'RONCANCIO', 'MOSQUERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (21, '1122117522', 'LINA', '1', '016', '000', 'E', '19547UCLM', '000', 'NO DEFINIDO', 'MARIA', 'ULLOA', 'CASAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (22, '1122128629', 'INGRID', '1', '015', '000', 'E', '30654CGIL', '000', 'NO DEFINIDO', 'LORENA', 'CHAVARRO', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (39, '1121931454', 'MAIKOL', '1', '016', '005', 'E', '33479MMMY', '005', 'NO DEFINIDO', 'YERBEY', 'MORENO', 'MARIN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (40, '1120365130', 'ANA', '1', '021', '005', 'E', '67155MMAC', '005', 'NO DEFINIDO', 'CECILIA', 'MORENO', 'MUÑOZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (42, '1023913922', 'MONICA', '1', '106', '005', 'E', '15947MVMY', '005', 'NO DEFINIDO', 'YISEL', 'MORALES', 'VACA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (43, '1090425325', 'JUAN', '1', '085', '005', 'E', '27350QBJA', '005', 'AUXILIARES', 'ANDRES', 'QUINTERO', 'BUENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (44, '32794021', 'JACIBE', '1', '008', '005', 'E', '96046CPJP', '005', 'NO DEFINIDO', 'PATRICIA', 'CARO', 'PALOMINO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (45, '1120365174', 'JIMMY', '1', '084', '005', 'E', '67199RSJA', '005', 'NO DEFINIDO', 'ALEXANDER', 'RIVERA', 'SANCHEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (46, '1123513867', 'DANIELA', '1', '021', '005', 'E', '15892PMD', '005', 'NO DEFINIDO', '', 'PEREZ', 'MONTOYA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (47, '17421972', 'JORGE', '1', '107', '005', 'E', '23997TLJE', '005', 'NO DEFINIDO', 'ENRIQUE', 'TRUJILLO', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (48, '80871563', 'JUAN', '1', '085', '005', 'V', '73588RMJC', '005', 'AUXILIARES', 'CAMILO', 'RIVEROS', 'MOYANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (49, '1120365130', 'ANA', '1', '013', '005', 'E', '67155MMAC', '005', 'AUXILIARES', 'CECILIA', 'MORENO', 'MUÑOZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (51, '1121927870', 'DANA', '1', '108', '005', 'E', '29895PRDY', '005', 'NO DEFINIDO', 'YISETH', 'PINZON', 'RODRÍGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (52, '1115916783', 'JHOJAN', '1', '107', '005', 'X', '18808SLJA', '005', 'NO DEFINIDO', 'ALEJANDRO', 'SUAREZ', 'LOSADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (53, '1121825954', 'VICTOR', '1', '016', '005', 'E', '27979ELVA', '005', 'NO DEFINIDO', 'ALFONSO', 'ESPINOSA', 'LOZANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (54, '73166607', 'LUIS', '1', '008', '005', 'E', '68632BVLC', '005', 'NO DEFINIDO', 'CARLOS', 'BUSTOS', 'VERGARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (55, '1123114432', 'DERLYS', '1', '085', '005', 'E', '16457UCDA', '005', 'AUXILIARES', 'ADELIA', 'USECHE', 'CASTAÑEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (94, '1123115885', 'MARIA', '1', '096', '005', 'E', '17910TOMC', '005', 'NO DEFINIDO', 'CAROLINA', 'TIBAQUIRA', 'OLARTE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (95, '1006777244', 'LEIDY', '1', '085', '005', 'E', '79269TVLM', '005', 'AUXILIARES', 'MARCELA', 'TANGARIFE', 'VELASQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (96, '1121936919', 'KELLY', '1', '096', '005', 'E', '38944CMKD', '005', 'NO DEFINIDO', 'DAYANNA', 'CASTAÑEDA', 'MORENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (120, '40397899', 'SILVIA', '1', '114', '012', 'A', '99924MRS', '012', 'ASISTENTES', '', 'MORALES', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (121, '19194455', 'MANUEL', '1', '085', '005', 'V', '96480RBMJ', '005', 'AUXILIARES', 'JOSE', 'RIVEROS', 'BAQUERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (122, '41342149', 'MARIA', '1', '085', '005', 'V', '44174RBMD', '005', 'AUXILIARES', 'DEL ROSARIO', 'RIVEROS', 'BAQUERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (123, '51556311', 'MARIA', '1', '085', '005', 'V', '58336MTMN', '005', 'AUXILIARES', 'NANCY', 'MEDINA', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (124, '1022938169', 'FRANCISCO', '1', '115', '000', 'E', '40194GOF', '000', 'NO DEFINIDO', '', 'GARZON', 'OLIVOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (548, '12275158', 'DOUMER', '1', '104', '001', 'A', '77183PMDF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FELIPE', 'PAZ', 'MAJIN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (549, '4061108', 'PEDRO', '1', '062', '001', 'E', '63133AP', '001', 'NO DEFINIDO', '', 'ALFONSO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (556, '1121853351', 'LUIS', '1', '031', '000', 'E', '55376DGLE', '000', 'OPERATIVOS PLANTA EXT', 'EDUARDO', 'DIAZ', 'GUTIERREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (557, '1111817716', 'JHON', '1', '104', '001', 'E', '19741DMJF', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'FREDY', 'DAVID', 'MUÑOZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (558, '17416718', 'FERNANDO', '1', '062', '000', 'X', '18743RMF', '000', 'NO DEFINIDO', '', 'RODRIGUEZ', 'MENDOZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (560, '1065125274', 'JORGE', '1', '062', '000', 'E', '27299TCJL', '000', 'NO DEFINIDO', 'LUIS', 'TATIS', 'CUJIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (561, '17633961', 'ORLANDO', '1', '104', '001', 'E', '35986RAO', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'RAMIREZ', 'AMAYA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (562, '1134204078', 'MARYURIS', '1', '060', '000', 'E', '6103SMMT', '000', 'NO DEFINIDO', 'TATIANA', 'SANCHEZ', 'MORENO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (563, '10553425', 'CARLOS', '1', '062', '000', 'E', '55450PCM', '000', 'NO DEFINIDO', 'MARINO', 'PARRA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (564, '5653664', 'CRISANTO', '1', '062', '001', 'E', '55689GBC', '001', 'NO DEFINIDO', '', 'GOMEZ', 'BENAVIDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (565, '40428558', 'BLANCA', '1', '060', '000', 'E', '30583HBN', '000', 'NO DEFINIDO', 'NIDIA', 'HEREDIA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (710, '1084735140', 'ELICIO', '1', '104', '001', 'A', '37165VCEJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAVIER', 'VALDES', 'CABARCAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (126, '1119891079', 'DORA', '1', '094', '002', 'E', '93104MLDC', '002', 'NO DEFINIDO', 'CECILIA', 'MARTINEZ', 'LERMA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (127, '1006797944', 'YIRSLY', '1', '096', '001', 'A', '99969FAYD', '001', 'NO DEFINIDO', 'DAHANA', 'FONTECHA', 'ANDRADE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (128, '2251824', 'ALFREDO', '1', '029', '008', 'A', '53849PMA', '008', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'PEÑALOZA', 'MORALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (151, '17420986', 'ARTURO', '1', '030', '000', 'E', '23011LA', '000', 'AUXILIARES OPERATIVOS', '', 'LONDOÑO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (341, '1123114715', 'MARTHA', '1', '073', '000', 'E', '16740FCMP', '000', 'OPERATIVOS PRODUCCION AGRICOLA', 'PATRICIA', 'FUENTES', 'CETINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (484, '1122128356', 'YEISON', '1', '029', '008', 'A', '30381ACYJ', '008', 'OPERATIVOS PRODUCCION AGRICOLA', 'JAIR', 'ARDILA', 'CASTILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (567, '87949315', 'DEITON', '1', '062', '000', 'E', '51340CQDJ', '000', 'NO DEFINIDO', 'JAVIER', 'CASTILLO', 'QUIÑONES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (568, '1087116564', 'DILSON', '1', '063', '000', 'E', '18589TMDA', '000', 'NO DEFINIDO', 'ALBERTO', 'TORRES', 'MONTAÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (569, '1064707880', 'VICTOR', '1', '079', '000', 'E', '9905NNVM', '000', 'NO DEFINIDO', 'MANUEL', 'NAVARRO', 'NAVARRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (577, '40431352', 'NELCY', '1', '060', '000', 'E', '33377SN', '000', 'NO DEFINIDO', '', 'SIERRA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (578, '16266489', 'PAULO', '1', '079', '001', 'E', '68514MIPA', '001', 'NO DEFINIDO', 'ANTONIO', 'MORENO', 'IBARGUEN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (579, '1122125882', 'FRANK', '1', '062', '000', 'E', '27907VBFD', '000', 'NO DEFINIDO', 'DIDIER', 'VIVEROS', 'BONILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (785, '1121868646', 'RONAL', '3', '031', '000', 'E', '70671HMRD', '000', 'OPERATIVOS PLANTA EXT', 'DE JESUS', 'HERNANDEZ', 'MORALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (869, '94558598', 'JHON', '3', '058', '000', 'E', '60623FMJF', '000', 'OPERATIVOS PLANTA EXT', 'FREDDY', 'FERNANDEZ', 'MAZUERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1180, '1006692984', 'JUAN', '3', '058', '999', 'E', '95009AMJC', '999', 'OPERATIVOS PLANTA EXT', 'CAMILO', 'AMAYA', 'MORA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1181, '1006718229', 'ROBERT', '3', '058', '999', 'A', '20254MPRM', '999', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'MANCHAY', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (129, '4272250', 'ISIDRO', '1', '031', '003', 'E', '74275PCI', '003', 'OPERATIVOS PLANTA EXT', '', 'PARRA', 'CARO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (130, '7837479', 'FLAMINIO', '1', '022', '002', 'E', '39504FRF', '002', 'NO DEFINIDO', '', 'FANDIÑO', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (131, '7837907', 'FERNANDO', '1', '091', '001', 'A', '39932CPFJ', '001', 'COORDINADORES', 'JAVIER', 'CRUZ', 'PAREDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (144, '17332327', 'DAVID', '1', '032', '000', 'X', '34352MRD', '000', 'NO DEFINIDO', '', 'MONTILLA', 'REYES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (145, '17410470', 'NESTOR', '1', '032', '001', 'E', '12495RMN', '001', 'NO DEFINIDO', '', 'ROJAS', 'MANTALLANA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (570, '93206317', 'FREDY', '1', '063', '000', 'E', '8342GAF', '000', 'NO DEFINIDO', '', 'GARCIA', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (146, '17410777', 'DOMINGO', '1', '024', '003', 'E', '12802OD', '003', 'CONDUCTORES', '', 'ORTIZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (147, '17412481', 'MANUEL', '1', '095', '017', 'A', '14506DRMA', '017', 'OPERATIVOS PRODUCCION AGRICOLA', 'ANTONIO', 'DIAZ', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (148, '17413391', 'RIGOBERTO', '1', '030', '001', 'A', '15416PSR', '001', 'AUXILIARES OPERATIVOS', '', 'PIZA', 'SAAVEDRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (571, '71949049', 'WILLINTON', '1', '079', '000', 'E', '51074MRW', '000', 'NO DEFINIDO', '', 'MORENO', 'RIVAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (572, '7837901', 'JOSE', '1', '062', '000', 'E', '39926LJA', '000', 'NO DEFINIDO', 'ALBERTO', 'LUGO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (573, '1123560761', 'BRAYAN', '1', '062', '000', 'E', '62786ABS', '000', 'NO DEFINIDO', 'STIVEN', 'AGUILAR', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (149, '17416669', 'HUMBERTO', '1', '031', '000', 'E', '18694SGH', '000', 'OPERATIVOS PLANTA EXT', '', 'SANABRIA', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (150, '17417930', 'GERMAN', '1', '030', '001', 'A', '19955BGG', '001', 'AUXILIARES OPERATIVOS', 'GUSTAVO', 'BARRETO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (574, '19619148', 'JONIER', '1', '062', '000', 'E', '21173BPJE', '000', 'NO DEFINIDO', 'ENRIQUE', 'BERRIO', 'PORRAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (576, '1057783604', 'ISLEN', '1', '062', '000', 'E', '85629CGI', '000', 'NO DEFINIDO', '', 'CASTAÑO', 'GALLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (580, '86088893', 'FABIAN', '1', '062', '000', 'E', '90918RAFR', '000', 'NO DEFINIDO', 'RENET', 'RINCON', 'ARDILA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (581, '1007147555', 'YEFERSON', '1', '061', '000', 'E', '49580GY', '000', 'NO DEFINIDO', '', 'GOMEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (582, '1040763812', 'SAMIR', '1', '061', '000', 'E', '65837PFSM', '000', 'NO DEFINIDO', 'MANUEL', 'PICO', 'FERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (583, '1036222353', 'LUIS', '1', '062', '001', 'E', '24378JVLA', '001', 'NO DEFINIDO', 'ANTONIO', 'JARAMILLO', 'VILLEGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (584, '5075470', 'ASDRUBAL', '1', '062', '000', 'E', '77495MGAR', '000', 'NO DEFINIDO', 'RAFAEL', 'MELENDEZ', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (585, '74852977', 'WILSON', '1', '062', '001', 'E', '55002CCWJ', '001', 'NO DEFINIDO', 'JAIR', 'COMAYAN', 'CETINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (586, '74270794', 'JAIME', '1', '062', '001', 'E', '72819RBJ', '001', 'NO DEFINIDO', '', 'RINCON', 'BERDUGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (645, '1128189335', 'EVER', '1', '062', '001', 'A', '91360MREA', '001', 'NO DEFINIDO', 'ANTONIO', 'MEJIA', 'REYES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (647, '40732923', 'LUCELIDA', '1', '104', '001', 'E', '34948FL', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'FAJARDO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (649, '1075211887', 'WILMER', '1', '104', '001', 'E', '13912SGW', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'SANCENO', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (651, '17704280', 'BENJAMIN', '1', '104', '001', 'E', '6305CCB', '001', 'OPERATIVOS PRODUCCION AGRICOLA', '', 'COBALEDA', 'CARVAJAL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (652, '1007720148', 'JORGE', '1', '104', '001', 'E', '22173COJI', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'IVAN', 'CASTAÑEDA', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (653, '1085106163', 'ALIX', '1', '104', '001', 'E', '8188OCAJ', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'JOSE', 'OROZCO', 'CARRILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (650, '19620729', 'ANDRES', '1', '104', '001', 'E', '22754SSAM', '001', 'OPERATIVOS PRODUCCION AGRICOLA', 'MANUEL', 'SILVA', 'SLVERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (882, '1120357282', 'RAMIRO', '3', '058', '000', 'E', '59307SPRA', '000', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'SAAVEDRA', 'PENAGOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (883, '1122137437', 'JEAN', '3', '031', '000', 'E', '39462GPJC', '000', 'OPERATIVOS PLANTA EXT', 'CARLOS', 'GUTIERREZ', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (884, '86010023', 'WILSON', '3', '058', '000', 'E', '12048MWH', '000', 'OPERATIVOS PLANTA EXT', 'HERNANDO', 'MEDINA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (885, '1122647233', 'JHON', '3', '058', '000', 'X', '49258OLJJ', '000', 'OPERATIVOS PLANTA EXT', 'JORGE', 'OCORO', 'LEON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (886, '1072026492', 'JONHON', '3', '058', '000', 'E', '28517BRJF', '000', 'OPERATIVOS PLANTA EXT', 'FREDY', 'BOJACA', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (887, '86085548', 'JUAN', '3', '058', '000', 'E', '87573CLJC', '000', 'OPERATIVOS PLANTA EXT', 'CARLOS AUGUSTO', 'CASADIEGO', 'LEON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (888, '1116545528', 'JORGE', '3', '058', '000', 'E', '47553GCJA', '000', 'OPERATIVOS PLANTA EXT', 'ALBERTO', 'GALVIS', 'CEIJA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (889, '7837896', 'LUIS', '3', '052', '000', 'E', '39921GELA', '000', 'AUXILIARES OPERATIVOS', 'ANGEL', 'GUAYARA', 'ESQUIVEL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (890, '1122123916', 'MIGUEL', '3', '058', '000', 'E', '25941CUME', '000', 'OPERATIVOS PLANTA EXT', 'ENRIQUE', 'CUBILLOS', 'UMAÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (922, '1022940191', 'LUIS', '3', '098', '000', 'E', '42216MMLA', '000', 'NO DEFINIDO', 'ANDRES', 'MORENO', 'MONTAÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (923, '1120364757', 'WILLIAM', '3', '058', '999', 'E', '66782OBWA', '999', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'OSORIO', 'BONILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (896, '1120374571', 'ZULLY', '3', '021', '000', 'E', '76596FVZM', '000', 'NO DEFINIDO', 'MILEIDY', 'FORERO', 'VERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (924, '93298782', 'RUBEN', '3', '058', '999', 'E', '100807LFR', '999', 'OPERATIVOS PLANTA EXT', '', 'LUIS', 'FERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (925, '1123115267', 'ARNOLD', '3', '058', '999', 'E', '17292OPAS', '999', 'OPERATIVOS PLANTA EXT', 'STIVEN', 'ORTIZ', 'PEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (935, '1116805369', 'ARLEX', '3', '021', '999', 'E', '7394DAA', '999', 'NO DEFINIDO', '', 'DIAZ', 'ACEVEDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (936, '1121826424', 'WALTER', '3', '055', '016', 'A', '28449VAWR', '016', 'OPERATIVOS PLANTA EXT', 'ROLANDO', 'VELASQUEZ', 'ALEJO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (937, '1122137652', 'JAILER', '3', '058', '999', 'E', '39677BAJG', '999', 'OPERATIVOS PLANTA EXT', 'GIOVANNY', 'BOLAÑOS', 'ARANGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (938, '1122511166', 'ROBISON', '3', '058', '999', 'E', '13191ARR', '999', 'OPERATIVOS PLANTA EXT', '', 'ARANGO', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (939, '1122678457', 'RAFAEL', '3', '058', '999', 'E', '80482ACRE', '999', 'OPERATIVOS PLANTA EXT', 'ENRIQUE', 'ARDILA', 'CUIZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (940, '1144201812', 'JUAN', '3', '058', '999', 'E', '3837PQJS', '999', 'OPERATIVOS PLANTA EXT', 'SEBASTIAN', 'PULGARIN', 'QUINTERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (941, '1123115837', 'OSCAR', '3', '058', '999', 'E', '17862GGOF', '999', 'OPERATIVOS PLANTA EXT', 'FERNANDO', 'GARCIA', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (942, '1006779872', 'ALBERNEPER', '3', '058', '999', 'E', '81897AQA', '999', 'OPERATIVOS PLANTA EXT', '', 'ARDILA', 'QUINTERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (943, '1123115909', 'MAYCOL', '3', '058', '999', 'E', '17934CAMJ', '999', 'OPERATIVOS PLANTA EXT', 'JAVIER', 'CERA', 'ATEHORTUA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (944, '1122142523', 'FREDMAN 	', '3', '058', '999', 'E', '44548CMFA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES 	', 'CASTILLO 	', 'MELO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (945, '1123115213', 'JANUARIO', '3', '058', '999', 'E', '17238TSJ', '999', 'OPERATIVOS PLANTA EXT', '', 'TRIGOS', 'SANTANA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (947, '1102362594', 'ANGELO 		', '3', '058', '999', 'E', '64619LAA', '999', 'OPERATIVOS PLANTA EXT', '', 'LANCHEROS 	', 'APONTE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (949, '80238793', 'NESTOR', '3', '058', '999', 'E', '40818SSNE', '999', 'OPERATIVOS PLANTA EXT', 'ENRIQUE', 'SANABRIA', 'SUAREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (951, '1120357800', 'CESAR', '3', '058', '999', 'E', '59825AGCA', '999', 'OPERATIVOS PLANTA EXT', 'AUGUSTO', 'ACOSTA', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (952, '1122120289', 'ROBISON', '3', '058', '999', 'E', '22314GRRA', '999', 'OPERATIVOS PLANTA EXT', 'AUGUSTO', 'GONZALEZ', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (953, '1122144517', 'DUVAN', '3', '058', '999', 'E', '46542SADS', '999', 'OPERATIVOS PLANTA EXT', 'STIVEN', 'SANCHEZ', 'ARANGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (954, '94299562', 'HERNANDO', '3', '058', '999', 'E', '101587BSH', '999', 'OPERATIVOS PLANTA EXT', '', 'BOLAÑOS', 'SOLANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (897, '1121850922', 'DILMAR', '3', '058', '999', 'E', '52947MLD', '999', 'OPERATIVOS PLANTA EXT', '', 'MALAGON', 'LEYVA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (955, '1123114600', 'JOSÉ', '3', '058', '999', 'E', '16625GTJD', '999', 'OPERATIVOS PLANTA EXT', 'DUMAR', 'GARCIA', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (956, '1123115194', 'ALAN', '3', '058', '999', 'E', '17219GTA', '999', 'OPERATIVOS PLANTA EXT', '', 'GARCIA', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (892, '30946271', 'SANDRA', '3', '021', '000', 'E', '48296TSM', '000', 'NO DEFINIDO', 'MILENA', 'TRUJILLO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (893, '1006838556', 'NICOLAS', '3', '058', '000', 'X', '40581UEN', '000', 'OPERATIVOS PLANTA EXT', '', 'URREGO', 'ESCOBAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (894, '1121939006', 'DIDI', '3', '021', '999', 'E', '41031VSDS', '999', 'NO DEFINIDO', 'STEFANIA', 'VILLAMIL', 'SERNA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (895, '1121950237', 'KAREN', '3', '021', '000', 'E', '52262VHKD', '000', 'NO DEFINIDO', 'DAYANA', 'VILLAMARIN', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (898, '1006777437', 'SEBASTIAN', '3', '058', '999', 'E', '79462CBS', '999', 'OPERATIVOS PLANTA EXT', '', 'CAÑON', 'BARRETO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (946, '1121919092', 'JENNINSON', '3', '054', '999', 'A', '21117CDJ', '999', 'OPERATIVOS MANTENIMIENTO', '', 'CRISPIN', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (899, '1033739135', 'PEDRO', '3', '058', '999', 'E', '41160MGP', '999', 'OPERATIVOS PLANTA EXT', '', 'MONGE', 'GALINDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (900, '1123115843', 'JEHU', '3', '058', '999', 'E', '17868RQJD', '999', 'OPERATIVOS PLANTA EXT', 'DANIEL', 'ROCHA', 'QUINTERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (901, '6024515', 'LUIS', '3', '140', '999', 'E', '26540UDLE', '999', 'OPERATIVOS ADMINISTRATIVOS', 'ERNESTO', 'URUEÑA', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (902, '16463589', 'JOSE', '3', '058', '999', 'E', '65614CJA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'CHILITO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (903, '1121834337', 'OSCAR', '3', '118', '003', 'A', '36362MOI', '003', 'OPERATIVOS MANTENIMIENTO', 'IVAN', 'MORA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (904, '1123115759', 'EDDY', '3', '058', '999', 'E', '17784PCED', '999', 'OPERATIVOS PLANTA EXT', 'DAYAN', 'PARRA', 'CALLEJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (905, '1122654519', 'OSCAR', '3', '058', '999', 'E', '56544RPOA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'ROZO', 'PRADA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (906, '1122138071', 'JESUS', '3', '058', '999', 'E', '40096CBJD', '999', 'OPERATIVOS PLANTA EXT', 'DAVID', 'CONTRERAS', 'BOLIVAR', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (907, '1123116025', 'BRAYAN', '3', '058', '999', 'E', '18050NABS', '999', 'OPERATIVOS PLANTA EXT', 'STIK', 'NIÑO', 'AGUIRRE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (908, '1075256351', 'JOHAN', '3', '058', '999', 'X', '58376SCJS', '999', 'OPERATIVOS PLANTA EXT', 'SEBASTIAN', 'SANCHEZ', 'CORDOBA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (909, '1122116471', 'CRISTIAN', '3', '058', '999', 'E', '18496MQCJ', '999', 'OPERATIVOS PLANTA EXT', 'JULIAN', 'MELO', 'QUITIAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (910, '17423188', 'JULIO', '3', '058', '999', 'E', '25213MAJC', '999', 'OPERATIVOS PLANTA EXT', 'CESAR', 'MUÑOZ', 'ACHURE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (911, '1123115377', 'OBER', '3', '058', '999', 'E', '17402MBO', '999', 'OPERATIVOS PLANTA EXT', '', 'MELO', 'BAEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (912, '1122129464', 'WILMAR', '3', '058', '999', 'E', '31489VVWY', '999', 'OPERATIVOS PLANTA EXT', 'YESID', 'VELASCO', 'VERANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (913, '86088570', 'LUIS', '3', '058', '999', 'E', '90595PFLA', '999', 'OPERATIVOS PLANTA EXT', 'ANGEL', 'POBLADOR', 'FORERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (914, '1006863728', 'JUAN', '3', '021', '999', 'E', '65753IBJD', '999', 'NO DEFINIDO', 'DAVID', 'ISAZA', 'BARON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (915, '1023954642', 'ANA', '3', '021', '999', 'E', '56667ROAP', '999', 'NO DEFINIDO', 'PAOLA', 'RUIZ', 'OCHOA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (916, '1123114978', 'JAIVER', '3', '058', '999', 'E', '17003RRJE', '999', 'OPERATIVOS PLANTA EXT', 'ESTIVEN', 'RAMIREZ', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (917, '1082805844', 'JHON', '3', '058', '999', 'E', '7869RPJH', '999', 'OPERATIVOS PLANTA EXT', 'HAROL', 'RODRIGUEZ', 'PEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (919, '1121960967', 'JHOAN', '3', '058', '999', 'E', '62992VRJS', '999', 'OPERATIVOS PLANTA EXT', 'SEBASTIAN', 'VARGAS', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (920, '1023954642', 'ANA', '3', '027', '999', 'E', '56667ROAP', '999', 'ASISTENTES', 'PAOLA', 'RUIZ', 'OCHOA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (921, '1121936437', 'MILSON', '3', '021', '999', 'E', '38462ARMA', '999', 'NO DEFINIDO', 'ARLEY', 'AVILA', 'RINCON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (926, '1121905221', 'ALEXANDRA', '3', '065', '999', 'E', '7246RUA', '999', 'NO DEFINIDO', '', 'RUIZ', 'ULLOA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (927, '17267915', 'ALEXANDER', '3', '098', '000', 'E', '69940OAA', '000', 'NO DEFINIDO', '', 'ORJUELA', 'ACUÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (928, '1121964572', 'JHON', '3', '021', '000', 'E', '66597ROJS', '000', 'NO DEFINIDO', 'SEBASTIAN', 'RUIZ', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (929, '74849566', 'NELSON', '3', '058', '999', 'E', '51591PNM', '999', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'PARALES', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (930, '1006778581', 'CRISTIAN', '3', '058', '999', 'E', '80606ARCJ', '999', 'OPERATIVOS PLANTA EXT', 'JULIAN', 'ARANGO', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (931, '1123115349', 'MIGUEL', '3', '058', '999', 'E', '17374MLMA', '999', 'OPERATIVOS PLANTA EXT', 'ANGEL', 'MAHECHA', 'LUNA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (932, '1123116017', 'CRISTIAN', '3', '058', '999', 'E', '18042SCCA', '999', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'SEPULVEDA', 'CORDOBA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (933, '16435722', 'FREDY', '3', '058', '999', 'E', '37747CRF', '999', 'OPERATIVOS PLANTA EXT', '', 'CARDONA', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (934, '1122126143', 'VICKY', '3', '100', '999', 'E', '28168RPVJ', '999', 'ASISTENTES', 'JULIETH', 'RODRÍGUEZ', 'PIRABAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (988, '1097162616', 'JUAN', '3', '058', '000', 'E', '64641VTJC', '000', 'OPERATIVOS PLANTA EXT', 'CAMILO', 'VERANO', 'TELLEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (989, '1049027929', 'ANGEL', '3', '058', '000', 'E', '29954HMAH', '000', 'OPERATIVOS PLANTA EXT', 'HEMSLEY', 'HERRERA', 'MANCILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (990, '1123115873', 'DARWIN', '3', '058', '000', 'E', '17898MHDR', '000', 'OPERATIVOS PLANTA EXT', 'RODRIGO', 'MOLINA', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (991, '5938447', 'HERNAN', '3', '112', '000', 'E', '40472PGH', '000', 'SUPERVISORES', '', 'PALACIO', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1001, '1063618832', 'JHON', '3', '058', '999', 'E', '20857RGJJ', '999', 'OPERATIVOS PLANTA EXT', 'JAIRO', 'ROJAS', 'GAMBA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1002, '1124190795', 'JHORMAN', '3', '031', '016', 'A', '92820CVJA', '016', 'OPERATIVOS PLANTA EXT', 'ALEXIS', 'CASTRO', 'VERGARA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1003, '1192763309', 'JOHAN', '3', '058', '000', 'E', '65334GQJS', '000', 'OPERATIVOS PLANTA EXT', 'STEVEN', 'GUZMAN', 'QUEVEDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1005, '1122130097', 'WILLIAM', '3', '049', '003', 'A', '32122RRWA', '003', 'OPERATIVOS MANTENIMIENTO', 'ALEXANDER', 'REYES', 'ROJAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1006, '1122145604', 'JANIER', '3', '058', '000', 'E', '47629RLJN', '000', 'OPERATIVOS PLANTA EXT', 'NICOLAS', 'RODRIGUEZ', 'LOPEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1007, '1122647515', 'LEYDE', '3', '058', '000', 'E', '49540RDLJ', '000', 'OPERATIVOS PLANTA EXT', 'JOHAN', 'ROZO', 'DIAZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1008, '1123115143', 'NILSON', '3', '058', '000', 'E', '17168CCNJ', '000', 'OPERATIVOS PLANTA EXT', 'JAIR', 'CORREA', 'CESPEDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1009, '1053779538', 'JUAN', '3', '058', '000', 'E', '81563FCJD', '000', 'OPERATIVOS PLANTA EXT', 'DAVID', 'FRANCO', 'CASTRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1010, '1122143408', 'CARLOS', '3', '058', '000', 'E', '45433RMCD', '000', 'OPERATIVOS PLANTA EXT', 'DUVAN', 'RAMIREZ', 'MORA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1011, '1121941500', 'JANERSON', '3', '047', '016', 'A', '43525VPJ', '016', 'SUPERVISORES', '', 'VIVEROS', 'PANAMEÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1012, '1019151857', 'JOHN', '3', '058', '000', 'E', '53882CPJF', '000', 'OPERATIVOS PLANTA EXT', 'FREDY', 'CASTRO', 'PERILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1013, '1094859505', 'JAIRO', '3', '058', '000', 'E', '61530VHJO', '000', 'OPERATIVOS PLANTA EXT', 'OMAR', 'VERA', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1014, '1133790704', 'CARLOS', '3', '054', '000', 'E', '92729RSCA', '000', 'OPERATIVOS MANTENIMIENTO', 'ALBERTO', 'ROMERO', 'SOTELO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1015, '1119892202', 'CRISTIAM', '3', '058', '000', 'E', '94227BCC', '000', 'OPERATIVOS PLANTA EXT', '', 'BARRIOS', 'CHAMBUETA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1016, '1123115079', 'JHON', '3', '058', '000', 'E', '17104GCJF', '000', 'OPERATIVOS PLANTA EXT', 'FREDY', 'GUTIERREZ', 'CIFUENTES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1017, '1121863270', 'AVELINO', '3', '132', '000', 'E', '65295BOA', '000', 'NO DEFINIDO', '', 'BENAVIDES', 'OJEDA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1018, '1123115978', 'ALDOR', '3', '058', '000', 'E', '18003MGA', '000', 'OPERATIVOS PLANTA EXT', '', 'MOSQUERA', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1019, '8527470', 'TEIDER', '3', '058', '000', 'E', '29495PFT', '000', 'OPERATIVOS PLANTA EXT', '', 'PERALTA', 'FRANCO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1020, '1019049987', 'MARLON', '3', '058', '000', 'E', '52012AMMD', '000', 'OPERATIVOS PLANTA EXT', 'DIDI', 'ARIZA', 'MOTTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1021, '1004632224', 'JHON', '3', '058', '000', 'E', '34249CGJS', '000', 'OPERATIVOS PLANTA EXT', 'SEBASTIAN', 'CRUZ', 'GUERRERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (957, '1123512296', 'JOSÉ', '3', '058', '999', 'E', '14321AHJM', '999', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'ACOSTA', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (958, '1124190772', 'JULIAN', '3', '058', '999', 'E', '92797MMJA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'MORA', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (959, '1081785405', 'JAIDER', '3', '058', '999', 'E', '87430DCJE', '999', 'OPERATIVOS PLANTA EXT', 'ENRIQUE', 'DE LA CRUZ', 'CESPEDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (960, '16864033', 'JHON', '3', '058', '999', 'X', '66058CMJW', '999', 'OPERATIVOS PLANTA EXT', 'WILMER', 'CALDERON', 'MOSQUERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (961, '1122142279', 'GILBERTO', '3', '058', '999', 'X', '44304AMG', '999', 'OPERATIVOS PLANTA EXT', '', 'ARIAS', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (962, '3237175', 'BERNARDO', '3', '058', '999', 'E', '39200LCB', '999', 'OPERATIVOS PLANTA EXT', '', 'LEON', 'CARDENAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (963, '1006838534', 'DIEGO', '3', '058', '999', 'E', '40559SDF', '999', 'OPERATIVOS PLANTA EXT', 'FERNANDO', 'SANABRIA', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (965, '1122129903', 'ZAHIRA', '3', '021', '999', 'E', '31928GAZF', '999', 'NO DEFINIDO', 'FERNANDA', 'GARZON', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (966, '80005448', 'JOSÉ', '3', '058', '999', 'E', '7473MPJH', '999', 'OPERATIVOS PLANTA EXT', 'HERNANDO', 'MARROQUIN', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (967, '80732108', 'LEISER', '3', '058', '000', 'E', '34133OOL', '000', 'OPERATIVOS PLANTA EXT', '', 'ORTIZ', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (968, '1123514882', 'ALVARO', '3', '021', '999', 'E', '16907FMAE', '999', 'NO DEFINIDO', 'ESTIBEN', 'FONTECHA', 'MENDOZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (969, '1122140761', 'MARLENY', '3', '021', '999', 'E', '42786CCM', '999', 'NO DEFINIDO', '', 'CAGUA', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (970, '1122122657', 'ANGELA', '3', '021', '000', 'E', '24682QRAM', '000', 'NO DEFINIDO', 'MAYURY', 'QUEVEDO', 'RAMIREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (971, '1057514779', 'VICTOR', '3', '058', '000', 'E', '16804GVVA', '000', 'OPERATIVOS PLANTA EXT', 'ALFONSO', 'GAMBOA', 'VARGAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (972, '1123116377', 'BRAYAN', '3', '058', '000', 'E', '18402LMBS', '000', 'OPERATIVOS PLANTA EXT', 'STIVEN', 'LOZANO', 'MANRIQUE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (974, '1123115573', 'ALEXANDER', '3', '058', '000', 'E', '17598CMA', '000', 'OPERATIVOS PLANTA EXT', '', 'CHAVEZ', 'MURILLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (976, '1024508601', 'JUAN', '3', '058', '000', 'E', '10626VGJC', '000', 'OPERATIVOS PLANTA EXT', 'CAMILO', 'VIRGUEZ', 'GOMEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (977, '1037480386', 'HENRY', '3', '058', '000', 'E', '82411RBHJ', '000', 'OPERATIVOS PLANTA EXT', 'JESUS', 'RIVERA', 'BARRIOS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (978, '1121855293', 'LEONARDO', '3', '058', '999', 'X', '57318HL', '999', 'OPERATIVOS PLANTA EXT', '', 'HUERTAS', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (979, '1123116415', 'BRANDON', '3', '058', '000', 'E', '18440APBS', '000', 'OPERATIVOS PLANTA EXT', 'SWEN', 'ACOSTA', 'PICON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (980, '1007441523', 'YANCARLOS', '3', '125', '016', 'A', '43548EMY', '016', 'ASISTENTES', '', 'ESPEJO', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (981, '1006857250', 'JUAN', '3', '058', '999', 'E', '59275PRJD', '999', 'OPERATIVOS PLANTA EXT', 'DIEGO', 'POSADA', 'RINCON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (982, '1122146082', 'YOJAN', '3', '058', '000', 'E', '48107RMYE', '000', 'OPERATIVOS PLANTA EXT', 'ESTEBAN', 'ROZO', 'MUÑOZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (983, '1122126475', 'JOSE', '3', '058', '000', 'E', '28500PRJT', '000', 'OPERATIVOS PLANTA EXT', 'TRINIDAD', 'PIRE', 'RIAÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (984, '1234790136', 'DANIEL', '3', '021', '999', 'E', '92161CLDS', '999', 'NO DEFINIDO', 'STEBAN', 'CAICEDO', 'LADINO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (985, '1122127133', 'NIDIA', '3', '011', '012', 'A', '29158GON', '012', 'ANALISTAS', '', 'GARCES', 'ORTIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (986, '1123513779', 'MARLY', '3', '021', '000', 'E', '15804RAMT', '000', 'NO DEFINIDO', 'TATIANA', 'REY', 'ALFONSO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (987, '1122133102', 'OMAR', '3', '058', '999', 'E', '35127NCOY', '999', 'OPERATIVOS PLANTA EXT', 'YECID', 'NOVOA', 'CARDENAL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (992, '1122141901', 'HEISY', '3', '021', '000', 'E', '43926HBHD', '000', 'NO DEFINIDO', 'DAYANA', 'HURTADO', 'BOHORQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (993, '1006777259', 'CARLOS', '3', '040', '000', 'E', '79284PMCA', '000', 'NO DEFINIDO', 'ANDRES', 'PAREDES', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (994, '1122136626', 'YEIFER', '3', '040', '000', 'E', '38651MCYB', '000', 'NO DEFINIDO', 'BRAYAM', 'MORENO', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (995, '1006777259', 'CARLOS', '3', '021', '999', 'E', '79284PMCA', '999', 'NO DEFINIDO', 'ANDRES', 'PAREDES', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (996, '1122136626', 'YEIFER', '3', '021', '999', 'E', '38651MCYB', '999', 'NO DEFINIDO', 'BRAYAM', 'MORENO', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (997, '1006776765', 'JOSE', '3', '058', '000', 'E', '78790FMJM', '000', 'OPERATIVOS PLANTA EXT', 'MIGUEL', 'FAUSTINO', 'MORALES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (998, '1122146037', 'MIGUEL', '3', '058', '000', 'E', '48062VRME', '000', 'OPERATIVOS PLANTA EXT', 'EDUARDO', 'VILLALOBOS', 'RIAÑO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (999, '1123115161', 'FABIAN', '3', '058', '000', 'E', '17186PRF', '000', 'OPERATIVOS PLANTA EXT', '', 'PINEDA', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1000, '1116864912', 'DARWIN', '3', '058', '000', 'E', '66937TGD', '000', 'OPERATIVOS PLANTA EXT', '', 'TORRES', 'GUERRERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (973, '87948678', 'JAVIER', '3', '054', '003', 'A', '50703CJA', '003', 'OPERATIVOS MANTENIMIENTO', 'ALFREDO', 'CENTENO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1053, '1005855799', 'PAULA', '3', '052', '999', 'E', '57824CHPA', '999', 'AUXILIARES OPERATIVOS', 'ANDREA', 'CONDA', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1054, '1125476642', 'INGRID', '3', '021', '999', 'E', '78667JUIT', '999', 'NO DEFINIDO', 'TATIANA', 'JARAMILLO', 'URIBE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1055, '1122133619', 'JEFERSON', '3', '096', '999', 'E', '35644CHJA', '999', 'NO DEFINIDO', 'ALEXANDER', 'CRUZ', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1067, '1010043103', 'JOSE', '3', '040', '999', 'E', '45128LCJD', '999', 'NO DEFINIDO', 'DANIEL', 'LUNA', 'CAMACHO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1068, '1121869947', 'KELLY', '3', '116', '999', 'E', '71972TRKN', '999', 'ANALISTAS', 'NATALI', 'TORRES', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1069, '1000972343', 'LAURA', '3', '014', '006', 'A', '74368AMLK', '006', 'ASISTENTES', 'KATERIN', 'APONTE', 'MONTAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1070, '1010043103', 'JOSE', '3', '021', '999', 'E', '45128LCJD', '999', 'NO DEFINIDO', 'DANIEL', 'LUNA', 'CAMACHO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1071, '1121823601', 'DIEGO', '3', '027', '016', 'A', '25626CUDF', '016', 'ASISTENTES', 'FERNANDO', 'CAMACHO', 'URUEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1072, '1121921367', 'OSCAR', '3', '021', '999', 'E', '23392OVOM', '999', 'NO DEFINIDO', 'MAURICIO', 'OJEDA', 'VIGOYA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1073, '16045285', 'WILDER', '3', '058', '999', 'E', '47310ZAW', '999', 'OPERATIVOS PLANTA EXT', '', 'ZAPATA', 'ARIAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1074, '1070706974', 'HECTOR', '3', '055', '999', 'E', '8999RLHY', '999', 'OPERATIVOS PLANTA EXT', 'YESID', 'RAMIREZ', 'LEAL', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1075, '1006658965', 'YEISON', '3', '052', '015', 'A', '60990MVYA', '015', 'AUXILIARES OPERATIVOS', 'ANDRES', 'MEJIA', 'VALENCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1076, '1123114087', 'WILLIAM', '3', '058', '999', 'E', '16112GDWD', '999', 'OPERATIVOS PLANTA EXT', 'DAVID', 'GOMEZ', 'DUQUE', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1077, '1100949150', 'YOJHAN', '3', '058', '999', 'E', '51175MRYE', '999', 'OPERATIVOS PLANTA EXT', 'ELIECER', 'MALDONADO', 'RUIZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1078, '7573592', 'LUIS', '3', '058', '999', 'E', '75617BJLA', '999', 'OPERATIVOS PLANTA EXT', 'ALFREDO', 'BUELVAS', 'JIMENEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1079, '1010088563', 'JUAN', '3', '058', '999', 'E', '90588ORJS', '999', 'OPERATIVOS PLANTA EXT', 'SEBASTIAN', 'OBANDO', 'ROMERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1080, '1121042091', 'DAYNER', '3', '058', '999', 'E', '44116LPD', '999', 'OPERATIVOS PLANTA EXT', '', 'LASCARRO', 'PEREZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1081, '1006838674', 'YILBER', '3', '058', '999', 'E', '40699FSYF', '999', 'OPERATIVOS PLANTA EXT', 'FLAMINIO', 'FANDIÑO', 'SILVA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1082, '1006863071', 'JHONATAN', '3', '052', '015', 'A', '65096MGJA', '015', 'AUXILIARES OPERATIVOS', 'ALEXANDER', 'MOYANO', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1083, '1007441419', 'DARLEY', '3', '058', '999', 'E', '43444MJDM', '999', 'OPERATIVOS PLANTA EXT', 'MAURICIO', 'MURCIA', 'JOJOA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1084, '1122122429', 'YORMAN', '3', '052', '015', 'A', '24454TCYA', '015', 'AUXILIARES OPERATIVOS', 'ALBERTO', 'TRIVIÑO', 'CONTRERAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1085, '1006838448', 'BRAYAN', '3', '058', '999', 'E', '40473GBS', '999', 'OPERATIVOS PLANTA EXT', 'STIVEN', 'GONZALEZ', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1086, '1006718750', 'JOSE', '3', '058', '999', 'E', '20775ONJE', '999', 'OPERATIVOS PLANTA EXT', 'ESTIVEN', 'ORTIZ', 'NIETO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1087, '1193067105', 'DEIVIS', '3', '058', '999', 'E', '69130OPDJ', '999', 'OPERATIVOS PLANTA EXT', 'JOSE', 'OSORIO', 'PEDROZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1088, '1006773764', 'YOHAN', '3', '058', '999', 'E', '75789CCYS', '999', 'OPERATIVOS PLANTA EXT', 'STIVEN', 'CETINA', 'CETINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1024, '1061200043', 'WILFRIDO', '3', '058', '000', 'E', '2068CGW', '000', 'OPERATIVOS PLANTA EXT', '', 'CAICEDO', 'GAMBINO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1025, '1123115541', 'JOSE', '3', '058', '000', 'E', '17566GAJJ', '000', 'OPERATIVOS PLANTA EXT', 'JAVIER', 'GAMBINO', 'ARIZA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1026, '1121958533', 'DENILSON', '3', '087', '000', 'E', '60558ICD', '000', 'NO DEFINIDO', '', 'IZAJAR', 'CARABALI', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1023, '1006838686', 'YORDAN', '3', '052', '015', 'A', '40711BLY', '015', 'AUXILIARES OPERATIVOS', '', 'BERMUDEZ', 'LEON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1027, '1122138801', 'JUAN', '3', '054', '000', 'E', '40826PRJD', '000', 'OPERATIVOS MANTENIMIENTO', 'DAVID', 'PAZ', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1028, '1122141901', 'HEISY', '3', '100', '999', 'E', '43926HBHD', '999', 'ASISTENTES', 'DAYANA', 'HURTADO', 'BOHORQUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1030, '1006777814', 'DANIEL', '3', '058', '000', 'E', '79839CFDF', '000', 'OPERATIVOS PLANTA EXT', 'FELIPE', 'CHAPARRO', 'FARFAN', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1031, '1047241522', 'EDGAR', '3', '112', '000', 'E', '43547RUEL', '000', 'SUPERVISORES', 'LICIMACO', 'RINCON', 'URDANETA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1032, '1122145497', 'DANIEL', '3', '021', '000', 'E', '47522ARDO', '000', 'NO DEFINIDO', 'ORLANDO', 'ACOSTA', 'ROMERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1033, '1000972343', 'LAURA', '3', '040', '000', 'E', '74368AMLK', '000', 'NO DEFINIDO', 'KATERIN', 'APONTE', 'MONTAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1034, '1006776624', 'ANDREA', '3', '040', '000', 'E', '78649LAAM', '000', 'NO DEFINIDO', 'MAYERLY', 'LEON', 'ACOSTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1035, '1000972343', 'LAURA', '3', '021', '000', 'E', '74368AMLK', '000', 'NO DEFINIDO', 'KATERIN', 'APONTE', 'MONTAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1036, '1006776624', 'ANDREA', '3', '021', '000', 'E', '78649LAAM', '000', 'NO DEFINIDO', 'MAYERLY', 'LEON', 'ACOSTA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1037, '30946193', 'JENNY', '3', '014', '000', 'E', '48218QPJP', '000', 'ASISTENTES', 'PAOLA', 'QUEVEDO', 'PINILLA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1038, '1122140440', 'DUVAN', '3', '021', '999', 'E', '42465CMDA', '999', 'NO DEFINIDO', 'ANDRES', 'CASTRO', 'MANAJRRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1039, '1006859060', 'NAZLY', '3', '021', '999', 'E', '61085ARNT', '999', 'NO DEFINIDO', 'TATIANA', 'ARENAS', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1040, '1121904325', 'OSCAR', '3', '076', '999', 'X', '6350SROE', '999', 'COORDINADORES', 'ESNEIDER', 'SAAVEDRA', 'REINA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1041, '1118202219', 'MARTHA', '3', '021', '999', 'E', '4244PRMC', '999', 'NO DEFINIDO', 'CECILIA', 'PARRA', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1042, '1122142028', 'EDWIN', '3', '046', '999', 'E', '44053RGEO', '999', 'OPERATIVOS MANTENIMIENTO', 'OSWALDO', 'RIOS', 'GALLO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1043, '1122135749', 'JUAN', '3', '096', '999', 'E', '37774BOJD', '999', 'NO DEFINIDO', 'DIEGO', 'BOLIVAR', 'ORJUELA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1044, '1123114992', 'HUBER', '3', '058', '999', 'E', '17017CCHA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'CUERVO', 'CAICEDO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1045, '1006780087', 'BRAYAN', '3', '058', '999', 'E', '82112JCBY', '999', 'OPERATIVOS PLANTA EXT', 'YAMID', 'JAIMES', 'CALDERON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1046, '1122140440', 'DUVAN', '3', '058', '999', 'E', '42465CMDA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'CASTRO', 'MANJARRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1047, '1115850764', 'ALINSON', '3', '021', '999', 'E', '52789HGAI', '999', 'NO DEFINIDO', 'IVAN', 'HERNANDEZ', 'GIRON', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1048, '1005827641', 'SAIRA', '3', '021', '000', 'E', '29666NASV', '000', 'NO DEFINIDO', 'VANESSA', 'NAVARRO', 'AREVALO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1049, '1118560582', 'OLMES', '3', '021', '000', 'E', '62607TZOY', '000', 'NO DEFINIDO', 'YAIR', 'TARAZONA', 'ZORRO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1050, '1002479749', 'LINA', '3', '021', '000', 'E', '81774AHLN', '000', 'NO DEFINIDO', 'NATALIA', 'ACEVEDO', 'HURTADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1051, '1122135749', 'JUAN', '3', '120', '000', 'E', '37774BOJD', '000', 'NO DEFINIDO', 'DIEGO', 'BOLIVAR', 'ORJUELA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1052, '1006783470', 'ANTONIO', '3', '118', '003', 'A', '85495AMAM', '003', 'OPERATIVOS MANTENIMIENTO', 'MARIA', 'ALCANTAR', 'MONROY', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1056, '1007449224', 'JOSE', '3', '021', '000', 'E', '51249MHJN', '000', 'NO DEFINIDO', 'NICOLAS', 'MONTOYA', 'HERRERA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1057, '1002479749', 'LINA', '3', '125', '999', 'E', '81774AHLN', '999', 'ASISTENTES', 'NATALIA', 'ACEVEDO', 'HURTADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1058, '1000972341', 'LEIDY', '3', '125', '016', 'A', '74366AMLE', '016', 'ASISTENTES', 'ESTEFANIA', 'APONTE', 'MONTAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1059, '1122126576', 'YENIFER', '3', '015', '999', 'E', '28601BCYM', '999', 'NO DEFINIDO', 'MARCELA', 'BERNAL', 'CRUZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1061, '1024573976', 'MICHAEL', '3', '052', '999', 'E', '76001AGMJ', '999', 'AUXILIARES OPERATIVOS', 'JAVIER', 'AGUIRRE', 'GALVIS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1062, '1121933967', 'NEIDY', '3', '130', '999', 'E', '35992MTNM', '999', 'SUPERVISORES', 'MARCELA', 'MONROY', 'TINEO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1063, '1007344115', 'CRISTIAN', '3', '058', '999', 'E', '46140PBCO', '999', 'OPERATIVOS PLANTA EXT', 'OCTAVIO', 'PEÑA', 'BUITRAGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1064, '1006863053', 'OSCAR', '3', '058', '999', 'E', '65078SQOE', '999', 'OPERATIVOS PLANTA EXT', 'EDUARDO', 'SANTANILLA', 'QUINTERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1065, '1006779702', 'JULIAN', '3', '058', '999', 'E', '81727PMJF', '999', 'OPERATIVOS PLANTA EXT', 'FELIPE', 'PINZON', 'MARTINEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1066, '1006875191', 'ERIC', '3', '021', '999', 'E', '77216RSEY', '999', 'NO DEFINIDO', 'YAMID', 'RINTA', 'SAENZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1107, '6350555', 'CESAR', '3', '058', '999', 'E', '52580CVCJ', '999', 'OPERATIVOS PLANTA EXT', 'JOHAN', 'CALDERON', 'VALERO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1109, '1121148970', 'LUIS', '3', '058', '999', 'E', '50995SBLF', '999', 'OPERATIVOS PLANTA EXT', 'FERNANDO', 'SAAVEDRA', 'BARRETO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1110, '1123116409', 'JULIAN', '3', '058', '999', 'E', '18434RMJC', '999', 'OPERATIVOS PLANTA EXT', 'CAMILO', 'RAMIREZ', 'MONTAÑEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1111, '1123114099', 'NHIKOLAS', '3', '058', '999', 'E', '16124RTNA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'RODRIGUEZ', 'TORRES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1113, '1123115575', 'MERLY', '3', '085', '999', 'E', '17600MCMD', '999', 'AUXILIARES', 'DAYANA', 'MORENO', 'CARDENAS', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1114, '1122123985', 'JAVIER', '3', '046', '999', 'E', '26010GPJF', '999', 'OPERATIVOS MANTENIMIENTO', 'FELIPE', 'GUAYARA', 'PARRADO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1115, '1068346040', 'DANUIL', '3', '058', '999', 'E', '48065LDDE', '999', 'OPERATIVOS PLANTA EXT', 'EDUARDO', 'LOBO', 'DEL CRISTO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1116, '1010043103', 'JOSE', '3', '046', '999', 'E', '45128LCJD', '999', 'OPERATIVOS MANTENIMIENTO', 'DANIEL', 'LUNA', 'CAMACHO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1108, '1007308741', 'ANDRES', '3', '058', '999', 'E', '10766SBAE', '999', 'OPERATIVOS PLANTA EXT', 'ESTEBAN', 'SALAZAR', 'BENAVIDES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1089, '16463589', 'JOSE', '3', '054', '999', 'E', '65614CJA', '999', 'OPERATIVOS MANTENIMIENTO', 'ANDRES', 'CHILITO', '', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1090, '1121820534', 'CRISTIAN', '3', '058', '999', 'E', '22559CFCJ', '999', 'OPERATIVOS PLANTA EXT', 'JULIAN', 'CABALLERO', 'FEO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1091, '1193126923', 'DANIS', '3', '058', '999', 'E', '28948AMDJ', '999', 'OPERATIVOS PLANTA EXT', 'JAVIER', 'ARRIETA', 'MENDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1092, '1006721519', 'DABIAN', '3', '021', '999', 'E', '23544APDA', '999', 'NO DEFINIDO', 'ALEXANDER', 'ARENAS', 'PARRA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1094, '1006838528', 'JUAN', '3', '058', '999', 'E', '40553CSJC', '999', 'OPERATIVOS PLANTA EXT', 'CAMILO', 'CASTELLANOS', 'SANABRIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1095, '1055550398', 'YERSON', '3', '058', '999', 'E', '52423EPYA', '999', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'ESPEJO', 'PEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1096, '40433429', 'MARIA', '3', '052', '015', 'E', '35454PPME', '015', 'AUXILIARES OPERATIVOS', 'EDILMA', 'PUENTES', 'PEÑA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1097, '1096232581', 'KEVIN', '3', '058', '999', 'E', '34606GHKA', '999', 'OPERATIVOS PLANTA EXT', 'ANDRES', 'GUTIERREZ', 'HERNANDEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1098, '1006863050', 'DIEGO', '3', '058', '999', 'E', '65075MGDA', '999', 'OPERATIVOS PLANTA EXT', 'ALEJANDRO', 'MOYANO', 'GONZALEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1099, '1122119808', 'MIGUEL', '3', '058', '999', 'E', '21833TRMA', '999', 'OPERATIVOS PLANTA EXT', 'ANGEL', 'TORRES', 'RODRIGUEZ', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1101, '1123512154', 'DANILO', '3', '031', '999', 'E', '14179FAD', '999', 'OPERATIVOS PLANTA EXT', '', 'FONTECHA', 'ALFONSO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1102, '1006697266', 'JUAN', '3', '058', '999', 'E', '99291DFJF', '999', 'OPERATIVOS PLANTA EXT', 'FELIPE', 'DEL BASTO', 'FRANCO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1103, '1006838449', 'ANDRES', '3', '049', '003', 'A', '40474CCAD', '003', 'OPERATIVOS MANTENIMIENTO', 'DARIO', 'CASTELLANOS', 'CIFUENTES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1104, '5895802', 'JOSE', '3', '058', '999', 'E', '97827MCJD', '999', 'OPERATIVOS PLANTA EXT', 'DANIEL', 'MENDEZ', 'COLMENARES', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1093, '1000047346', 'JHON', '3', '058', '999', 'A', '49371GZJA', '999', 'OPERATIVOS PLANTA EXT', 'ALEXANDER', 'GOMEZ', 'ZAMBRANO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1105, '1027947140', 'CARLOS', '3', '058', '999', 'E', '49165FGCA', '999', 'OPERATIVOS PLANTA EXT', 'ALBERTO', 'FUENTES', 'GARCIA', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1106, '1052083045', 'ALBERTO', '3', '058', '999', 'E', '85070ACAM', '999', 'OPERATIVOS PLANTA EXT', 'MIGUEL', 'ACUÑA', 'CAMARGO', 2);
INSERT INTO "public"."adm_colaboradores" VALUES (1100, '1082974980', 'JESUS', '3', '058', '999', 'A', '77005MTJM', '999', 'OPERATIVOS PLANTA EXT', 'MIGUEL', 'MIRANDA', 'TUNA', 2);

-- ----------------------------
-- Table structure for adm_empresa
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_empresa";
CREATE TABLE "public"."adm_empresa" (
  "emp_id" int4 NOT NULL,
  "emp_nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of adm_empresa
-- ----------------------------
INSERT INTO "public"."adm_empresa" VALUES (1, 'OLEAGINOSAS SAN MARCOS');
INSERT INTO "public"."adm_empresa" VALUES (2, 'INVERSIONES');
INSERT INTO "public"."adm_empresa" VALUES (3, 'SEMAG DE LOS LLANOS');

-- ----------------------------
-- Table structure for adm_intentos_login
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_intentos_login";
CREATE TABLE "public"."adm_intentos_login" (
  "id" int4 NOT NULL DEFAULT nextval('adm_intentos_login_id_seq'::regclass),
  "usuario_identificador" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "tipo_usuario" varchar(20) COLLATE "pg_catalog"."default",
  "exitoso" bool NOT NULL,
  "ip_address" varchar(45) COLLATE "pg_catalog"."default",
  "user_agent" text COLLATE "pg_catalog"."default",
  "host_name" varchar(255) COLLATE "pg_catalog"."default",
  "mensaje_error" varchar(255) COLLATE "pg_catalog"."default",
  "fecha" timestamp(6) DEFAULT now()
)
;
COMMENT ON TABLE "public"."adm_intentos_login" IS 'Audit log of all login attempts (successful and failed)';

-- ----------------------------
-- Records of adm_intentos_login
-- ----------------------------
INSERT INTO "public"."adm_intentos_login" VALUES (50, '1123086261', 'colaborador', 't', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'MIAU-PC', NULL, '2025-10-25 00:12:07.346297');
INSERT INTO "public"."adm_intentos_login" VALUES (51, '1006838624', 'admin', 't', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', 'MIAU-PC', NULL, '2025-10-25 00:16:39.009241');
INSERT INTO "public"."adm_intentos_login" VALUES (52, '1122130280', 'colaborador', 't', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'MIAU-PC', NULL, '2025-10-25 01:02:18.949565');

-- ----------------------------
-- Table structure for adm_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_roles";
CREATE TABLE "public"."adm_roles" (
  "id" int4 NOT NULL DEFAULT nextval('roles_id_seq'::regclass),
  "nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of adm_roles
-- ----------------------------
INSERT INTO "public"."adm_roles" VALUES (1, 'Administrador');
INSERT INTO "public"."adm_roles" VALUES (2, 'Usuario');
INSERT INTO "public"."adm_roles" VALUES (3, 'Capacitador');
INSERT INTO "public"."adm_roles" VALUES (4, 'Aux_Capacitador');
INSERT INTO "public"."adm_roles" VALUES (5, 'Agronómico');
INSERT INTO "public"."adm_roles" VALUES (6, 'Aux_Agronómico');
INSERT INTO "public"."adm_roles" VALUES (7, 'Báscula');
INSERT INTO "public"."adm_roles" VALUES (8, 'Aux_Báscula');
INSERT INTO "public"."adm_roles" VALUES (9, 'Almacén');
INSERT INTO "public"."adm_roles" VALUES (10, 'Aux_Almacén');
INSERT INTO "public"."adm_roles" VALUES (11, 'Sup_logistica1');
INSERT INTO "public"."adm_roles" VALUES (12, 'Editor_logistica1');
INSERT INTO "public"."adm_roles" VALUES (13, 'Sup_logistica2');
INSERT INTO "public"."adm_roles" VALUES (14, 'Sup_topografo');
INSERT INTO "public"."adm_roles" VALUES (15, 'Editor_logistica2');
INSERT INTO "public"."adm_roles" VALUES (16, 'Sup_produccion');
INSERT INTO "public"."adm_roles" VALUES (17, 'Editor_produccion');
INSERT INTO "public"."adm_roles" VALUES (18, 'Sup_logi y transporte');
INSERT INTO "public"."adm_roles" VALUES (19, 'Capacitador SIE');
INSERT INTO "public"."adm_roles" VALUES (20, 'Capacitador GH');
INSERT INTO "public"."adm_roles" VALUES (21, 'Capacitador TI');
INSERT INTO "public"."adm_roles" VALUES (22, 'Capacitador MT');
INSERT INTO "public"."adm_roles" VALUES (23, 'Capacitador IND');
INSERT INTO "public"."adm_roles" VALUES (24, 'Capacitador ADM');
INSERT INTO "public"."adm_roles" VALUES (25, 'Capacitador AGR');
INSERT INTO "public"."adm_roles" VALUES (26, 'Capacitador SIE');
INSERT INTO "public"."adm_roles" VALUES (27, 'Capacitador GH');
INSERT INTO "public"."adm_roles" VALUES (28, 'Capacitador TI');
INSERT INTO "public"."adm_roles" VALUES (29, 'Capacitador MT');

-- ----------------------------
-- Table structure for adm_sesiones
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_sesiones";
CREATE TABLE "public"."adm_sesiones" (
  "id" int4 NOT NULL DEFAULT nextval('adm_sesiones_id_seq'::regclass),
  "usuario_id" int4 NOT NULL,
  "tipo_usuario" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "session_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ip_address" varchar(45) COLLATE "pg_catalog"."default",
  "user_agent" text COLLATE "pg_catalog"."default",
  "host_name" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_inicio" timestamp(6) DEFAULT now(),
  "fecha_actividad" timestamp(6) DEFAULT now(),
  "activa" bool DEFAULT true,
  "cerrada_por" int4,
  "razon_cierre" varchar(100) COLLATE "pg_catalog"."default",
  "fecha_cierre" timestamp(6)
)
;
COMMENT ON COLUMN "public"."adm_sesiones"."usuario_id" IS 'Foreign key to adm_usuarios.id or adm_colaboradores.ac_id depending on tipo_usuario';
COMMENT ON COLUMN "public"."adm_sesiones"."tipo_usuario" IS 'Type of user: admin or colaborador';
COMMENT ON COLUMN "public"."adm_sesiones"."session_id" IS 'PHP session ID';
COMMENT ON COLUMN "public"."adm_sesiones"."ip_address" IS 'IP address of the user';
COMMENT ON COLUMN "public"."adm_sesiones"."user_agent" IS 'Browser user agent string';
COMMENT ON COLUMN "public"."adm_sesiones"."host_name" IS 'Computer/host name if available';
COMMENT ON COLUMN "public"."adm_sesiones"."fecha_actividad" IS 'Last activity timestamp - updated on each request';
COMMENT ON COLUMN "public"."adm_sesiones"."activa" IS 'TRUE if session is currently active';
COMMENT ON COLUMN "public"."adm_sesiones"."cerrada_por" IS 'User ID of admin who closed the session, NULL if self logout';
COMMENT ON COLUMN "public"."adm_sesiones"."razon_cierre" IS 'Reason for session closure';
COMMENT ON TABLE "public"."adm_sesiones" IS 'Tracks all user login sessions for security and concurrent login prevention';

-- ----------------------------
-- Records of adm_sesiones
-- ----------------------------
INSERT INTO "public"."adm_sesiones" VALUES (47, 512, 'colaborador', 'ps4ji1ahjiom8klqpsct0i57hp', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'MIAU-PC', '2025-10-25 00:12:07.362249', '2025-10-25 00:18:40.779957', 'f', NULL, 'logout', '2025-10-25 01:02:07.345435');
INSERT INTO "public"."adm_sesiones" VALUES (49, 78, 'colaborador', 'bg8gcues4u5sjgq7ei76r45r35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'MIAU-PC', '2025-10-25 01:02:18.955908', '2025-10-25 01:02:48.201809', 't', NULL, NULL, NULL);
INSERT INTO "public"."adm_sesiones" VALUES (48, 3, 'admin', 'kbkie39oepvseoskr4ojl7p2pc', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', 'MIAU-PC', '2025-10-25 00:16:39.012689', '2025-10-25 01:03:04.961', 't', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for adm_situación
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_situación";
CREATE TABLE "public"."adm_situación" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "situación" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of adm_situación
-- ----------------------------
INSERT INTO "public"."adm_situación" VALUES ('E', 'Egresado');
INSERT INTO "public"."adm_situación" VALUES ('X', 'Preegresado');
INSERT INTO "public"."adm_situación" VALUES ('A', 'Activo');
INSERT INTO "public"."adm_situación" VALUES ('V', 'Vacaciones');
INSERT INTO "public"."adm_situación" VALUES ('P', 'Permiso');

-- ----------------------------
-- Table structure for adm_usuario_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_usuario_roles";
CREATE TABLE "public"."adm_usuario_roles" (
  "id" int4 NOT NULL DEFAULT nextval('adm_usuario_roles_id_seq'::regclass),
  "usuario_id" int4 NOT NULL,
  "rol_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of adm_usuario_roles
-- ----------------------------
INSERT INTO "public"."adm_usuario_roles" VALUES (1, 1, 1);
INSERT INTO "public"."adm_usuario_roles" VALUES (2, 2, 1);
INSERT INTO "public"."adm_usuario_roles" VALUES (4, 4, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (5, 5, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (6, 6, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (7, 7, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (8, 8, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (9, 9, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (10, 10, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (11, 11, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (12, 12, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (13, 13, 4);
INSERT INTO "public"."adm_usuario_roles" VALUES (14, 14, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (15, 15, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (16, 16, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (17, 17, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (18, 18, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (19, 19, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (20, 20, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (21, 21, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (22, 22, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (23, 23, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (24, 24, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (25, 25, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (26, 26, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (27, 27, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (28, 28, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (29, 29, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (30, 30, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (31, 31, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (32, 32, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (33, 33, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (35, 35, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (36, 36, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (40, 37, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (41, 34, 3);
INSERT INTO "public"."adm_usuario_roles" VALUES (42, 3, 1);
INSERT INTO "public"."adm_usuario_roles" VALUES (43, 3, 21);

-- ----------------------------
-- Table structure for adm_usuarios
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_usuarios";
CREATE TABLE "public"."adm_usuarios" (
  "id" int4 NOT NULL DEFAULT nextval('usuarios_id_seq'::regclass),
  "id_usuario" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "cedula" varchar(20) COLLATE "pg_catalog"."default",
  "nombre1" varchar(100) COLLATE "pg_catalog"."default",
  "nombre2" varchar(100) COLLATE "pg_catalog"."default",
  "apellido1" varchar(100) COLLATE "pg_catalog"."default",
  "apellido2" varchar(100) COLLATE "pg_catalog"."default",
  "contraseña" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" varchar(255) COLLATE "pg_catalog"."default" DEFAULT 'avatar1.jpeg'::character varying,
  "estado_us" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of adm_usuarios
-- ----------------------------
INSERT INTO "public"."adm_usuarios" VALUES (1, '123456789', '123456789', 'Admin', 'usuario', 'Principal', 'admin', '$2y$10$/fjM7rEnJeRM/YezqFNUn.NRgh7jOHrBA9jSgKwNoiVtY7WTkgVDq', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (4, '1000972341', '1000972341', 'Leidy', 'Estefania', 'Aponte', 'Montañez', '$2y$10$CyI63XAZPrOjzq5QM4cYyeUY9Od1OZ81jj0Rni2fc8PFx2sCRwZF6', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (5, '1125476642', '1125476642', 'Ingrid', 'Tatiana', 'Jaramillo', 'Uribe', '$2y$10$Mfj8IuUDw60hOA/UTac/mem7yVNVZVpqwJNXr5jNZ9mzFosN6BIVi', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (6, '1122138443', '1122138443', 'Jefrey', '', 'Andrade', 'Bolivar', '$2y$10$xdpJcJj35XZurH1elgVvl.aIILOdTRVa2TcD1lXwBhwap3QiMNn26', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (7, '1121875256', '1121875256', 'Sofia', 'Paola', 'Cubillos', 'Patiño', '$2y$10$Xjf5rPDfxG8LO2fIzoG5/uYdp33c9EfxYLQZ4fEIbfScuoqTXca1K', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (8, '1000972343', '1000972343', 'Laura', 'Katerin', 'Aponte', 'Montañez', '$2y$10$/./GrYNXXfxpLvxVhTfCSOEUKEDOXKZGfZdHjA9s2YJYi9eAejKgS', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (9, '1121823601', '1121823601', 'Diego', 'Fernando', 'Camacho', 'Ureña', '$2y$10$sRq.kItF7Qpk/5ioBjtghes3NoNMOnNWuqFmR2w8OH/3R1GZjNc9y', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (10, '1122118911', '1122118911', 'Sandra', 'Liliana', 'Guevara', 'Velasquez', '$2y$10$eCx9kB1Uzlo4gA3FtS7Z8uVI0Us1NqeANuGMUnA/mewOQrLWhqiUC', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (11, '1006658935', '1006658935', 'Nidia', 'Jhoana', 'Reyes', 'Rodriguez', '$2y$10$B67Ifbzjyv5DS/3DLJny5eLXUp.B13wMUmMtzUVYLIE2DJ7As29o2', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (12, '1123116616', '1123116616', 'Martha', 'Yuranis', 'Lopez', 'Noreña', '$2y$10$vMg5R704LXZ3Nj2ppn28/.yEOBtugNOPcXpPiVvVdQuf3ixDbDeT.', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (13, '1000160932', '1000160932', 'Yury', 'Nayelly', 'Gualteros', 'Ospina', '$2y$10$aHbUSL3z.cmd79.fVVLhyOrHqzF5qaMv5P2/yCvsbFpFYcqPwEGMO', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (14, '74846079', '74846079', 'Aristobulo', '', 'Beltran', 'Mora', '$2y$10$QgqE73g8v6fjfjP5xSYVCeJDFpjsB87oFuq8QGVJqAIew7ubpuzFu', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (15, '52900115', '52900115', 'Diana', 'Constanza', 'Rieros', 'Medina', '$2y$10$Z0T9uHya5aa5r65fk6iyXu32Txo5nO12krhF/Fkr/tPGtdOPH1bEC', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (16, '79951026', '79951026', 'Diego', 'Manuel', 'Riveros', 'Santamaria', '$2y$10$TVZcNytwFuGJxwHb1mIw5uzGX6tXJp1mN9R9/Ds1EHiFyzlVciVsW', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (17, '79636045', '79636045', 'Edwin', 'Olimpo', 'Delgado', 'Mendoza', '$2y$10$yj0iSxeIx0ohz0xIHv/FjOumnzsxgG4fbbvgq.auVcgTn3tr9StPG', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (18, '83230060', '83230060', 'Adolfo', '', 'Parra', 'Vargas', '$2y$10$PxtYIkulBZxVjUX5vUZpceqNA9saEcCqMcUCz6/aoW3HyrmJMrvN2', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (19, '17419215', '17419215', 'Ali', 'Yovan', 'Azuero', 'Lozano', '$2y$10$APuMVO0563x3HNgGRuXN7u7xUZCVG4S4cAJsuKubhOMf72/SoG0Ze', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (20, '86043385', '86043385', 'Jorge', 'Alexander', 'Silva', 'Cruz', '$2y$10$yOh/iMSJ2rdxrk1N0j/DhuBkqtqjcQzUPK483nvmtHIF.ckbS/y0C', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (21, '1122129144', '1122129144', 'Dumar', 'Israel', 'Rojas', 'Hernandez', '$2y$10$Y1jZ7soAEa1PEtFyAErHxONXakVdEKU7uXIikIhPShUVyhKnbAnE2', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (22, '86069473', '86069473', 'Hector', 'Geovany', 'Romero', 'Gaviria', '$2y$10$l8EWu3I9hFbgnG9VpZfpLebD8tdog23O69swnleK/zgJWqVeuVDXq', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (23, '1123114665', '1123114665', 'Camila', '', 'Baez', 'Dueñas', '$2y$10$Gx8PQLUIjFilP.CsDB8J4OH0S7PW/3XfBTvu9m6A/CRWkNbZ1Qv6e', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (24, '13520681', '13520681', 'Edwar', 'Arturo', 'Rojas', 'Prada', '$2y$10$AHA7Xa7BpS33Y3EjukzaleazZ0hYxezQUFbUnYZ/IO2uIFmdwpfBK', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (25, '1121941500', '1121941500', 'Janerson', '', 'Viveros', 'Panameño', '$2y$10$qDq0k7e21//w/.sMDeSbVeKEdCG43AVUBTYXZaeCLkmWUy2ANKILy', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (26, '1122130280', '1122130280', 'Jenny', 'Patricia', 'Lemus', 'Ardila', '$2y$10$2UuiQok..xRhZ47ivG2rMuxeO/ReZPo5uk1by1j.XjHx8gCcW7KTq', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (27, '86013949', '86013949', 'Faver', '', 'Hernandez', 'Arredondo', '$2y$10$7P4vjzC8shR.93ExzRnCdOnMBFWIO3.WX8cv7vERw0M3ts2dD0W0W', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (28, '1007221883', '1007221883', 'Israel', '', 'Ramirez', 'Rios', '$2y$10$OSVxTipKOwF5kkp1MYjPheQcpfDMiwl4euyurqFe02vHy1eHfW8jy', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (29, '1032443022', '1032443022', 'Anlly', 'Julieth', 'Garzon', 'Rojas', '$2y$10$MtmbrXvgX2Tb0z2r4HXkLeKZ0xFx6UgV4Eb275efRNZczu8iU0jJK', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (30, '1122137853', '1122137853', 'Denis', 'Carolina', 'Reina', 'Tellez', '$2y$10$yfSSfI9Qu6mRbjtDSuE3J.ATBs6RSoGyYnJYQYm3t4XqJJQ9.kWta', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (31, '1122652148', '1122652148', 'Wilmer', 'Eliecer', 'Romero', 'Lopez', '$2y$10$nPAP0E1H93dA4wuLVVglAucVo72qWiU6W2aSOmsqsTPKR0Oz.SVeC', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (32, '1070603190', '1070603190', 'Jonathan', 'Harvey', 'Poveda', 'Rico', '$2y$10$4RRak234/NMDKol4abMeLuizf/mqjw0nkbpj.OCb8yDLTDnaV7nu2', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (33, '1006823065', '1006823065', 'Andrea', 'Natalia', 'Mosquera', 'Perdomo', '$2y$10$us8/tDauTSnsQMiFNeCzHORatrCuFaoMokTx5SgwS23.P5LrZ/YVS', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (35, '1122127448', '1122127448', 'Maryori', 'Jhoana', 'Arias', 'Sanchez', '$2y$10$ZYpUOddBBjI6HyZzTJE9dewEjTEV0yfGNZuza.PlQ3Djj0mjg.iiW', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (36, '17422976', '17422976', 'Mauricio', '', 'Gomez', 'Cruz', '$2y$10$xn1lde2LckF4p3mv9HZV2.H7lFiZNQkOXNQGl0Sc3of4PCxAPNiLS', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (2, '1121866104', '1121866104', 'Alba', 'Lucia', 'Salcedo', 'Rivas', '$2y$10$yxRThMI0D3bHIezlFmA/6eiBoiVKkKJDDbXw2BJDxe9LAhFD3g3ZK', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (37, '1123512579', '1123512579', 'Pasante', '', 'Administrativo', '', '$2y$10$rBF.MzhFcFZQFpQk/lK0n.yH/yf64KZwdZGZx0F1WOMKFXidy0rxC', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (34, '1122134580', '1122134580', 'Luz', 'Irene', 'Saavedra', 'Zarate', '$2y$10$vNxir0I2MUhKVaYGW2MgPu/54CcjcJko9CKA03lCeUmSAdP160c4a', 'avatar1.jpeg', '1');
INSERT INTO "public"."adm_usuarios" VALUES (3, '1006838624', '1006838624', 'Lina', 'Paola', 'Gutierrez', 'Jara', '$2y$10$5SW0pR5LMUnH5hzOIoZ9c.6Ps.503mDQ19BC38qJxcuDfBDVY4shC', 'avatar1.jpeg', '1');

-- ----------------------------
-- Table structure for adm_área
-- ----------------------------
DROP TABLE IF EXISTS "public"."adm_área";
CREATE TABLE "public"."adm_área" (
  "id_area" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "area" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "sub_area" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of adm_área
-- ----------------------------
INSERT INTO "public"."adm_área" VALUES ('001', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA');
INSERT INTO "public"."adm_área" VALUES ('002', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA');
INSERT INTO "public"."adm_área" VALUES ('003', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL');
INSERT INTO "public"."adm_área" VALUES ('004', 'FRUTA PROVEEDORES', 'FRUTA PROVEEDORES');
INSERT INTO "public"."adm_área" VALUES ('005', 'ADMINISTRACION', 'ADMINISTRACION');
INSERT INTO "public"."adm_área" VALUES ('006', 'ADMINISTRACION', 'ALMACEN');
INSERT INTO "public"."adm_área" VALUES ('007', 'AGRONOMICA', 'AGRONOMICA');
INSERT INTO "public"."adm_área" VALUES ('008', 'LOGISTICA Y COSECHA', 'SANIDAD');
INSERT INTO "public"."adm_área" VALUES ('009', 'PRODUCCION AGRICOLA', 'POLINIZACION');
INSERT INTO "public"."adm_área" VALUES ('010', 'ADMINISTRACION', 'COMPRAS');
INSERT INTO "public"."adm_área" VALUES ('011', 'ADMINISTRACION', 'CLIPA - SISTEMAS');
INSERT INTO "public"."adm_área" VALUES ('012', 'ADMINISTRACION', 'CONTABILIDAD');
INSERT INTO "public"."adm_área" VALUES ('013', 'ADMINISTRACION', 'VENTAS');
INSERT INTO "public"."adm_área" VALUES ('014', 'PLANTA EXTRACTORA', 'BASCULA');
INSERT INTO "public"."adm_área" VALUES ('015', 'PLANTA EXTRACTORA', 'LABORATORIO');
INSERT INTO "public"."adm_área" VALUES ('016', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA');
INSERT INTO "public"."adm_área" VALUES ('017', 'COMPOST', 'COMPOST');
INSERT INTO "public"."adm_área" VALUES ('999', 'POR ASIGNAR', 'POR ASIGNAR');
INSERT INTO "public"."adm_área" VALUES ('000', '- SIN PROYECTO -', '- SIN PROYECTO -');

-- ----------------------------
-- Table structure for agr_fecha_corte
-- ----------------------------
DROP TABLE IF EXISTS "public"."agr_fecha_corte";
CREATE TABLE "public"."agr_fecha_corte" (
  "id_fc" int4 NOT NULL DEFAULT nextval('agr_fecha_corte_id_fc_seq'::regclass),
  "fecha_corte" date NOT NULL DEFAULT ('now'::text)::date
)
;

-- ----------------------------
-- Records of agr_fecha_corte
-- ----------------------------
INSERT INTO "public"."agr_fecha_corte" VALUES (1, '2024-08-06');

-- ----------------------------
-- Table structure for cap_formulario
-- ----------------------------
DROP TABLE IF EXISTS "public"."cap_formulario";
CREATE TABLE "public"."cap_formulario" (
  "id" int4 NOT NULL DEFAULT nextval('formulario_id_seq'::regclass),
  "id_proceso" int4,
  "id_lugar" int4,
  "id_usuario" int4,
  "id_tipo_actividad" int4,
  "id_tema" int4,
  "hora_inicio" time(6),
  "hora_final" time(6),
  "fecha" date,
  "observaciones" text COLLATE "pg_catalog"."default",
  "archivo_adjunto" varchar(255) COLLATE "pg_catalog"."default",
  "creado_por" int4,
  "editado_por" int4,
  "fecha_creacion" timestamp(6) DEFAULT now(),
  "fecha_edicion" timestamp(6)
)
;
COMMENT ON COLUMN "public"."cap_formulario"."archivo_adjunto" IS 'Filename of attached PDF or image file (stored in m_capacitaciones/formulario/[id]/)';
COMMENT ON COLUMN "public"."cap_formulario"."creado_por" IS 'ID del usuario que creó el formulario';
COMMENT ON COLUMN "public"."cap_formulario"."editado_por" IS 'ID del usuario que editó por última vez el formulario';
COMMENT ON COLUMN "public"."cap_formulario"."fecha_creacion" IS 'Fecha y hora de creación del formulario';
COMMENT ON COLUMN "public"."cap_formulario"."fecha_edicion" IS 'Fecha y hora de la última edición del formulario';

-- ----------------------------
-- Records of cap_formulario
-- ----------------------------
INSERT INTO "public"."cap_formulario" VALUES (2, 8, 6, 35, 1, 26, '07:00:00', '00:00:00', '2024-11-14', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (3, 8, 6, 35, 2, 26, '07:00:00', '14:00:00', '2024-07-05', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (4, 8, 6, 35, 2, 43, '07:00:00', '10:00:00', '2024-07-12', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (5, 8, 6, 35, 2, 1, '07:00:00', '10:00:00', '2024-07-12', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (6, 8, 6, 35, 1, 26, '07:40:00', '10:00:00', '2024-09-03', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (90, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-12-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (8, 8, 6, 35, 2, 26, '07:00:00', '10:00:00', '2024-09-15', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:03:29.548773');
INSERT INTO "public"."cap_formulario" VALUES (9, 8, 6, 35, 2, 47, '07:00:00', '09:00:00', '2024-09-21', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:03:56.612102');
INSERT INTO "public"."cap_formulario" VALUES (10, 8, 6, 35, 2, 1, '07:00:00', '10:00:00', '2024-10-31', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:04:40.17553');
INSERT INTO "public"."cap_formulario" VALUES (11, 8, 4, 35, 1, 26, '07:00:00', '14:00:00', '2024-11-05', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:06:08.508524');
INSERT INTO "public"."cap_formulario" VALUES (12, 8, 6, 35, 2, 43, '07:00:00', '10:00:00', '2024-11-05', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:06:19.784406');
INSERT INTO "public"."cap_formulario" VALUES (13, 8, 6, 35, 5, 26, '07:00:00', '00:00:00', '2024-11-16', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:07:01.427638');
INSERT INTO "public"."cap_formulario" VALUES (15, 8, 10, 36, 2, 43, '07:00:00', '10:00:00', '2025-01-21', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:08:21.450162');
INSERT INTO "public"."cap_formulario" VALUES (16, 8, 6, 27, 5, 43, '07:00:00', '00:00:00', '2025-02-14', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:09:30.2559');
INSERT INTO "public"."cap_formulario" VALUES (17, 8, 6, 27, 5, 43, '07:00:00', '00:00:00', '2025-03-17', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:10:37.339354');
INSERT INTO "public"."cap_formulario" VALUES (18, 8, 10, 35, 2, 43, '07:00:00', '10:00:00', '2025-03-26', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (19, 8, 11, 27, 5, 43, '07:00:00', '00:01:00', '2025-04-07', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (20, 8, 9, 35, 2, 78, '07:00:00', '10:00:00', '2024-11-08', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (21, 8, 4, 35, 1, 26, '07:00:00', '14:00:00', '2025-01-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (23, 8, 12, 35, 2, 47, '07:00:00', '10:00:00', '2025-01-22', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (24, 8, 10, 35, 2, 44, '07:00:00', '10:00:00', '2025-01-22', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (25, 8, 10, 35, 2, 43, '07:00:00', '10:00:00', '2025-02-04', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (26, 8, 4, 35, 1, 26, '07:00:00', '14:00:00', '2025-02-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (27, 8, 6, 35, 2, 78, '07:00:00', '10:00:00', '2025-02-15', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (28, 2, 6, 35, 2, 3, '07:00:00', '10:00:00', '2025-02-12', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (29, 8, 10, 35, 2, 47, '07:00:00', '10:00:00', '2025-02-26', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (30, 8, 6, 35, 2, 45, '07:00:00', '10:00:00', '2025-03-03', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (32, 8, 12, 35, 2, 45, '07:00:00', '10:00:00', '2025-03-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (33, 8, 6, 35, 2, 45, '07:00:00', '10:00:00', '2025-03-19', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (34, 8, 10, 35, 5, 26, '07:00:00', '10:00:00', '2025-03-20', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (35, 8, 10, 35, 5, 26, '07:00:00', '00:00:00', '2025-03-21', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (36, 8, 6, 35, 5, 78, '07:00:00', '00:00:00', '2025-04-01', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (37, 8, 6, 35, 5, 26, '07:00:00', '00:00:00', '2025-05-02', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (92, 9, 13, 34, 5, 53, '07:00:00', '07:00:00', '2025-03-10', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (39, 8, 4, 10, 1, 24, '07:00:00', '14:00:00', '2024-07-06', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (40, 8, 4, 10, 1, 50, '07:00:00', '14:00:00', '2024-07-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (41, 8, 4, 32, 1, 51, '07:00:00', '14:00:00', '2024-07-18', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (42, 8, 4, 32, 1, 51, '07:00:00', '14:00:00', '2024-07-18', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (43, 8, 4, 32, 1, 51, '07:00:00', '19:00:00', '2024-08-21', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (44, 8, 4, 32, 1, 51, '07:00:00', '14:00:00', '2024-08-21', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (45, 8, 4, 10, 1, 51, '07:00:00', '14:00:00', '2024-09-08', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (47, 8, 4, 32, 1, 51, '07:00:00', '14:00:00', '2024-09-16', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (48, 8, 4, 32, 1, 26, '07:00:00', '14:00:00', '2024-11-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (49, 8, 4, 10, 1, 51, '07:00:00', '14:00:00', '2024-12-18', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (50, 8, 12, 24, 5, 27, '07:00:00', '00:00:00', '2025-02-04', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (51, 8, 10, 24, 5, 27, '07:00:00', '00:00:00', '2025-01-12', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (52, 8, 6, 35, 1, 26, '07:00:00', '14:00:00', '2025-05-08', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (53, 8, 12, 24, 5, 27, '07:00:00', '00:00:00', '2025-04-09', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (54, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-11-05', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (56, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (57, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-12-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (58, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (59, 9, 13, 34, 5, 53, '07:00:00', '10:00:00', '2024-03-19', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (60, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-14', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (61, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-07', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (62, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (64, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-19', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (65, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-12-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (66, 9, 13, 34, 5, 53, '18:08:00', '00:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (67, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (68, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-05-02', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (69, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-14', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (70, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-04-03', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (72, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-03', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (73, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-12-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (74, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-02-14', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (75, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-01-17', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (76, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-05-12', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (77, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-05-02', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (78, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-14', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (79, 9, 13, 34, 5, 53, '07:00:00', '07:00:00', '2024-11-08', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (81, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-19', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (82, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (83, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-19', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (84, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (85, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-01-22', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (87, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-04-28', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (88, 9, 13, 34, 5, 53, '07:00:00', '07:00:00', '2025-03-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (93, 9, 13, 34, 5, 53, '07:00:00', '07:00:00', '2025-03-10', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (94, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-07', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (95, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-12-02', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (96, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-02-15', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (98, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-02-10', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (99, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-12', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (100, 9, 13, 34, 5, 53, '07:00:00', '07:00:00', '2025-01-24', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (101, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-01-29', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (102, 5, 10, 29, 5, 4, '07:00:00', '00:00:00', '2025-06-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (103, 5, 10, 29, 5, 4, '07:00:00', '00:00:00', '2025-06-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (104, 9, 2, 34, 2, 78, '07:00:00', '10:00:00', '2024-12-16', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (106, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-01-14', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (107, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-02-17', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (108, 9, 2, 34, 2, 49, '07:00:00', '10:00:00', '2025-06-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (109, 9, 2, 34, 2, 51, '07:00:00', '10:00:00', '2025-01-29', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (110, 9, 10, 34, 1, 54, '07:00:00', '14:00:00', '2025-01-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (111, 9, 10, 34, 1, 54, '07:00:00', '14:00:00', '2025-01-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (112, 9, 10, 34, 2, 54, '07:00:00', '10:00:00', '2025-01-14', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (114, 9, 2, 34, 2, 54, '07:00:00', '10:00:00', '2025-01-16', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (115, 8, 12, 34, 1, 54, '07:00:00', '14:00:00', '2025-01-15', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (116, 9, 6, 34, 2, 47, '07:00:00', '10:00:00', '2025-01-28', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (117, 8, 11, 34, 2, 42, '07:00:00', '10:00:00', '2025-01-08', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (118, 8, 6, 34, 2, 42, '07:00:00', '10:00:00', '2025-01-07', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (119, 8, 10, 34, 2, 42, '07:00:00', '10:00:00', '2025-01-10', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (120, 9, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-03-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (121, 9, 2, 34, 2, 43, '07:00:00', '10:00:00', '2025-03-25', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (123, 9, 2, 34, 2, 42, '07:00:00', '10:00:00', '2025-01-25', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (124, 9, 2, 34, 2, 42, '07:00:00', '10:00:00', '2025-01-08', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (125, 9, 2, 34, 2, 42, '07:00:00', '10:00:00', '2025-01-09', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (126, 8, 10, 34, 2, 42, '07:00:00', '10:00:00', '2025-06-08', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (127, 8, 10, 34, 2, 42, '07:00:00', '10:00:00', '2025-01-07', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (128, 9, 2, 34, 2, 1, '07:00:00', '10:00:00', '2025-01-18', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (129, 9, 2, 34, 2, 1, '07:00:00', '10:00:00', '2025-01-04', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (131, 5, 9, 34, 2, 45, '07:00:00', '10:00:00', '2025-01-16', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (132, 5, 6, 34, 2, 45, '07:00:00', '10:00:00', '2025-01-16', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (133, 8, 10, 34, 2, 45, '07:00:00', '10:00:00', '2025-01-15', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (134, 8, 6, 34, 2, 22, '07:00:00', '10:00:00', '2025-01-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (135, 9, 2, 34, 2, 22, '07:00:00', '10:00:00', '2025-01-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (136, 9, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-01-23', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (137, 9, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-01-23', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (139, 9, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-01-20', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (140, 8, 6, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-19', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (141, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-20', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (142, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-24', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (143, 8, 10, 34, 2, 42, '07:00:00', '10:00:00', '2025-02-21', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (144, 8, 6, 34, 2, 48, '07:00:00', '10:00:00', '2025-02-24', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (145, 8, 6, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-04', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (146, 8, 6, 34, 2, 47, '07:00:00', '10:00:00', '2025-02-07', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (148, 9, 13, 34, 1, 53, '07:00:00', '12:00:00', '2025-02-15', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (149, 1, 2, 34, 1, 45, '07:00:00', '14:00:00', '2025-02-10', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (150, 8, 12, 34, 2, 47, '07:00:00', '10:00:00', '2025-02-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (151, 5, 9, 34, 1, 51, '07:00:00', '14:00:00', '2025-02-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (152, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-06', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (153, 8, 10, 34, 2, 45, '07:00:00', '10:00:00', '2025-05-02', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (154, 8, 6, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-04', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (156, 8, 6, 34, 2, 47, '07:00:00', '10:00:00', '2025-01-27', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (157, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-17', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (158, 8, 6, 34, 2, 49, '07:00:00', '10:00:00', '2025-02-07', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (159, 8, 6, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (160, 5, 9, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (161, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-01', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (162, 1, 2, 34, 2, 53, '07:00:00', '10:00:00', '2025-02-12', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (164, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-02-05', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (165, 8, 6, 34, 2, 47, '07:00:00', '10:00:00', '2025-02-06', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (166, 5, 9, 34, 2, 47, '07:00:00', '10:00:00', '2025-02-03', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (167, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-03', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (168, 8, 4, 34, 1, 45, '07:00:00', '14:00:00', '2025-03-13', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (169, 1, 2, 34, 2, 57, '07:00:00', '10:00:00', '2025-03-15', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (170, 1, 2, 34, 2, 43, '07:00:00', '10:00:00', '2025-03-18', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (171, 8, 6, 34, 1, 45, '07:00:00', '14:00:00', '2025-03-06', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (173, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-03-10', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (174, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-03-10', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (175, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-27', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (176, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-03-03', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (177, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-03-25', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (89, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-10-05', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (91, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-03', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (22, 8, 12, 35, 2, 43, '07:00:00', '10:00:00', '2025-01-14', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (31, 8, 10, 35, 2, 26, '07:00:00', '10:00:00', '2025-03-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (38, 3, 4, 29, 5, 4, '07:00:00', '02:00:00', '2024-09-16', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (46, 8, 4, 32, 1, 51, '06:00:00', '14:00:00', '2024-09-16', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (55, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-12-11', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (63, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (71, 9, 12, 34, 5, 53, '07:00:00', '00:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (80, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-05-12', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (86, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2024-11-19', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (97, 9, 13, 34, 5, 53, '07:00:00', '00:00:00', '2025-03-10', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (105, 1, 2, 34, 2, 69, '07:00:00', '10:00:00', '2025-01-15', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (113, 9, 2, 34, 2, 54, '07:00:00', '10:00:00', '2025-01-15', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (122, 8, 6, 34, 2, 42, '07:00:00', '10:00:00', '2025-01-09', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (130, 8, 10, 34, 2, 45, '07:00:00', '10:00:00', '2025-01-16', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (138, 9, 2, 34, 1, 45, '07:00:00', '14:00:00', '2025-01-22', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (147, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-02-08', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (155, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-02-27', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (163, 5, 9, 34, 2, 52, '07:00:00', '10:00:00', '2025-02-10', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (172, 1, 2, 34, 2, 52, '07:00:00', '10:00:00', '2025-03-06', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (178, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-03-26', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (179, 1, 2, 34, 2, 79, '07:00:00', '10:00:00', '2025-03-27', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (180, 1, 2, 34, 2, 53, '07:00:00', '10:00:00', '2025-03-28', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (181, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-03-29', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (182, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-03-31', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (183, 1, 2, 34, 2, 44, '07:00:00', '10:00:00', '2025-03-31', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (184, 1, 2, 34, 2, 44, '07:00:00', '10:00:00', '2025-03-20', '', NULL, 37, NULL, '2025-10-22 21:00:43.438988', NULL);
INSERT INTO "public"."cap_formulario" VALUES (186, 1, 2, 34, 2, 42, '07:00:00', '10:00:00', '2025-04-10', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 07:04:36.501594');
INSERT INTO "public"."cap_formulario" VALUES (187, 1, 2, 34, 2, 42, '07:00:00', '10:00:00', '2025-04-10', '', NULL, 37, NULL, '2025-10-23 07:09:48.878587', NULL);
INSERT INTO "public"."cap_formulario" VALUES (210, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-05-08', '', NULL, 37, NULL, '2025-10-23 09:19:02.552577', NULL);
INSERT INTO "public"."cap_formulario" VALUES (221, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-05-06', '', NULL, 37, NULL, '2025-10-23 10:11:11.553797', NULL);
INSERT INTO "public"."cap_formulario" VALUES (222, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-05-10', '', NULL, 37, NULL, '2025-10-23 10:14:08.660422', NULL);
INSERT INTO "public"."cap_formulario" VALUES (185, 1, 2, 34, 2, 1, '07:00:00', '10:00:00', '2025-03-26', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 07:03:37.264496');
INSERT INTO "public"."cap_formulario" VALUES (188, 1, 2, 34, 2, 46, '07:00:00', '10:00:00', '2025-04-01', '', NULL, 37, NULL, '2025-10-23 07:14:11.483603', NULL);
INSERT INTO "public"."cap_formulario" VALUES (189, 1, 2, 34, 2, 1, '07:00:00', '10:00:00', '2025-04-03', '', NULL, 37, NULL, '2025-10-23 07:21:19.284657', NULL);
INSERT INTO "public"."cap_formulario" VALUES (190, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-04-05', '', NULL, 37, NULL, '2025-10-23 07:25:29.744034', NULL);
INSERT INTO "public"."cap_formulario" VALUES (191, 1, 2, 34, 2, 54, '07:00:00', '10:00:00', '2025-04-05', '', NULL, 37, NULL, '2025-10-23 07:32:17.67322', NULL);
INSERT INTO "public"."cap_formulario" VALUES (192, 1, 4, 34, 1, 1, '07:00:00', '14:00:00', '2025-04-07', '', NULL, 37, NULL, '2025-10-23 07:36:51.762064', NULL);
INSERT INTO "public"."cap_formulario" VALUES (193, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-04-09', '', NULL, 37, NULL, '2025-10-23 07:44:14.731175', NULL);
INSERT INTO "public"."cap_formulario" VALUES (195, 1, 2, 34, 2, 1, '07:00:00', '10:00:00', '2025-04-02', '', NULL, 37, NULL, '2025-10-23 07:51:23.501293', NULL);
INSERT INTO "public"."cap_formulario" VALUES (196, 8, 10, 34, 1, 27, '07:00:00', '14:00:00', '2025-04-16', '', NULL, 37, NULL, '2025-10-23 07:56:28.577189', NULL);
INSERT INTO "public"."cap_formulario" VALUES (197, 1, 2, 34, 2, 53, '07:00:00', '10:00:00', '2025-04-15', '', NULL, 37, NULL, '2025-10-23 07:59:52.450521', NULL);
INSERT INTO "public"."cap_formulario" VALUES (198, 1, 2, 34, 2, 1, '07:00:00', '10:00:00', '2025-04-10', '', NULL, 37, NULL, '2025-10-23 08:04:00.119693', NULL);
INSERT INTO "public"."cap_formulario" VALUES (199, 1, 2, 34, 2, 79, '07:00:00', '10:00:00', '2024-04-10', '', NULL, 37, NULL, '2025-10-23 08:07:11.666529', NULL);
INSERT INTO "public"."cap_formulario" VALUES (200, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-04-12', '', NULL, 37, NULL, '2025-10-23 08:11:20.476337', NULL);
INSERT INTO "public"."cap_formulario" VALUES (201, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-04-16', '', NULL, 37, NULL, '2025-10-23 08:18:58.82902', NULL);
INSERT INTO "public"."cap_formulario" VALUES (202, 1, 2, 34, 2, 79, '07:00:00', '10:00:00', '2025-04-21', '', NULL, 37, NULL, '2025-10-23 08:27:06.198275', NULL);
INSERT INTO "public"."cap_formulario" VALUES (204, 1, 2, 34, 2, 46, '07:00:00', '10:00:00', '2025-04-23', '', NULL, 37, NULL, '2025-10-23 08:45:56.613147', NULL);
INSERT INTO "public"."cap_formulario" VALUES (205, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-04-24', '', NULL, 37, NULL, '2025-10-23 08:51:08.679228', NULL);
INSERT INTO "public"."cap_formulario" VALUES (206, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-04-24', '', NULL, 37, NULL, '2025-10-23 08:54:53.741294', NULL);
INSERT INTO "public"."cap_formulario" VALUES (207, 1, 2, 34, 2, 54, '07:00:00', '10:00:00', '2025-04-26', '', NULL, 37, NULL, '2025-10-23 08:59:09.566017', NULL);
INSERT INTO "public"."cap_formulario" VALUES (208, 1, 2, 34, 2, 1, '07:00:00', '10:00:00', '2025-06-28', '', NULL, 37, NULL, '2025-10-23 09:06:45.422487', NULL);
INSERT INTO "public"."cap_formulario" VALUES (209, 1, 2, 34, 2, 1, '07:00:00', '10:00:00', '2025-04-28', '', NULL, 37, 37, '2025-10-23 09:08:24.100109', '2025-10-23 09:13:00.282394');
INSERT INTO "public"."cap_formulario" VALUES (211, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-04-30', '', NULL, 37, NULL, '2025-10-23 09:24:25.68793', NULL);
INSERT INTO "public"."cap_formulario" VALUES (213, 8, 10, 34, 1, 54, '07:00:00', '14:00:00', '2025-03-11', '', NULL, 37, NULL, '2025-10-23 09:37:59.908031', NULL);
INSERT INTO "public"."cap_formulario" VALUES (215, 8, 6, 34, 2, 45, '07:00:00', '10:00:00', '2025-01-21', '', NULL, 37, NULL, '2025-10-23 09:41:25.046829', NULL);
INSERT INTO "public"."cap_formulario" VALUES (216, 8, 6, 34, 2, 47, '07:00:00', '10:00:00', '2025-05-01', '', NULL, 37, NULL, '2025-10-23 09:48:23.437897', NULL);
INSERT INTO "public"."cap_formulario" VALUES (217, 8, 6, 10, 2, 78, '07:00:00', '10:00:00', '2025-04-28', '', NULL, 37, NULL, '2025-10-23 09:55:02.309321', NULL);
INSERT INTO "public"."cap_formulario" VALUES (218, 1, 6, 10, 2, 78, '07:00:00', '10:00:00', '2025-04-28', '', NULL, 37, NULL, '2025-10-23 09:57:47.764262', NULL);
INSERT INTO "public"."cap_formulario" VALUES (219, 1, 6, 10, 2, 78, '07:00:00', '10:00:00', '2025-04-28', '', NULL, 37, NULL, '2025-10-23 10:03:27.312306', NULL);
INSERT INTO "public"."cap_formulario" VALUES (223, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-05-19', '', NULL, 37, NULL, '2025-10-23 10:22:06.942731', NULL);
INSERT INTO "public"."cap_formulario" VALUES (224, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-05-19', '', NULL, 37, NULL, '2025-10-23 10:25:58.765829', NULL);
INSERT INTO "public"."cap_formulario" VALUES (225, 1, 2, 34, 2, 43, '07:00:00', '10:00:00', '2025-05-22', '', NULL, 37, NULL, '2025-10-23 10:30:16.940195', NULL);
INSERT INTO "public"."cap_formulario" VALUES (226, 1, 2, 34, 2, 46, '07:00:00', '10:00:00', '2025-05-24', '', NULL, 37, NULL, '2025-10-23 10:34:59.692434', NULL);
INSERT INTO "public"."cap_formulario" VALUES (227, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-05-26', '', NULL, 37, NULL, '2025-10-23 10:40:03.867533', NULL);
INSERT INTO "public"."cap_formulario" VALUES (228, 1, 2, 34, 2, 45, '07:00:00', '10:00:00', '2025-05-26', '', NULL, 37, NULL, '2025-10-23 10:51:31.477227', NULL);
INSERT INTO "public"."cap_formulario" VALUES (229, 1, 2, 34, 2, 43, '07:00:00', '10:00:00', '2025-05-28', '', NULL, 37, NULL, '2025-10-23 10:57:20.986521', NULL);
INSERT INTO "public"."cap_formulario" VALUES (230, 8, 4, 34, 1, 45, '07:00:00', '14:00:00', '2025-05-30', '', NULL, 37, NULL, '2025-10-23 11:02:21.111158', NULL);
INSERT INTO "public"."cap_formulario" VALUES (232, 1, 2, 34, 2, 46, '07:00:00', '10:00:00', '2025-05-31', '', NULL, 37, NULL, '2025-10-23 11:15:15.294113', NULL);
INSERT INTO "public"."cap_formulario" VALUES (233, 1, 2, 34, 1, 47, '07:00:00', '14:00:00', '2025-06-09', '', NULL, 37, NULL, '2025-10-23 11:21:27.494815', NULL);
INSERT INTO "public"."cap_formulario" VALUES (234, 1, 2, 34, 1, 47, '07:00:00', '14:00:00', '2025-06-09', '', NULL, 37, NULL, '2025-10-23 11:27:01.234855', NULL);
INSERT INTO "public"."cap_formulario" VALUES (235, 1, 2, 34, 1, 47, '07:00:00', '14:00:00', '2025-06-09', '', NULL, 37, NULL, '2025-10-23 11:29:15.469208', NULL);
INSERT INTO "public"."cap_formulario" VALUES (238, 8, 4, 34, 2, 47, '07:00:00', '10:00:00', '2025-06-12', '', NULL, 37, NULL, '2025-10-23 11:43:42.129437', NULL);
INSERT INTO "public"."cap_formulario" VALUES (239, 9, 7, 34, 4, 80, '07:00:00', '16:00:00', '2024-08-08', '', NULL, 37, NULL, '2025-10-23 11:48:34.566674', NULL);
INSERT INTO "public"."cap_formulario" VALUES (240, 9, 7, 34, 4, 80, '07:00:00', '16:00:00', '2024-08-20', '', NULL, 37, NULL, '2025-10-23 11:49:43.295315', NULL);
INSERT INTO "public"."cap_formulario" VALUES (214, 8, 6, 34, 2, 45, '07:00:00', '10:00:00', '2025-01-22', '', NULL, 37, 37, '2025-10-23 09:39:32.498182', '2025-10-23 15:37:35.282711');
INSERT INTO "public"."cap_formulario" VALUES (194, 8, 6, 36, 5, 3, '07:00:00', '00:00:00', '2025-03-14', '', NULL, 37, NULL, '2025-10-23 07:47:10.679187', NULL);
INSERT INTO "public"."cap_formulario" VALUES (203, 1, 2, 34, 2, 46, '07:00:00', '10:00:00', '2025-04-23', '', NULL, 37, NULL, '2025-10-23 08:31:32.673137', NULL);
INSERT INTO "public"."cap_formulario" VALUES (212, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-04-30', '', NULL, 37, NULL, '2025-10-23 09:25:57.170441', NULL);
INSERT INTO "public"."cap_formulario" VALUES (220, 1, 2, 34, 2, 47, '07:00:00', '10:00:00', '2025-05-07', '', NULL, 37, NULL, '2025-10-23 10:07:34.633719', NULL);
INSERT INTO "public"."cap_formulario" VALUES (231, 1, 2, 34, 1, 45, '07:00:00', '14:00:00', '2025-05-29', '', NULL, 37, NULL, '2025-10-23 11:09:48.456412', NULL);
INSERT INTO "public"."cap_formulario" VALUES (241, 9, 7, 34, 4, 80, '07:00:00', '00:00:00', '2024-09-07', '', NULL, 37, NULL, '2025-10-23 11:51:04.532886', NULL);
INSERT INTO "public"."cap_formulario" VALUES (242, 9, 5, 34, 4, 80, '07:00:00', '16:00:00', '2024-11-25', '', NULL, 37, NULL, '2025-10-23 11:52:24.238992', NULL);
INSERT INTO "public"."cap_formulario" VALUES (243, 9, 5, 34, 4, 81, '07:00:00', '16:00:00', '2024-09-29', '', NULL, 37, 37, '2025-10-23 11:54:35.247444', '2025-10-23 11:59:54.057945');
INSERT INTO "public"."cap_formulario" VALUES (244, 9, 5, 34, 4, 80, '07:00:00', '16:00:00', '2024-10-27', '', NULL, 37, 37, '2025-10-23 11:56:56.811222', '2025-10-23 12:00:06.052587');
INSERT INTO "public"."cap_formulario" VALUES (247, 9, 7, 34, 4, 80, '07:00:00', '16:00:00', '2025-01-05', '', NULL, 37, NULL, '2025-10-23 13:13:12.68605', NULL);
INSERT INTO "public"."cap_formulario" VALUES (246, 9, 5, 34, 4, 81, '07:00:00', '16:00:00', '2024-12-08', '', NULL, 37, 37, '2025-10-23 13:11:36.794041', '2025-10-23 13:14:55.961239');
INSERT INTO "public"."cap_formulario" VALUES (245, 9, 5, 34, 4, 80, '07:00:00', '00:00:00', '2024-11-23', '', NULL, 37, 37, '2025-10-23 13:08:04.081386', '2025-10-23 13:15:36.133912');
INSERT INTO "public"."cap_formulario" VALUES (248, 9, 7, 34, 4, 81, '07:00:00', '16:00:00', '2025-01-07', '', NULL, 37, NULL, '2025-10-23 13:17:14.048457', NULL);
INSERT INTO "public"."cap_formulario" VALUES (249, 9, 7, 34, 4, 81, '07:00:00', '16:00:00', '2025-05-07', '', NULL, 37, NULL, '2025-10-23 13:18:53.888954', NULL);
INSERT INTO "public"."cap_formulario" VALUES (250, 9, 5, 34, 4, 80, '07:00:00', '16:00:00', '2025-01-19', '', NULL, 37, NULL, '2025-10-23 13:20:26.806582', NULL);
INSERT INTO "public"."cap_formulario" VALUES (251, 9, 7, 34, 4, 80, '07:00:00', '00:00:00', '2025-01-25', '', NULL, 37, NULL, '2025-10-23 13:22:07.78131', NULL);
INSERT INTO "public"."cap_formulario" VALUES (252, 9, 7, 34, 4, 80, '07:00:00', '16:00:00', '2025-02-04', '', NULL, 37, NULL, '2025-10-23 13:24:33.497358', NULL);
INSERT INTO "public"."cap_formulario" VALUES (253, 9, 5, 34, 4, 81, '07:00:00', '16:00:00', '2025-02-04', '', NULL, 37, NULL, '2025-10-23 13:26:13.843179', NULL);
INSERT INTO "public"."cap_formulario" VALUES (254, 9, 4, 10, 1, 24, '07:00:00', '14:00:00', '2024-09-30', '', NULL, 37, NULL, '2025-10-23 13:30:51.368266', NULL);
INSERT INTO "public"."cap_formulario" VALUES (255, 9, 4, 10, 1, 24, '07:00:00', '14:00:00', '2024-12-12', '', NULL, 37, NULL, '2025-10-23 13:32:30.797339', NULL);
INSERT INTO "public"."cap_formulario" VALUES (256, 3, 4, 29, 1, 4, '07:00:00', '14:00:00', '2025-06-18', '', NULL, 37, NULL, '2025-10-23 13:35:07.711091', NULL);
INSERT INTO "public"."cap_formulario" VALUES (236, 1, 2, 34, 1, 47, '07:00:00', '14:00:00', '2025-06-10', '', NULL, 37, 37, '2025-10-23 11:33:04.401091', '2025-10-23 14:40:43.272593');
INSERT INTO "public"."cap_formulario" VALUES (258, 3, 4, 29, 1, 4, '07:00:00', '09:00:00', '2025-06-14', '', NULL, 37, 37, '2025-10-23 13:44:58.106483', '2025-10-23 14:48:35.067483');
INSERT INTO "public"."cap_formulario" VALUES (257, 3, 4, 29, 1, 4, '07:00:00', '14:00:00', '2025-06-18', '', NULL, 37, 37, '2025-10-23 13:38:00.618336', '2025-10-23 14:48:43.275838');
INSERT INTO "public"."cap_formulario" VALUES (259, 3, 9, 29, 1, 4, '08:00:00', '09:00:00', '2025-09-01', '', NULL, 37, 37, '2025-10-23 13:50:59.551857', '2025-10-23 14:48:50.869477');
INSERT INTO "public"."cap_formulario" VALUES (260, 9, 4, 34, 5, 53, '13:00:00', '14:00:00', '2025-08-29', '', NULL, 37, 37, '2025-10-23 13:55:13.233173', '2025-10-23 14:48:55.692048');
INSERT INTO "public"."cap_formulario" VALUES (261, 2, 4, 10, 1, 31, '13:00:00', '14:00:00', '2025-08-29', '', NULL, 37, 37, '2025-10-23 14:07:13.565816', '2025-10-23 14:49:03.085697');
INSERT INTO "public"."cap_formulario" VALUES (7, 8, 6, 35, 2, 26, '07:00:00', '10:00:00', '2024-09-11', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:01:46.191656');
INSERT INTO "public"."cap_formulario" VALUES (14, 8, 6, 35, 5, 26, '07:00:00', '00:00:00', '2024-11-16', '', NULL, 37, 37, '2025-10-22 21:00:43.438988', '2025-10-23 15:07:28.732585');
INSERT INTO "public"."cap_formulario" VALUES (237, 1, 2, 34, 2, 22, '07:00:00', '10:00:00', '2025-06-11', '', NULL, 37, 37, '2025-10-23 11:39:23.929066', '2025-10-23 15:35:38.300438');
INSERT INTO "public"."cap_formulario" VALUES (262, 5, 6, 20, 2, 78, '00:01:00', '04:01:00', '2025-10-02', '', NULL, 1, NULL, '2025-10-24 02:01:41.851997', NULL);
INSERT INTO "public"."cap_formulario" VALUES (263, 5, 4, 3, 1, 75, '08:00:00', '10:00:00', '2024-10-27', '', NULL, 3, NULL, '2025-10-25 01:00:32.689717', NULL);

-- ----------------------------
-- Table structure for cap_formulario_asistente
-- ----------------------------
DROP TABLE IF EXISTS "public"."cap_formulario_asistente";
CREATE TABLE "public"."cap_formulario_asistente" (
  "id" int4 NOT NULL DEFAULT nextval('formulario_asistente_id_seq'::regclass),
  "id_formulario" int4 NOT NULL,
  "cedula" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "estado_aprovacion" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "empresa" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "cargo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "área" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "sub_área" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rango" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "situacion" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of cap_formulario_asistente
-- ----------------------------
INSERT INTO "public"."cap_formulario_asistente" VALUES (1, 2, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2, 2, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (3, 2, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (4, 2, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (7, 2, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (8, 2, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (6, 2, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (18, 4, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (19, 4, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (20, 4, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (21, 4, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (22, 4, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (23, 4, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (10, 3, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (11, 3, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (14, 3, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (15, 3, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (16, 3, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (17, 3, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (5, 2, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (13, 3, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (24, 5, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (25, 5, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (42, 7, '1122120878', 'aprobo', 'ALEXANDRA  OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (26, 5, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (12, 3, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (27, 5, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (28, 5, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (29, 5, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (30, 5, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (31, 5, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (32, 6, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (33, 6, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (34, 6, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (35, 6, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (36, 6, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (37, 6, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (38, 6, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (39, 7, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (40, 7, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (41, 7, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (44, 7, '52966773', 'aprobo', 'NILSA  CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (45, 7, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (46, 7, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (47, 7, '1121820534', 'aprobo', 'CRISTIAN JULIAN CABALLERO FEO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (49, 7, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (50, 7, '1006555318', 'aprobo', 'ORLANDO  GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (51, 7, '52850723', 'aprobo', 'ELIZABETH  ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (52, 7, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (53, 8, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (54, 8, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (55, 8, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (56, 8, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (57, 8, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (58, 8, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (59, 8, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (60, 8, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (61, 9, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (62, 9, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (63, 9, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (64, 9, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (65, 9, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (66, 9, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (67, 9, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (68, 9, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (69, 10, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (70, 10, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (71, 10, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (72, 10, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (73, 10, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (74, 10, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (75, 10, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (76, 10, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (77, 11, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (78, 11, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (79, 11, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (80, 11, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (81, 11, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (82, 12, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (83, 12, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (84, 12, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (85, 12, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (86, 12, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (87, 12, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (88, 12, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (89, 12, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (90, 13, '1006779061', 'aprobo', 'VALENTINA CESPEDES GOMEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (91, 13, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (92, 14, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (93, 14, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (94, 14, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (95, 15, '1128189335', 'aprobo', 'EVER ANTONIO MEJIA REYES', 'OLEAGINOSAS SAN MARCOS', 'GANCHERO', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (96, 15, '19563455', 'aprobo', 'JORGE ARMANDO CANTILLO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (97, 15, '1081795404', 'aprobo', 'JUAN PABLO PAEZ IBAÑEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (98, 15, '19619269', 'aprobo', 'WILDER ENRIQUE RODRIGUEZ CASTRO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (99, 15, '1128200455', 'aprobo', 'JUAN CARLOS MATUTE ZUÑIGA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (100, 15, '1084735140', 'aprobo', 'ELICIO JAVIER VALDES CABARCAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (101, 15, '1128190601', 'aprobo', 'JOSE LUIS RODRIGUEZ AHUMADA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (102, 15, '1084731299', 'aprobo', 'JOVANI ENRIQUE POLO ARIAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (103, 16, '1122130992', 'aprobo', 'JENNIFER LOPEZ CASTAÑEDA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (104, 16, '1123084858', 'aprobo', 'RAFAEL STIVEN ROMERO OBANDO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (105, 16, '1049894190', 'aprobo', 'YAELIS CANTILLO RAMOS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (106, 17, '1006718229', 'aprobo', 'ROBERT MAURICIO MANCHAY PARRA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (107, 18, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (108, 18, '1084791483', 'aprobo', 'TIBISAY PITRE LAGO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (109, 18, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (110, 18, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (111, 18, '1122120878', 'aprobo', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (112, 19, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (113, 20, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (114, 20, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (115, 20, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (116, 20, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (117, 20, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (118, 20, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (119, 20, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (120, 20, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (121, 20, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (122, 20, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (123, 20, '17422976', 'aprobo', 'MAURICIO GOMEZ CRUZ', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA I', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (124, 20, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (125, 21, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (126, 21, '1122120878', 'aprobo', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (127, 21, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (128, 21, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (129, 21, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (130, 21, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (131, 21, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (132, 21, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (133, 21, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (134, 21, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (135, 21, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (136, 21, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (137, 21, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (138, 21, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (139, 21, '1000616234', 'aprobo', 'MARIA FERNANDA HURTADO BOHORQUEZ', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA AGRONOMICO', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (140, 21, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (141, 21, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (142, 21, '1084791483', 'aprobo', 'TIBISAY PITRE LAGO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (143, 21, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (144, 22, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (145, 22, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (146, 22, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (147, 23, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (148, 23, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (149, 23, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (150, 24, '1084791483', 'aprobo', 'TIBISAY PITRE LAGO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (151, 24, '1122120878', 'aprobo', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (152, 24, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (153, 24, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (154, 25, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (155, 25, '1122120878', 'aprobo', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (156, 25, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (157, 25, '1118167546', 'aprobo', 'JEISON ALEJANDRO BEJARANO BOTIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (158, 26, '1084791483', 'aprobo', 'TIBISAY PITRE LAGO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (159, 26, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (160, 26, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (161, 26, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (162, 26, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (163, 26, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (164, 26, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (165, 26, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (166, 26, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (167, 26, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (168, 26, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (169, 26, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (170, 26, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (171, 26, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (172, 26, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (173, 26, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (174, 26, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (175, 26, '1122120878', 'aprobo', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (176, 26, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (177, 27, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (178, 27, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (179, 27, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (180, 27, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (181, 27, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (182, 27, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (183, 27, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (184, 27, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (185, 27, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (186, 27, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (187, 27, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (188, 27, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (189, 27, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (190, 27, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (191, 28, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (192, 28, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (193, 28, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (194, 29, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (195, 29, '1084791483', 'aprobo', 'TIBISAY PITRE LAGO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (196, 29, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (197, 29, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (198, 29, '1122120878', 'aprobo', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (199, 30, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (200, 30, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (201, 30, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (202, 30, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (203, 30, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (204, 30, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (205, 30, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (206, 30, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (207, 30, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (208, 30, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (209, 30, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (210, 30, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (211, 30, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (212, 31, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (213, 31, '1084791483', 'aprobo', 'TIBISAY PITRE LAGO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (214, 31, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (215, 31, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (216, 31, '1122120878', 'aprobo', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (217, 32, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (218, 32, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (219, 32, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (220, 33, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (221, 33, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (222, 33, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (223, 33, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (224, 33, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (225, 33, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (226, 33, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (227, 33, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (228, 33, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (229, 33, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (230, 33, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (231, 33, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (232, 33, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (233, 34, '1084789074', 'aprobo', 'JULIETH PAOLA BOLAÑO ARIZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (234, 35, '1084789074', 'aprobo', 'JULIETH PAOLA BOLAÑO ARIZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (235, 36, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (236, 36, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (237, 36, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (238, 36, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (239, 36, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (240, 36, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (241, 36, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (242, 36, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (243, 36, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (244, 36, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (245, 36, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (246, 36, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (247, 37, '1006838669', 'aprobo', 'JENNY ALEXANDRA GUTIERREZ YARA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (248, 38, '86013949', 'aprobo', 'FAVER HERNANDEZ ARREDONDO', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (249, 38, '1123115615', 'aprobo', 'OSCAR IVAN DUQUE RIAÑO', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (250, 38, '7837907', 'aprobo', 'FERNANDO JAVIER CRUZ PAREDES', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR DE LOGISTICA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (251, 38, '1112781358', 'aprobo', 'HUBERNEY CANAVAL POSSO', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE TOPOGRAFIA', 'AGRONOMICA', 'AGRONOMICA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (252, 38, '74846079', 'aprobo', 'ARISTOBULO BELTRAN MORA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE PRODUCCION', 'LOGISTICA Y COSECHA', 'SANIDAD', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (253, 38, '1124825227', 'aprobo', 'WILLIAM YECID ARREDONDO GAMBOA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (254, 38, '17422976', 'aprobo', 'MAURICIO GOMEZ CRUZ', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA I', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (255, 38, '1070603190', 'aprobo', 'JONATHAN HARVEY POVEDA RICO', 'INVERSIONES', 'COORDINADOR AGRONOMO', 'AGRONOMICA', 'AGRONOMICA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (256, 38, '13520681', 'aprobo', 'EDWAR ARTURO ROJAS PRADA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (257, 38, '17413391', 'aprobo', 'RIGOBERTO PIZA SAAVEDRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (258, 39, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (259, 39, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (260, 39, '40775117', 'aprobo', 'ROCIO CONTRERAS RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (261, 39, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (262, 39, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (263, 39, '1121820534', 'aprobo', 'CRISTIAN JULIAN CABALLERO FEO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (264, 39, '1006779589', 'aprobo', 'LUISA FERNANDA RODRIGUEZ BELLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (265, 39, '40434381', 'aprobo', 'OVIDIA MENDOZA MALAGON', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (266, 39, '96357774', 'aprobo', 'WILMER ANTURI BUSTOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (267, 39, '1000969908', 'aprobo', 'SEBASTIAN CASTAÑEDA ESGUERRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (268, 39, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (269, 39, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (270, 39, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (271, 39, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (272, 39, '17287753', 'aprobo', 'ISIDRO GARZON PENAGOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (273, 40, '17287753', 'aprobo', 'ISIDRO GARZON PENAGOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (274, 40, '40775117', 'aprobo', 'ROCIO CONTRERAS RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (275, 40, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (276, 40, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (277, 40, '96357774', 'aprobo', 'WILMER ANTURI BUSTOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (278, 40, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (279, 40, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (280, 40, '1000969908', 'aprobo', 'SEBASTIAN CASTAÑEDA ESGUERRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (281, 40, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (282, 40, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (283, 40, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (284, 40, '1121820534', 'aprobo', 'CRISTIAN JULIAN CABALLERO FEO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (285, 40, '1006779589', 'aprobo', 'LUISA FERNANDA RODRIGUEZ BELLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (286, 40, '40434381', 'aprobo', 'OVIDIA MENDOZA MALAGON', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (287, 40, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (288, 41, '7838194', 'aprobo', 'NESTOR JULIO HERRERA PARRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (289, 41, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (290, 41, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (291, 41, '2251824', 'aprobo', 'ALFREDO PEÑALOZA MORALES', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (292, 41, '80324097', 'aprobo', 'VICTOR MANUEL BALLEN TRIANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (293, 41, '96357774', 'aprobo', 'WILMER ANTURI BUSTOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (294, 41, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (295, 41, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (296, 41, '1116202263', 'aprobo', 'EUSER HUMBERTO POVEDA ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (297, 41, '86078810', 'aprobo', 'JEFFERSON GUTIERREZ GAMEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (298, 41, '20768035', 'aprobo', 'CLARA YINETH GAVIRIA PERALTA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'COMPOST', 'COMPOST', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (299, 41, '17287753', 'aprobo', 'ISIDRO GARZON PENAGOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (300, 41, '86013949', 'aprobo', 'FAVER HERNANDEZ ARREDONDO', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (301, 41, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (302, 41, '1006822396', 'aprobo', 'ANDRES FELIPE RINCON ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (303, 41, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (304, 41, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (305, 41, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (306, 41, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (307, 41, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (308, 41, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (309, 41, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (310, 41, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (311, 41, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (312, 41, '40432001', 'aprobo', 'CLAUDIA ROCIO CABRERA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (313, 42, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (314, 42, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (315, 42, '8168423', 'aprobo', 'ISIDRO ANTONIO CHANTACA TORREGLOSA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (316, 42, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (317, 42, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (318, 42, '1124825227', 'aprobo', 'WILLIAM YECID ARREDONDO GAMBOA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (319, 43, '7838194', 'aprobo', 'NESTOR JULIO HERRERA PARRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (320, 43, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (321, 43, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (322, 43, '2251824', 'aprobo', 'ALFREDO PEÑALOZA MORALES', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (323, 43, '80324097', 'aprobo', 'VICTOR MANUEL BALLEN TRIANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (324, 43, '96357774', 'aprobo', 'WILMER ANTURI BUSTOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (325, 43, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (326, 43, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (327, 43, '1116202263', 'aprobo', 'EUSER HUMBERTO POVEDA ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (328, 43, '86078810', 'aprobo', 'JEFFERSON GUTIERREZ GAMEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (329, 43, '20768035', 'aprobo', 'CLARA YINETH GAVIRIA PERALTA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'COMPOST', 'COMPOST', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (330, 43, '17287753', 'aprobo', 'ISIDRO GARZON PENAGOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (331, 43, '86013949', 'aprobo', 'FAVER HERNANDEZ ARREDONDO', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (332, 43, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (333, 43, '1006822396', 'aprobo', 'ANDRES FELIPE RINCON ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (334, 43, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (335, 43, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (336, 43, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (337, 43, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (338, 43, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (339, 43, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (340, 43, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (341, 43, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (342, 43, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (343, 43, '40432001', 'aprobo', 'CLAUDIA ROCIO CABRERA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (344, 44, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (345, 44, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (346, 44, '8168423', 'aprobo', 'ISIDRO ANTONIO CHANTACA TORREGLOSA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (347, 44, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (348, 44, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (349, 44, '1124825227', 'aprobo', 'WILLIAM YECID ARREDONDO GAMBOA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (350, 45, '20768035', 'aprobo', 'CLARA YINETH GAVIRIA PERALTA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'COMPOST', 'COMPOST', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (351, 45, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (352, 45, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (353, 45, '1070603190', 'aprobo', 'JONATHAN HARVEY POVEDA RICO', 'INVERSIONES', 'COORDINADOR AGRONOMO', 'AGRONOMICA', 'AGRONOMICA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (354, 45, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (355, 45, '1124825227', 'aprobo', 'WILLIAM YECID ARREDONDO GAMBOA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (356, 45, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (357, 45, '1122127033', 'aprobo', 'CINDI LORENA GUEVARA CALDERON', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (358, 46, '86078810', 'aprobo', 'JEFFERSON GUTIERREZ GAMEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (359, 46, '1116202263', 'aprobo', 'EUSER HUMBERTO POVEDA ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (360, 46, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (361, 46, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (362, 46, '96357774', 'aprobo', 'WILMER ANTURI BUSTOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (363, 46, '80324097', 'aprobo', 'VICTOR MANUEL BALLEN TRIANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (364, 46, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (365, 46, '2251824', 'aprobo', 'ALFREDO PEÑALOZA MORALES', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (366, 46, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (367, 46, '7838194', 'aprobo', 'NESTOR JULIO HERRERA PARRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (368, 46, '20768035', 'aprobo', 'CLARA YINETH GAVIRIA PERALTA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'COMPOST', 'COMPOST', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (369, 46, '86013949', 'aprobo', 'FAVER HERNANDEZ ARREDONDO', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (370, 46, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (371, 46, '1006822396', 'aprobo', 'ANDRES FELIPE RINCON ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (372, 46, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (373, 46, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (374, 46, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (375, 46, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (376, 46, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (377, 46, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (378, 46, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (379, 46, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (380, 46, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (381, 46, '40432001', 'aprobo', 'CLAUDIA ROCIO CABRERA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (382, 46, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (383, 47, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (384, 47, '8168423', 'aprobo', 'ISIDRO ANTONIO CHANTACA TORREGLOSA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (385, 47, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (386, 47, '1124825227', 'aprobo', 'WILLIAM YECID ARREDONDO GAMBOA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (387, 48, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (388, 48, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (389, 48, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (390, 48, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (391, 48, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (392, 48, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (393, 48, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (394, 48, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (395, 48, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (396, 48, '1122120878', 'aprobo', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (397, 48, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (398, 48, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (399, 48, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (400, 48, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (401, 48, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (402, 48, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (403, 48, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (404, 48, '1007221883', 'aprobo', 'ISABEL RAMIREZ RIOS', 'OLEAGINOSAS SAN MARCOS', 'INGENIERA AGRICOLA', 'FRUTA PROVEEDORES', 'FRUTA PROVEEDORES', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (405, 48, '1006721519', 'aprobo', 'DABIAN ALEXANDER ARENAS PARRA', 'OLEAGINOSAS SAN MARCOS', 'TECNOLOGO AGRICOLA', 'FRUTA PROVEEDORES', 'FRUTA PROVEEDORES', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (406, 48, '1070603190', 'aprobo', 'JONATHAN HARVEY POVEDA RICO', 'INVERSIONES', 'COORDINADOR AGRONOMO', 'AGRONOMICA', 'AGRONOMICA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (407, 48, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (408, 49, '1123115561', 'aprobo', 'ADRIANA MILENA MENDOZA MURCIA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'SANIDAD', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (409, 49, '86056213', 'aprobo', 'JOSE SAID VARGAS IPUS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (410, 49, '1123115430', 'aprobo', 'HECTOR ANDRES MEDINA BONILLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (411, 49, '1115916468', 'aprobo', 'WILMAR RICARDO GARCIA ACOSTA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (412, 49, '1006779399', 'aprobo', 'PAULA ANDREA CASALLAS PACHECO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (413, 49, '1120026250', 'aprobo', 'ESTEBAN SANTIAGO GUZMAN IPUZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (414, 49, '1006782614', 'aprobo', 'ANA FELIZA SALGADO MARTINEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (415, 49, '35262056', 'aprobo', 'ANGELICA MARIA ANZOLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (416, 49, '1006779589', 'aprobo', 'LUISA FERNANDA RODRIGUEZ BELLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (417, 49, '1122127033', 'aprobo', 'CINDI LORENA GUEVARA CALDERON', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (418, 49, '1015477571', 'aprobo', 'KAREN DANIELA BERNAL HENDES', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA AGRONOMICO', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (419, 49, '1007221883', 'aprobo', 'ISABEL RAMIREZ RIOS', 'OLEAGINOSAS SAN MARCOS', 'INGENIERA AGRICOLA', 'FRUTA PROVEEDORES', 'FRUTA PROVEEDORES', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (420, 49, '74846079', 'aprobo', 'ARISTOBULO BELTRAN MORA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE PRODUCCION', 'LOGISTICA Y COSECHA', 'SANIDAD', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (421, 50, '1122127033', 'aprobo', 'CINDI LORENA GUEVARA CALDERON', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (422, 50, '1123116537', 'aprobo', 'DANISSA VIVEROS PANAMEÑO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (423, 50, '1006779399', 'aprobo', 'PAULA ANDREA CASALLAS PACHECO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (424, 51, '1006782614', 'aprobo', 'ANA FELIZA SALGADO MARTINEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (425, 51, '1006779589', 'aprobo', 'LUISA FERNANDA RODRIGUEZ BELLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (426, 51, '35262056', 'aprobo', 'ANGELICA MARIA ANZOLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (427, 51, '1121870996', 'aprobo', 'MARIA FERNANDA ANZOLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (428, 51, '74846079', 'aprobo', 'ARISTOBULO BELTRAN MORA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE PRODUCCION', 'LOGISTICA Y COSECHA', 'SANIDAD', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (429, 52, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (430, 52, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (431, 52, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (432, 52, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (433, 52, '1118167546', 'aprobo', 'JEISON ALEJANDRO BEJARANO BOTIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (434, 52, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (435, 52, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (436, 52, '1084789074', 'aprobo', 'JULIETH PAOLA BOLAÑO ARIZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (437, 52, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (438, 52, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (439, 52, '1122120878', 'aprobo', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (440, 52, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (441, 52, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (442, 52, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (443, 52, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (444, 52, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (445, 52, '1084791483', 'aprobo', 'TIBISAY PITRE LAGO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (446, 52, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (447, 52, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (448, 52, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (449, 52, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (450, 52, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (451, 52, '1006838669', 'aprobo', 'JENNY ALEXANDRA GUTIERREZ YARA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (452, 52, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (453, 52, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (454, 53, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (455, 53, '1006779399', 'aprobo', 'PAULA ANDREA CASALLAS PACHECO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (456, 53, '1098100371', 'aprobo', 'JENYFER ALEJANDRA ROJAS DUARTE', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (457, 54, '1121843124', 'aprobo', 'NOHEMY PAOLA ABELLO CABRERA', 'OLEAGINOSAS SAN MARCOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (458, 55, '17423595', 'aprobo', 'YEISON EDUARDO ANGEL PEREZ', 'OLEAGINOSAS SAN MARCOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (459, 56, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (460, 57, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (461, 58, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (462, 59, '1084789074', 'aprobo', 'JULIETH PAOLA BOLAÑO ARIZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (463, 60, '1037478252', 'aprobo', 'NEIS DAVID CABRERA TAPIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (464, 61, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (465, 62, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (466, 63, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (467, 64, '1006797944', 'aprobo', 'YIRSLY DAHANA FONTECHA ANDRADE', 'OLEAGINOSAS SAN MARCOS', 'PASANTE UNIVERSITARIO', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (468, 65, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (469, 66, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (470, 67, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (471, 68, '1006838669', 'aprobo', 'JENNY ALEXANDRA GUTIERREZ YARA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (472, 69, '1081789015', 'aprobo', 'AUGUSTO JOSE HERNANDEZ FONSECA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (473, 70, '7838194', 'aprobo', 'NESTOR JULIO HERRERA PARRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (474, 71, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (475, 72, '1084728329', 'aprobo', 'CARLOS ANDRES JULIO HERNANDEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (476, 73, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (477, 74, '1122130992', 'aprobo', 'JENNIFER LOPEZ CASTAÑEDA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (478, 75, '1026257976', 'aprobo', 'BRAYAN STEVEN LOPEZ SERRATO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (479, 76, '1004319912', 'aprobo', 'IVAN ANDRES MONTES DE AGUA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (480, 77, '1006878479', 'aprobo', 'EVELIN JAENI MUÑOZ MUR', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (481, 78, '1123510868', 'aprobo', 'CAREN YULIANA QUEVEDO APONTE', 'OLEAGINOSAS SAN MARCOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (482, 79, '1122137853', 'aprobo', 'DENIS CAROLINA REINA TELLEZ', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (483, 80, '80159846', 'aprobo', 'BENJAMIN RIOS JIMENEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (484, 81, '1128190601', 'aprobo', 'JOSE LUIS RODRIGUEZ AHUMADA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (485, 82, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (486, 83, '1098100371', 'aprobo', 'JENYFER ALEJANDRA ROJAS DUARTE', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (487, 84, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (488, 85, '86076533', 'aprobo', 'CORNELIO SILVA GAITAN', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (489, 86, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (490, 87, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (491, 88, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (492, 89, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (493, 90, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (494, 91, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (495, 92, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (496, 93, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (497, 94, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (498, 95, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (499, 96, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (500, 97, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (501, 98, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (502, 99, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (503, 100, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (504, 101, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (505, 102, '72262612', 'aprobo', 'MIGUEL MIRANDA BERMUDEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (506, 102, '19000809', 'aprobo', 'JHON JAIRO GALEANO VALDOMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (507, 102, '1128200455', 'aprobo', 'JUAN CARLOS MATUTE ZUÑIGA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (508, 102, '1122122892', 'aprobo', 'EDWIN CAMILO SALGADO ARANGO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (509, 102, '19619269', 'aprobo', 'WILDER ENRIQUE RODRIGUEZ CASTRO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (510, 102, '1121883724', 'aprobo', 'JULIO CESAR MORENO JIMENEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (511, 102, '1054549131', 'aprobo', 'ALEJANDRO NIÑO MURC IA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (512, 102, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (513, 102, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (514, 102, '1119887188', 'aprobo', 'DARIO ALFONSO PEÑUELA ACOSTA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (515, 102, '1118167546', 'aprobo', 'JEISON ALEJANDRO BEJARANO BOTIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (516, 102, '1084789074', 'aprobo', 'JULIETH PAOLA BOLAÑO ARIZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (517, 102, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (518, 102, '74846079', 'aprobo', 'ARISTOBULO BELTRAN MORA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE PRODUCCION', 'LOGISTICA Y COSECHA', 'SANIDAD', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (519, 102, '17413391', 'aprobo', 'RIGOBERTO PIZA SAAVEDRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (520, 102, '1128190601', 'aprobo', 'JOSE LUIS RODRIGUEZ AHUMADA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (521, 102, '1004319912', 'aprobo', 'IVAN ANDRES MONTES DE AGUA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (522, 102, '1081789015', 'aprobo', 'AUGUSTO JOSE HERNANDEZ FONSECA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (523, 102, '1004335328', 'aprobo', 'MIGUEL EDUARDO CARO VILLEGAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (524, 102, '19563455', 'aprobo', 'JORGE ARMANDO CANTILLO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (525, 102, '1084735140', 'aprobo', 'ELICIO JAVIER VALDES CABARCAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (526, 102, '1084731299', 'aprobo', 'JOVANI ENRIQUE POLO ARIAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (527, 103, '1050951819', 'aprobo', 'DEINER DE JESUS MULET PAZO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (528, 103, '1081795404', 'aprobo', 'JUAN PABLO PAEZ IBAÑEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (529, 103, '1065123031', 'aprobo', 'ANTONIO RAFAEL VALDES CABARCAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (530, 103, '1128189335', 'aprobo', 'EVER ANTONIO MEJIA REYES', 'OLEAGINOSAS SAN MARCOS', 'GANCHERO', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (531, 103, '17266716', 'aprobo', 'JOSE ARIEL TAPIA GUZMAN', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (532, 103, '80159846', 'aprobo', 'BENJAMIN RIOS JIMENEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (533, 103, '51742339', 'aprobo', 'FLOR MARIA RAVELO QUINTERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE SERVICIOS GENERALES I', 'ADMINISTRACION', 'ADMINISTRACION', 'OPERATIVOS ADMINISTRATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (534, 103, '40434381', 'aprobo', 'OVIDIA MENDOZA MALAGON', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (535, 104, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (536, 104, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (537, 104, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (538, 104, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (539, 104, '1122127220', 'aprobo', 'JORGE LEONARDO ANDRADE BOLIVAR', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (540, 104, '83230060', 'aprobo', 'ADOLFO  PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (541, 104, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (542, 104, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (543, 104, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (544, 104, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (545, 104, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (546, 104, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (547, 104, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (548, 104, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (549, 104, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (550, 104, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (551, 104, '1123114330', 'aprobo', 'WILVER  BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (552, 104, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (553, 105, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (554, 105, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (555, 105, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (556, 105, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (557, 105, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (558, 105, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (559, 105, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (560, 105, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (561, 105, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (562, 105, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (563, 105, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (564, 105, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (565, 105, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (566, 105, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (567, 105, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (568, 105, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (569, 105, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (570, 105, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (571, 106, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (572, 106, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (573, 106, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (574, 107, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (575, 108, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (576, 108, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (577, 108, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (578, 108, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (579, 108, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (580, 108, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (581, 108, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (582, 108, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (583, 108, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (584, 108, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (585, 108, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (586, 108, '1124190795', 'aprobo', 'JHORMAN ALEXIS CASTRO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (587, 108, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (588, 108, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (589, 108, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (590, 108, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (591, 108, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (592, 108, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (593, 108, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (594, 108, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (595, 108, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (596, 109, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (597, 109, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (598, 109, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (599, 109, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (600, 109, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (601, 109, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (602, 109, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (603, 109, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (604, 109, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (605, 109, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (606, 109, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (607, 109, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (608, 109, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (609, 110, '17266716', 'aprobo', 'JOSE ARIEL TAPIA GUZMAN', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (610, 110, '72262612', 'aprobo', 'MIGUEL MIRANDA BERMUDEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (611, 110, '19000809', 'aprobo', 'JHON JAIRO GALEANO VALDOMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (612, 111, '1054549131', 'aprobo', 'ALEJANDRO NIÑO MURC IA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (613, 111, '1065123031', 'aprobo', 'ANTONIO RAFAEL VALDES CABARCAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (614, 111, '1081789015', 'aprobo', 'AUGUSTO JOSE HERNANDEZ FONSECA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (615, 111, '1004335328', 'aprobo', 'MIGUEL EDUARDO CARO VILLEGAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (616, 112, '19000809', 'aprobo', 'JHON JAIRO GALEANO VALDOMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (617, 112, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (618, 112, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (619, 112, '1006782614', 'aprobo', 'ANA FELIZA SALGADO MARTINEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (620, 112, '35262056', 'aprobo', 'ANGELICA MARIA ANZOLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (621, 113, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (622, 113, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (623, 113, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (624, 113, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (625, 113, '1122122892', 'aprobo', 'EDWIN CAMILO SALGADO ARANGO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (626, 113, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (627, 113, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (628, 113, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (629, 113, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (630, 113, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (631, 113, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (632, 113, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (633, 113, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (634, 113, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (635, 113, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (636, 113, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (637, 113, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (638, 113, '1124190795', 'aprobo', 'JHORMAN ALEXIS CASTRO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (639, 113, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (640, 114, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (641, 114, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (642, 114, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (643, 114, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (644, 114, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (645, 114, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (646, 114, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (647, 114, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (648, 114, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (649, 114, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (650, 114, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (651, 114, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (652, 114, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (653, 114, '1124190795', 'aprobo', 'JHORMAN ALEXIS CASTRO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (654, 114, '1122129144', 'aprobo', 'DUMAR ISRAEL ROJAS HERNANDEZ', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (655, 114, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (656, 114, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (657, 114, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (658, 114, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (659, 114, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (660, 115, '1006838669', 'aprobo', 'JENNY ALEXANDRA GUTIERREZ YARA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (661, 115, '10499152', 'aprobo', 'JHON JAIMER BALANTA CIFUENTES', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (662, 115, '85261777', 'aprobo', 'MILTON JULIO GONZALEZ JULIO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (663, 115, '1006822396', 'aprobo', 'ANDRES FELIPE RINCON ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (664, 116, '1081827188', 'aprobo', 'BLAS ANTONIO PAEZ IBAÑEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (665, 116, '1037478252', 'aprobo', 'NEIS DAVID CABRERA TAPIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (666, 116, '1123115430', 'aprobo', 'HECTOR ANDRES MEDINA BONILLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (667, 116, '1115916468', 'aprobo', 'WILMAR RICARDO GARCIA ACOSTA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (668, 116, '40432001', 'aprobo', 'CLAUDIA ROCIO CABRERA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (669, 116, '17286025', 'aprobo', 'GUSTAVO GARZON PENAGOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (711, 121, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (670, 117, '1122130992', 'aprobo', 'JENNIFER LOPEZ CASTAÑEDA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (671, 117, '1049894190', 'aprobo', 'YAELIS CANTILLO RAMOS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (672, 117, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (673, 117, '86078810', 'aprobo', 'JEFFERSON GUTIERREZ GAMEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (674, 117, '96357774', 'aprobo', 'WILMER ANTURI BUSTOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (675, 118, '1122128543', 'aprobo', 'EDISNEY SLIAN MARTINEZ BUSTOS', 'OLEAGINOSAS SAN MARCOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (676, 118, '1007613918', 'aprobo', 'ANDRES FELIPE MELO MEJIA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (677, 118, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (678, 118, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (679, 118, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (680, 119, '19000809', 'aprobo', 'JHON JAIRO GALEANO VALDOMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (681, 119, '1119887188', 'aprobo', 'DARIO ALFONSO PEÑUELA ACOSTA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (682, 119, '1015477571', 'aprobo', 'KAREN DANIELA BERNAL HENDES', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA AGRONOMICO', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (683, 119, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (684, 119, '1116202263', 'aprobo', 'EUSER HUMBERTO POVEDA ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (685, 120, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (686, 120, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (687, 120, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (688, 120, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (689, 120, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (690, 120, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (691, 120, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (692, 120, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (693, 120, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (694, 120, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (695, 120, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (696, 120, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (697, 120, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (698, 120, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (699, 120, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (700, 120, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (701, 120, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (702, 120, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (703, 120, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (704, 120, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (705, 120, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (706, 120, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (707, 120, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (708, 120, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (709, 120, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (710, 121, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (712, 121, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (713, 121, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (714, 121, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (715, 121, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (716, 121, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (717, 121, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (718, 121, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (719, 122, '1003369097', 'aprobo', 'VLADIMIR SUAREZ PEÑA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (720, 122, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (721, 122, '1121935349', 'aprobo', 'JAIR SEBASTIAN BERMUDEZ ROMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (722, 122, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (723, 122, '40432001', 'aprobo', 'CLAUDIA ROCIO CABRERA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (724, 122, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (725, 123, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (726, 123, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (727, 123, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (728, 123, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (729, 123, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (730, 123, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (731, 123, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (732, 123, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (733, 123, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (734, 123, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (735, 123, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (736, 123, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (737, 123, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (738, 123, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (739, 124, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (740, 124, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (741, 124, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (742, 124, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (743, 124, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (744, 124, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (745, 124, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (746, 124, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (747, 124, '1124848880', 'aprobo', 'OSMAN FABIAN BAMBAGUE CHAVES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (748, 124, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (749, 124, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (750, 124, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (751, 124, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (752, 124, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (753, 124, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (754, 124, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (755, 125, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (756, 125, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (757, 125, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (758, 125, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (759, 125, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (760, 125, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (761, 125, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (762, 125, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (763, 125, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (764, 125, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (765, 125, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (766, 125, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (767, 126, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (768, 126, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (769, 126, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (770, 126, '72262612', 'aprobo', 'MIGUEL  MIRANDA BERMUDEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (771, 127, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (772, 127, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (773, 127, '1065123031', 'aprobo', 'ANTONIO RAFAEL VALDES CABARCAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (774, 127, '1054549131', 'aprobo', 'ALEJANDRO NIÑO MURC IA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (775, 127, '1004335328', 'aprobo', 'MIGUEL EDUARDO CARO VILLEGAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (776, 127, '1119887188', 'aprobo', 'DARIO ALFONSO PEÑUELA ACOSTA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (777, 127, '1115916468', 'aprobo', 'WILMAR RICARDO GARCIA ACOSTA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (778, 128, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (779, 128, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (780, 128, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (781, 128, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (782, 128, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (783, 128, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (784, 128, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (785, 128, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (786, 128, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (787, 128, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (788, 129, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (789, 129, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (790, 129, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (791, 129, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (792, 129, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (793, 129, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (794, 129, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (795, 129, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (796, 129, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (797, 130, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (798, 130, '86078810', 'aprobo', 'JEFFERSON GUTIERREZ GAMEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (799, 130, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (800, 130, '1006822396', 'aprobo', 'ANDRES FELIPE RINCON ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (801, 130, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (802, 131, '1032443022', 'aprobo', 'ANLLY JULIET GARZON ROJAS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (803, 131, '1123114218', 'aprobo', 'PAOLA ANDREA GONZALEZ LOPEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (804, 131, '1122118911', 'aprobo', 'SANDRA LILIANA GUEVARA VELASQUEZ', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (805, 131, '1122127133', 'aprobo', 'NIDIA GARCES ORTIZ', 'SEMAG DE LOS LLANOS', 'TESORERO', 'ADMINISTRACION', 'CONTABILIDAD', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (806, 131, '40397487', 'aprobo', 'LUZ ESTELLA ZARATE TRIANA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SERVICIOS GENERALES I', 'ADMINISTRACION', 'ADMINISTRACION', 'OPERATIVOS ADMINISTRATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (807, 131, '1122138443', 'aprobo', 'JEFREY ANDRADE BOLIVAR', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (808, 131, '40397899', 'aprobo', 'SILVIA MORALES RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (809, 131, '1006838624', 'aprobo', 'LINA PAOLA GUTIERREZ JARA', 'SEMAG DE LOS LLANOS', 'COORDINADOR DE ANALITICA Y SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (810, 131, '1006875191', 'aprobo', 'ERIC YAMID RINTA SAENZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (811, 132, '52805686', 'aprobo', 'ROSA MARIA BENAVIDES ESPINOSA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR ADMINISTRATIVO', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (812, 132, '1000616234', 'aprobo', 'MARIA FERNANDA HURTADO BOHORQUEZ', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA AGRONOMICO', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (813, 132, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (814, 132, '1122137853', 'aprobo', 'DENIS CAROLINA REINA TELLEZ', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (815, 132, '86013949', 'aprobo', 'FAVER HERNANDEZ ARREDONDO', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (816, 132, '1006658935', 'aprobo', 'NIDIA JOHANA REYES RODRIGUEZ', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE ADMNISTRATIVO', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (817, 133, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (818, 133, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (819, 133, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (820, 134, '93121602', 'aprobo', 'RUBEN DARIO RAMIREZ AVILES', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (821, 134, '1000969908', 'aprobo', 'SEBASTIAN CASTAÑEDA ESGUERRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (822, 134, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (823, 134, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (824, 135, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (825, 135, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (826, 135, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (827, 135, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (828, 135, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (829, 135, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (830, 135, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (831, 135, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (832, 135, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (833, 135, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (834, 135, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (835, 136, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (836, 136, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (837, 136, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (838, 136, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (839, 137, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (840, 137, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (841, 137, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (842, 137, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (843, 137, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (844, 137, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (845, 137, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (846, 137, '1124848880', 'aprobo', 'OSMAN FABIAN BAMBAGUE CHAVES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (847, 137, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (848, 137, '1122129144', 'aprobo', 'DUMAR ISRAEL ROJAS HERNANDEZ', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (849, 137, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (850, 137, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (851, 138, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (852, 138, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (853, 138, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (854, 138, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (855, 138, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (856, 138, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (857, 138, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (858, 138, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (859, 138, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (860, 138, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (861, 138, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (862, 138, '1124848880', 'aprobo', 'OSMAN FABIAN BAMBAGUE CHAVES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (863, 138, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (864, 138, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (865, 138, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (866, 138, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (867, 138, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (868, 138, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (869, 138, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (870, 139, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (871, 139, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (872, 139, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (873, 139, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (874, 139, '1122127220', 'aprobo', 'JORGE LEONARDO ANDRADE BOLIVAR', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (875, 139, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (876, 139, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (877, 139, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (921, 142, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (878, 139, '1121834337', 'aprobo', 'OSCAR IVAN MORA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (879, 139, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (880, 139, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (881, 139, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (882, 139, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (883, 139, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (884, 140, '40432001', 'aprobo', 'CLAUDIA ROCIO CABRERA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (885, 140, '17412481', 'aprobo', 'MANUEL ANTONIO DIAZ RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (886, 140, '10166719', 'aprobo', 'JOSE OLIVERIO OBANDO ARIAS', 'OLEAGINOSAS SAN MARCOS', 'JARDINERO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (887, 140, '17287753', 'aprobo', 'ISIDRO GARZON PENAGOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (888, 140, '8168423', 'aprobo', 'ISIDRO ANTONIO CHANTACA TORREGLOSA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (889, 141, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (890, 141, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (891, 141, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (892, 141, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (893, 141, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (894, 141, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (895, 141, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (896, 141, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (897, 141, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (898, 141, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (899, 141, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (900, 141, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (901, 142, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (902, 142, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (903, 142, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (904, 142, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (905, 142, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (906, 142, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (907, 142, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (908, 142, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (909, 142, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (910, 142, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (911, 142, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (912, 142, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (913, 142, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (914, 142, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (915, 142, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (916, 142, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (917, 142, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (918, 142, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (919, 142, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (920, 142, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (922, 142, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (923, 143, '1121870996', 'aprobo', 'MARIA FERNANDA ANZOLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (924, 143, '1006779589', 'aprobo', 'LUISA FERNANDA RODRIGUEZ BELLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (925, 144, '86076533', 'aprobo', 'CORNELIO SILVA GAITAN', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (926, 144, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (927, 144, '1003369097', 'aprobo', 'VLADIMIR SUAREZ PEÑA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (928, 145, '86076533', 'aprobo', 'CORNELIO SILVA GAITAN', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (929, 145, '12275158', 'aprobo', 'DOUMER FELIPE PAZ MAJIN', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (930, 145, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (931, 145, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (932, 145, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (933, 146, '1121879560', 'aprobo', 'DELIO FERNANDO LLANOS CRUZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (934, 146, '1003369097', 'aprobo', 'VLADIMIR SUAREZ PEÑA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (935, 146, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (936, 146, '12275158', 'aprobo', 'DOUMER FELIPE PAZ MAJIN', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (937, 146, '8168423', 'aprobo', 'ISIDRO ANTONIO CHANTACA TORREGLOSA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (938, 147, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (939, 147, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (940, 147, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (941, 147, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (942, 147, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (943, 147, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (944, 147, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (945, 147, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (946, 147, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (947, 147, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (948, 147, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (949, 147, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (950, 148, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (951, 148, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (952, 148, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (953, 148, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (954, 149, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (955, 149, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (956, 149, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (957, 149, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (958, 149, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (959, 149, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (960, 149, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (961, 149, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (962, 149, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (963, 149, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (964, 149, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (965, 149, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (966, 150, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (967, 150, '86078810', 'aprobo', 'JEFFERSON GUTIERREZ GAMEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (968, 150, '1124825227', 'aprobo', 'WILLIAM YECID ARREDONDO GAMBOA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (969, 150, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (970, 150, '1120026250', 'aprobo', 'ESTEBAN SANTIAGO GUZMAN IPUZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (971, 150, '1123115430', 'aprobo', 'HECTOR ANDRES MEDINA BONILLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (972, 150, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (973, 150, '1122127033', 'aprobo', 'CINDI LORENA GUEVARA CALDERON', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (974, 150, '1006838669', 'aprobo', 'JENNY ALEXANDRA GUTIERREZ YARA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (975, 150, '7837907', 'aprobo', 'FERNANDO JAVIER CRUZ PAREDES', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR DE LOGISTICA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (976, 150, '17422976', 'aprobo', 'MAURICIO GOMEZ CRUZ', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA I', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (977, 151, '1122121389', 'aprobo', 'ERIKA JOHANNA ALARCON APOLINAR', 'SEMAG DE LOS LLANOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (978, 151, '1123114218', 'aprobo', 'PAOLA ANDREA GONZALEZ LOPEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (979, 151, '1006779061', 'aprobo', 'VALENTINA CESPEDES GOMEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (980, 151, '1122127133', 'aprobo', 'NIDIA GARCES ORTIZ', 'SEMAG DE LOS LLANOS', 'TESORERO', 'ADMINISTRACION', 'CONTABILIDAD', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (981, 151, '1122130280', 'aprobo', 'JENNY PATRICIA LEMUS ARDILA', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (982, 151, '1006838624', 'aprobo', 'LINA PAOLA GUTIERREZ JARA', 'SEMAG DE LOS LLANOS', 'COORDINADOR DE ANALITICA Y SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (983, 151, '1122118911', 'aprobo', 'SANDRA LILIANA GUEVARA VELASQUEZ', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (984, 151, '1122137853', 'aprobo', 'DENIS CAROLINA REINA TELLEZ', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (985, 151, '1032443022', 'aprobo', 'ANLLY JULIET GARZON ROJAS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (986, 151, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (987, 151, '1006875191', 'aprobo', 'ERIC YAMID RINTA SAENZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (988, 152, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (989, 152, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (990, 152, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (991, 152, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (992, 152, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (993, 152, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (994, 152, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (995, 152, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (996, 152, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (997, 152, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (998, 152, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (999, 152, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1000, 152, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1001, 152, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1002, 152, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1003, 152, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1004, 152, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1005, 152, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1006, 152, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1007, 153, '17423595', 'aprobo', 'YEISON EDUARDO ANGEL PEREZ', 'OLEAGINOSAS SAN MARCOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1008, 153, '1121883724', 'aprobo', 'JULIO CESAR MORENO JIMENEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1009, 153, '72262612', 'aprobo', 'MIGUEL MIRANDA BERMUDEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1010, 153, '1004335328', 'aprobo', 'MIGUEL EDUARDO CARO VILLEGAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1011, 153, '1065123031', 'aprobo', 'ANTONIO RAFAEL VALDES CABARCAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1012, 153, '1054549131', 'aprobo', 'ALEJANDRO NIÑO MURC IA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1013, 153, '1123510481', 'aprobo', 'EDWAR PINTO NOVA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1014, 154, '17417340', 'aprobo', 'EDILSON GALINDO MENDOZA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1015, 154, '1121879560', 'aprobo', 'DELIO FERNANDO LLANOS CRUZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1016, 154, '1003369097', 'aprobo', 'VLADIMIR SUAREZ PEÑA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1017, 155, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1018, 155, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1019, 155, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1020, 155, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1021, 155, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1022, 155, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1023, 155, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1024, 155, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1025, 155, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1026, 156, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1027, 156, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1028, 156, '1003369097', 'aprobo', 'VLADIMIR SUAREZ PEÑA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1029, 157, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1030, 157, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1031, 157, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1032, 157, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1033, 157, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1034, 157, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1035, 157, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1036, 157, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1037, 157, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1038, 157, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1039, 157, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1040, 157, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1041, 157, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1042, 157, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1043, 157, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1044, 157, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1045, 157, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1046, 157, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1047, 157, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1048, 157, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1049, 157, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1050, 157, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1051, 157, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1052, 157, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1053, 157, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1054, 158, '2251824', 'aprobo', 'ALFREDO PEÑALOZA MORALES', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1055, 158, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1056, 158, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1057, 158, '86078810', 'aprobo', 'JEFFERSON GUTIERREZ GAMEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1058, 158, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1059, 158, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1060, 158, '86013949', 'aprobo', 'FAVER HERNANDEZ ARREDONDO', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1061, 158, '7838194', 'aprobo', 'NESTOR JULIO HERRERA PARRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1062, 159, '40432001', 'aprobo', 'CLAUDIA ROCIO CABRERA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1063, 159, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1064, 159, '10166719', 'aprobo', 'JOSE OLIVERIO OBANDO ARIAS', 'OLEAGINOSAS SAN MARCOS', 'JARDINERO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1065, 159, '8168423', 'aprobo', 'ISIDRO ANTONIO CHANTACA TORREGLOSA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1066, 159, '17287753', 'aprobo', 'ISIDRO GARZON PENAGOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1067, 160, '43591285', 'aprobo', 'LUZ DARY NOREÑA CARDENA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SERVICIOS GENERALES I', 'ADMINISTRACION', 'ADMINISTRACION', 'OPERATIVOS ADMINISTRATIVOS', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1068, 160, '1122127133', 'aprobo', 'NIDIA GARCES ORTIZ', 'SEMAG DE LOS LLANOS', 'TESORERO', 'ADMINISTRACION', 'CONTABILIDAD', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1069, 160, '1123114665', 'aprobo', 'CAMILA BAEZ DUEÑAS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1070, 160, '1006875191', 'aprobo', 'ERIC YAMID RINTA SAENZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1071, 160, '1122121389', 'aprobo', 'ERIKA JOHANNA ALARCON APOLINAR', 'SEMAG DE LOS LLANOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1072, 160, '1122130280', 'aprobo', 'JENNY PATRICIA LEMUS ARDILA', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1073, 161, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1074, 161, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1075, 161, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1076, 161, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1077, 161, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1078, 161, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1079, 161, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1080, 161, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1081, 161, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1082, 161, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1083, 161, '1078368777', 'aprobo', 'LUIS ALEJANDRO RIVAS TRIANA', 'OLEAGINOSAS SAN MARCOS', 'CONDUCTOR ', 'COMPOST', 'COMPOST', 'CONDUCTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1084, 161, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1085, 161, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1086, 161, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1129, 164, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1087, 162, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1088, 162, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1089, 162, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1090, 162, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1091, 162, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1092, 162, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1093, 162, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1094, 162, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1095, 162, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1096, 162, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1097, 162, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1098, 162, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1099, 162, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1100, 162, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1101, 162, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1102, 162, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1103, 162, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1104, 162, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1105, 162, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1106, 162, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1107, 163, '1122127133', 'aprobo', 'NIDIA GARCES ORTIZ', 'SEMAG DE LOS LLANOS', 'TESORERO', 'ADMINISTRACION', 'CONTABILIDAD', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1108, 163, '1123114665', 'aprobo', 'CAMILA BAEZ DUEÑAS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1109, 163, '1122121389', 'aprobo', 'ERIKA JOHANNA ALARCON APOLINAR', 'SEMAG DE LOS LLANOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1110, 163, '1006779061', 'aprobo', 'VALENTINA CESPEDES GOMEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1111, 163, '1122130280', 'aprobo', 'JENNY PATRICIA LEMUS ARDILA', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1112, 163, '1122118911', 'aprobo', 'SANDRA LILIANA GUEVARA VELASQUEZ', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1113, 163, '1006875191', 'aprobo', 'ERIC YAMID RINTA SAENZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1114, 164, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1115, 164, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1116, 164, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1117, 164, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1118, 164, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1119, 164, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1120, 164, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1121, 164, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1122, 164, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1123, 164, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1124, 164, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1125, 164, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1126, 164, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1127, 164, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1128, 164, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1130, 164, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1131, 164, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1132, 165, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1133, 165, '17417340', 'aprobo', 'EDILSON GALINDO MENDOZA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1134, 165, '40432001', 'aprobo', 'CLAUDIA ROCIO CABRERA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1135, 165, '10166719', 'aprobo', 'JOSE OLIVERIO OBANDO ARIAS', 'OLEAGINOSAS SAN MARCOS', 'JARDINERO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1136, 165, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1137, 165, '17412481', 'aprobo', 'MANUEL ANTONIO DIAZ RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1138, 166, '1032443022', 'aprobo', 'ANLLY JULIET GARZON ROJAS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1139, 166, '1122130280', 'aprobo', 'JENNY PATRICIA LEMUS ARDILA', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1140, 166, '1122138443', 'aprobo', 'JEFREY ANDRADE BOLIVAR', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1141, 166, '1006875191', 'aprobo', 'ERIC YAMID RINTA SAENZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1142, 166, '40397899', 'aprobo', 'SILVIA MORALES RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1143, 166, '1123114218', 'aprobo', 'PAOLA ANDREA GONZALEZ LOPEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1144, 166, '1122121389', 'aprobo', 'ERIKA JOHANNA ALARCON APOLINAR', 'SEMAG DE LOS LLANOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1145, 166, '1123114665', 'aprobo', 'CAMILA BAEZ DUEÑAS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1146, 166, '1006779061', 'aprobo', 'VALENTINA CESPEDES GOMEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1147, 166, '1122127133', 'aprobo', 'NIDIA GARCES ORTIZ', 'SEMAG DE LOS LLANOS', 'TESORERO', 'ADMINISTRACION', 'CONTABILIDAD', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1148, 167, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1149, 167, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1150, 167, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1151, 167, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1152, 167, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1153, 167, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1154, 167, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1155, 167, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1156, 167, '1122127220', 'aprobo', 'JORGE LEONARDO ANDRADE BOLIVAR', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1157, 167, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1158, 167, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1159, 167, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1160, 167, '1125476642', 'aprobo', 'INGRID TATIANA JARAMILLO URIBE', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1161, 167, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1162, 167, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1163, 167, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1164, 167, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1165, 167, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1166, 168, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1167, 168, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1168, 168, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1169, 168, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1170, 168, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1171, 168, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1172, 168, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1173, 168, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1174, 168, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1175, 168, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1176, 168, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1177, 168, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1178, 168, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1179, 168, '1120473636', 'aprobo', 'YEINY LORENA LOMBANA VALLEJO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1180, 168, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1181, 168, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1182, 168, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1183, 169, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1184, 169, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1185, 169, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1186, 169, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1187, 169, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1188, 169, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1189, 169, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1190, 169, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1191, 169, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1192, 169, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1193, 169, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1194, 169, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1195, 169, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1196, 169, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1197, 169, '86085972', 'aprobo', 'NELSON ALEJANDRO SANCHEZ', 'SEMAG DE LOS LLANOS', 'DIBUJANTE TECNICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1198, 169, '1122138443', 'aprobo', 'JEFREY ANDRADE BOLIVAR', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1199, 169, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1200, 169, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1201, 169, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1202, 169, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1203, 169, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1204, 169, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1205, 169, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1206, 169, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1207, 169, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1208, 170, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1209, 170, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1210, 170, '1121834337', 'aprobo', 'OSCAR IVAN MORA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1211, 170, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1212, 170, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1213, 170, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1214, 170, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1215, 170, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1216, 170, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1217, 170, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1218, 170, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1219, 170, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1220, 170, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1221, 170, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1222, 170, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1223, 170, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1224, 170, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1225, 170, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1226, 170, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1227, 170, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1228, 170, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1229, 171, '43591285', 'aprobo', 'LUZ DARY NOREÑA CARDENA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SERVICIOS GENERALES I', 'ADMINISTRACION', 'ADMINISTRACION', 'OPERATIVOS ADMINISTRATIVOS', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1230, 171, '5653664', 'aprobo', 'CRISANTO GOMEZ BENAVIDES', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1231, 171, '1006723719', 'aprobo', 'STIVEN ANDRES GOMEZ MOYANO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1232, 171, '86078810', 'aprobo', 'JEFFERSON GUTIERREZ GAMEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1233, 171, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1234, 171, '7838194', 'aprobo', 'NESTOR JULIO HERRERA PARRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1235, 171, '1121879560', 'aprobo', 'DELIO FERNANDO LLANOS CRUZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1236, 171, '17417340', 'aprobo', 'EDILSON GALINDO MENDOZA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1237, 172, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1238, 172, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1239, 172, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1240, 172, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1241, 172, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1242, 172, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1243, 172, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1244, 172, '1122127220', 'aprobo', 'JORGE LEONARDO ANDRADE BOLIVAR', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1245, 172, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1246, 172, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1247, 172, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1248, 172, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1249, 172, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1250, 173, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1251, 173, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1252, 173, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1253, 173, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1254, 173, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1255, 173, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1256, 173, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1257, 173, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1258, 173, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1259, 173, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1260, 174, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1261, 174, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1262, 174, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1263, 174, '1122127220', 'aprobo', 'JORGE LEONARDO ANDRADE BOLIVAR', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1264, 174, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1265, 174, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1266, 174, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1267, 174, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1268, 174, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1269, 174, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1270, 174, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1271, 174, '1122129144', 'aprobo', 'DUMAR ISRAEL ROJAS HERNANDEZ', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1272, 174, '1124190795', 'aprobo', 'JHORMAN ALEXIS CASTRO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1273, 175, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1274, 175, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1275, 175, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1276, 175, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1277, 175, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1278, 175, '1122138443', 'aprobo', 'JEFREY ANDRADE BOLIVAR', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1279, 175, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1280, 175, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1281, 175, '1124190795', 'aprobo', 'JHORMAN ALEXIS CASTRO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1282, 175, '1122129144', 'aprobo', 'DUMAR ISRAEL ROJAS HERNANDEZ', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1283, 175, '1006863071', 'aprobo', 'JHONATAN ALEXANDER MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1284, 175, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1285, 175, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1286, 175, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1287, 175, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1288, 175, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1289, 175, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1290, 176, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1291, 176, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1292, 176, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1293, 176, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1294, 176, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1295, 176, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1296, 176, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1297, 176, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1298, 176, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1299, 176, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1300, 176, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1301, 176, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1302, 176, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1303, 176, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1304, 176, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1305, 176, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1306, 176, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1307, 176, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1308, 176, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1309, 176, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1310, 176, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1311, 176, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1312, 176, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1313, 176, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1314, 176, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1315, 177, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1316, 177, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1317, 177, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1318, 177, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1319, 177, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1320, 177, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1321, 177, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1322, 177, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1323, 178, '1123510868', 'aprobo', 'CAREN YULIANA QUEVEDO APONTE', 'OLEAGINOSAS SAN MARCOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1324, 178, '7711031', 'aprobo', 'JHON JAIR OVIEDO RODRIGUEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1325, 178, '1010186065', 'aprobo', 'GIOVANNY CAMILO PADILLA PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1326, 178, '1037478252', 'aprobo', 'NEIS DAVID CABRERA TAPIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1327, 178, '1081789015', 'aprobo', 'AUGUSTO JOSE HERNANDEZ FONSECA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1328, 178, '1121935349', 'aprobo', 'JAIR SEBASTIAN BERMUDEZ ROMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1329, 179, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1330, 179, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1331, 179, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1332, 179, '1006863071', 'aprobo', 'JHONATAN ALEXANDER MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1333, 179, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1334, 179, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1335, 179, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1336, 179, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1337, 179, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1338, 179, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1339, 179, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1340, 179, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1341, 179, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1342, 179, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1343, 179, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1344, 179, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1345, 179, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1346, 179, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1347, 179, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1348, 179, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1349, 179, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1350, 179, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1351, 179, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1352, 179, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1353, 179, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1354, 180, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1355, 180, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1356, 180, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1357, 180, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1358, 180, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1359, 180, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1360, 180, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1361, 180, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1362, 181, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1363, 181, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1364, 181, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1365, 181, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1366, 181, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1367, 181, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1368, 181, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1369, 181, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1370, 181, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1371, 181, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1372, 181, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1373, 181, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1374, 181, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1375, 181, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1376, 181, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1377, 181, '1006863071', 'aprobo', 'JHONATAN ALEXANDER MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1378, 181, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1379, 181, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1380, 182, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1381, 182, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1382, 182, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1383, 182, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1384, 182, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1385, 182, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1386, 182, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1387, 182, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1388, 182, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1389, 182, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1390, 182, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1391, 182, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1392, 183, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1393, 183, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1394, 183, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1395, 183, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1396, 183, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1397, 183, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1398, 183, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1399, 183, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1400, 183, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1401, 183, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1402, 183, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1403, 183, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1404, 183, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1405, 183, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1406, 183, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1407, 183, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1408, 183, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1409, 184, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1410, 184, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1411, 184, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1412, 184, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1413, 184, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1414, 184, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1415, 184, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1416, 184, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1417, 184, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1418, 184, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1419, 184, '1121834337', 'aprobo', 'OSCAR IVAN MORA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1420, 184, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1421, 184, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1422, 184, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1423, 184, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1424, 184, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1425, 185, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1426, 185, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1427, 185, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1428, 185, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1429, 185, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1430, 185, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1431, 185, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1432, 185, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1433, 185, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1434, 185, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1435, 185, '1124848880', 'aprobo', 'OSMAN FABIAN BAMBAGUE CHAVES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1436, 185, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1437, 185, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1438, 185, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1439, 185, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1440, 185, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1441, 185, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1442, 185, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1443, 185, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1444, 185, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1445, 185, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1446, 185, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1447, 185, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1448, 185, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1449, 185, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1450, 186, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1451, 186, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1452, 186, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1453, 186, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1462, 187, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1463, 187, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1464, 187, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1465, 187, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1466, 187, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1467, 187, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1468, 187, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1469, 187, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1470, 187, '1124848880', 'aprobo', 'OSMAN FABIAN BAMBAGUE CHAVES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1471, 187, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1472, 187, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1473, 188, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1474, 188, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1475, 188, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1476, 188, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1477, 188, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1478, 188, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1479, 188, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1480, 188, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1481, 188, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1482, 188, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1483, 188, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1484, 188, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1485, 188, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1486, 189, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1487, 189, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1488, 189, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1489, 189, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1490, 189, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1491, 189, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1492, 189, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1493, 189, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1494, 189, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1495, 189, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1496, 189, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1497, 189, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1498, 189, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1499, 189, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1500, 189, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1501, 189, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1502, 189, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1503, 189, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1504, 189, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1505, 189, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1506, 189, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1507, 189, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1508, 189, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1509, 190, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1510, 190, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1511, 190, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1512, 190, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1513, 190, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1514, 190, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1515, 190, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1516, 190, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1517, 191, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1518, 191, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1519, 191, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1520, 191, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1521, 191, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1522, 191, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1523, 191, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1524, 191, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1525, 191, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1526, 191, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1527, 191, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1528, 191, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1529, 191, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1530, 192, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1531, 192, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1532, 192, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1533, 192, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1534, 192, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1535, 192, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1536, 192, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1537, 192, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1538, 192, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1539, 192, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1540, 192, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1541, 192, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1542, 193, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1543, 193, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1544, 193, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1545, 193, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1546, 193, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1547, 193, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1548, 193, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1549, 193, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1550, 193, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1551, 193, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1552, 193, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1553, 193, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1554, 193, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1555, 193, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1556, 193, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1557, 193, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1558, 194, '1010186065', 'aprobo', 'GIOVANNY CAMILO PADILLA PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1559, 194, '1121935349', 'aprobo', 'JAIR SEBASTIAN BERMUDEZ ROMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1560, 194, '1037478252', 'aprobo', 'NEIS DAVID CABRERA TAPIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1561, 194, '7711031', 'aprobo', 'JHON JAIR OVIEDO RODRIGUEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1562, 195, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1563, 195, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1564, 195, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1565, 195, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1566, 195, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1567, 195, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1568, 195, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1569, 195, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1570, 195, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1571, 195, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1572, 195, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1573, 195, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1574, 195, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1575, 195, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1576, 196, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1577, 196, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1578, 196, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1579, 196, '17266716', 'aprobo', 'JOSE ARIEL TAPIA GUZMAN', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1580, 196, '80159846', 'aprobo', 'BENJAMIN RIOS JIMENEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1581, 196, '1123510481', 'aprobo', 'EDWAR PINTO NOVA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1582, 196, '1054549131', 'aprobo', 'ALEJANDRO NIÑO MURC IA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1583, 196, '19563455', 'aprobo', 'JORGE ARMANDO CANTILLO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1666, 202, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1584, 196, '1084735140', 'aprobo', 'ELICIO JAVIER VALDES CABARCAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1585, 196, '1065123031', 'aprobo', 'ANTONIO RAFAEL VALDES CABARCAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1586, 196, '1081795404', 'aprobo', 'JUAN PABLO PAEZ IBAÑEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1587, 196, '19619269', 'aprobo', 'WILDER ENRIQUE RODRIGUEZ CASTRO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1588, 196, '1050951819', 'aprobo', 'DEINER DE JESUS MULET PAZO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1589, 196, '1118167546', 'aprobo', 'JEISON ALEJANDRO BEJARANO BOTIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1590, 196, '1128200455', 'aprobo', 'JUAN CARLOS MATUTE ZUÑIGA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1591, 196, '17413391', 'aprobo', 'RIGOBERTO PIZA SAAVEDRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1592, 197, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1593, 197, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1594, 197, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1595, 197, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1596, 197, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1597, 197, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1598, 197, '1124848880', 'aprobo', 'OSMAN FABIAN BAMBAGUE CHAVES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1599, 197, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1600, 197, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1601, 197, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1602, 198, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1603, 198, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1604, 198, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1605, 198, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1606, 198, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1607, 198, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1608, 198, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1609, 198, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1610, 198, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1611, 198, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1612, 198, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1613, 199, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1614, 199, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1615, 199, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1616, 199, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1617, 199, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1618, 199, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1619, 199, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1620, 199, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1621, 199, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1622, 199, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1623, 199, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1624, 200, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1625, 200, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1626, 200, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1627, 200, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1628, 200, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1629, 200, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1630, 200, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1631, 200, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1632, 200, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1633, 200, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1634, 200, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1635, 200, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1636, 201, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1637, 201, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1638, 201, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1639, 201, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1640, 201, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1641, 201, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1642, 201, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1643, 201, '17418301', 'aprobo', 'JAVIER MENDOZA BOJACA', 'OLEAGINOSAS SAN MARCOS', 'JEFE DE VENTAS', 'ADMINISTRACION', 'VENTAS', 'JEFES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1644, 201, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1645, 201, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1646, 201, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1647, 201, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1648, 201, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1649, 201, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1650, 201, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1651, 201, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1652, 201, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1653, 201, '1006783470', 'aprobo', 'ANTONIO MARIA ALCANTAR MONROY', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1654, 201, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1655, 201, '17419215', 'aprobo', 'ALI YOVAN AZUERO LOZANO', 'SEMAG DE LOS LLANOS', 'DIRECTOR DE PLANTA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'DIRECTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1656, 202, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1657, 202, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1658, 202, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1659, 202, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1660, 202, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1661, 202, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1662, 202, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1663, 202, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1664, 202, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1665, 202, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1667, 202, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1668, 202, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1669, 202, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1670, 202, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1671, 202, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1672, 203, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1673, 203, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1674, 203, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1675, 203, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1676, 203, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1677, 203, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1678, 203, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1679, 203, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1680, 203, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1681, 203, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1682, 203, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1683, 204, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1684, 204, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1685, 204, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1686, 204, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1687, 204, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1688, 204, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1689, 204, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1690, 204, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1691, 204, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1692, 204, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1693, 204, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1694, 204, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1695, 204, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1696, 204, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1697, 204, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1698, 204, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1699, 204, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1700, 204, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1701, 204, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1702, 204, '1122129144', 'aprobo', 'DUMAR ISRAEL ROJAS HERNANDEZ', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1703, 204, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1704, 205, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1705, 205, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1706, 205, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1707, 205, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1708, 205, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1709, 205, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1710, 205, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1711, 205, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1712, 205, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1713, 205, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1714, 205, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1715, 205, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1716, 205, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1717, 205, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1718, 205, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1719, 205, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1720, 205, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1721, 205, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1722, 206, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1723, 206, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1724, 206, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1725, 206, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1726, 206, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1727, 206, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1728, 206, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1729, 206, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1730, 206, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1731, 206, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1732, 206, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1733, 207, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1734, 207, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1735, 207, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1736, 207, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1737, 207, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1738, 207, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1739, 207, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1740, 207, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1741, 207, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1742, 207, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1743, 207, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1744, 207, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1745, 207, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1746, 207, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1747, 207, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1748, 207, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1749, 207, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1750, 207, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1751, 207, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1752, 207, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1753, 208, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1754, 208, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1755, 208, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1756, 208, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1757, 208, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1758, 208, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1759, 208, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1760, 208, '1115853757', 'aprobo', 'JENIFER SOLANYI MENDIVELSO MORENO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1761, 208, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1762, 208, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1763, 208, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1764, 208, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1765, 208, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1766, 208, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1767, 208, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1768, 208, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1769, 208, '17418301', 'aprobo', 'JAVIER MENDOZA BOJACA', 'OLEAGINOSAS SAN MARCOS', 'JEFE DE VENTAS', 'ADMINISTRACION', 'VENTAS', 'JEFES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1770, 208, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1771, 208, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1772, 208, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1773, 208, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1774, 208, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1775, 208, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1776, 208, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1777, 208, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1778, 209, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1779, 209, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1780, 209, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1781, 210, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1782, 210, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1783, 210, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1784, 210, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1785, 210, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1786, 210, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1787, 210, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1788, 210, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1789, 210, '1006863071', 'aprobo', 'JHONATAN ALEXANDER MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1790, 210, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1791, 210, '1006783470', 'aprobo', 'ANTONIO MARIA ALCANTAR MONROY', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1792, 210, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1793, 210, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1794, 210, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1795, 210, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1796, 210, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1797, 210, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1798, 210, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1799, 210, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1800, 210, '1006415951', 'aprobo', 'JHONATAN ARLEY ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1801, 210, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1802, 210, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1803, 210, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1804, 210, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1805, 210, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1806, 211, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1807, 211, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1808, 211, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1809, 211, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1810, 211, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1811, 211, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1812, 211, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1813, 211, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1814, 211, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1815, 211, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1816, 211, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1817, 211, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1818, 211, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1819, 211, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1820, 211, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1821, 211, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1822, 211, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1823, 211, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1824, 211, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1825, 211, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1826, 211, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1827, 211, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1828, 211, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1829, 211, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1830, 211, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1831, 212, '17419215', 'aprobo', 'ALI YOVAN AZUERO LOZANO', 'SEMAG DE LOS LLANOS', 'DIRECTOR DE PLANTA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'DIRECTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1832, 212, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1833, 213, '72262612', 'aprobo', 'MIGUEL MIRANDA BERMUDEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1834, 213, '1119887188', 'aprobo', 'DARIO ALFONSO PEÑUELA ACOSTA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1835, 213, '1123512702', 'aprobo', 'YANIDSAT FINO GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1836, 213, '1118167546', 'aprobo', 'JEISON ALEJANDRO BEJARANO BOTIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1837, 213, '1123114895', 'aprobo', 'CLAUDIA PATRICIA AYALA VEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1838, 213, '1084791483', 'aprobo', 'TIBISAY PITRE LAGO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1839, 213, '1084735140', 'aprobo', 'ELICIO JAVIER VALDES CABARCAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1840, 213, '19619269', 'aprobo', 'WILDER ENRIQUE RODRIGUEZ CASTRO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1841, 213, '1128200455', 'aprobo', 'JUAN CARLOS MATUTE ZUÑIGA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1842, 213, '1128189335', 'aprobo', 'EVER ANTONIO MEJIA REYES', 'OLEAGINOSAS SAN MARCOS', 'GANCHERO', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1843, 213, '19563455', 'aprobo', 'JORGE ARMANDO CANTILLO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1844, 213, '74846079', 'aprobo', 'ARISTOBULO BELTRAN MORA', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE PRODUCCION', 'LOGISTICA Y COSECHA', 'SANIDAD', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1845, 213, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1846, 213, '1122128356', 'aprobo', 'YEISON JAIR ARDILA CASTILLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1847, 213, '1122122892', 'aprobo', 'EDWIN CAMILO SALGADO ARANGO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1848, 213, '1050951819', 'aprobo', 'DEINER DE JESUS MULET PAZO', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1849, 213, '1081795404', 'aprobo', 'JUAN PABLO PAEZ IBAÑEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1850, 213, '93121602', 'aprobo', 'RUBEN DARIO RAMIREZ AVILES', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1851, 213, '17413391', 'aprobo', 'RIGOBERTO PIZA SAAVEDRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1852, 213, '1123510481', 'aprobo', 'EDWAR PINTO NOVA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1853, 213, '1054549131', 'aprobo', 'ALEJANDRO NIÑO MURC IA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1854, 213, '40434381', 'aprobo', 'OVIDIA MENDOZA MALAGON', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1855, 213, '19000809', 'aprobo', 'JHON JAIRO GALEANO VALDOMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1856, 213, '1084731299', 'aprobo', 'JOVANI ENRIQUE POLO ARIAS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1857, 214, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1858, 214, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1859, 214, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1860, 215, '17286025', 'aprobo', 'GUSTAVO GARZON PENAGOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1861, 215, '2251824', 'aprobo', 'ALFREDO PEÑALOZA MORALES', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1862, 215, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1863, 215, '8168423', 'aprobo', 'ISIDRO ANTONIO CHANTACA TORREGLOSA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1864, 216, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1865, 216, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1866, 216, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1867, 216, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1868, 216, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1869, 216, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1870, 216, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1871, 216, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1872, 216, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1873, 216, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1874, 216, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1875, 216, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1876, 216, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1877, 216, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1878, 216, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1879, 216, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1880, 216, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1881, 217, '1123114218', 'aprobo', 'PAOLA ANDREA GONZALEZ LOPEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1882, 217, '1006779061', 'aprobo', 'VALENTINA CESPEDES GOMEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1883, 217, '40397899', 'aprobo', 'SILVIA MORALES RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1884, 217, '1123114665', 'aprobo', 'CAMILA BAEZ DUEÑAS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1885, 217, '1000616234', 'aprobo', 'MARIA FERNANDA HURTADO BOHORQUEZ', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA AGRONOMICO', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1886, 217, '1095843267', 'aprobo', 'MARIA FERNANDA CHINCHILLA CASTELLANOS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR DE PROYECTOS', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1887, 217, '1015477571', 'aprobo', 'KAREN DANIELA BERNAL HENDES', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA AGRONOMICO', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1888, 217, '1116202263', 'aprobo', 'EUSER HUMBERTO POVEDA ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1889, 217, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1890, 217, '52805686', 'aprobo', 'ROSA MARIA BENAVIDES ESPINOSA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR ADMINISTRATIVO', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1891, 217, '1000969908', 'aprobo', 'SEBASTIAN CASTAÑEDA ESGUERRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1892, 217, '7837907', 'aprobo', 'FERNANDO JAVIER CRUZ PAREDES', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR DE LOGISTICA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1893, 217, '1007613918', 'aprobo', 'ANDRES FELIPE MELO MEJIA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1894, 217, '8168423', 'aprobo', 'ISIDRO ANTONIO CHANTACA TORREGLOSA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1895, 217, '1123115430', 'aprobo', 'HECTOR ANDRES MEDINA BONILLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1896, 217, '17412481', 'aprobo', 'MANUEL ANTONIO DIAZ RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1897, 217, '1122137853', 'aprobo', 'DENIS CAROLINA REINA TELLEZ', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1898, 217, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1899, 217, '1006822396', 'aprobo', 'ANDRES FELIPE RINCON ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1900, 217, '43591285', 'aprobo', 'LUZ DARY NOREÑA CARDENA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SERVICIOS GENERALES I', 'ADMINISTRACION', 'ADMINISTRACION', 'OPERATIVOS ADMINISTRATIVOS', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1901, 217, '51742339', 'aprobo', 'FLOR MARIA RAVELO QUINTERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE SERVICIOS GENERALES I', 'ADMINISTRACION', 'ADMINISTRACION', 'OPERATIVOS ADMINISTRATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1902, 217, '1121879560', 'aprobo', 'DELIO FERNANDO LLANOS CRUZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1903, 217, '1123115615', 'aprobo', 'OSCAR IVAN DUQUE RIAÑO', 'OLEAGINOSAS SAN MARCOS', 'SUPERVISOR DE LOGISTICA II', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1904, 217, '1049894190', 'aprobo', 'YAELIS CANTILLO RAMOS', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1905, 217, '40397487', 'aprobo', 'LUZ ESTELLA ZARATE TRIANA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SERVICIOS GENERALES I', 'ADMINISTRACION', 'ADMINISTRACION', 'OPERATIVOS ADMINISTRATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1906, 218, '1123084858', 'aprobo', 'RAFAEL STIVEN ROMERO OBANDO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1907, 218, '1122127033', 'aprobo', 'CINDI LORENA GUEVARA CALDERON', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1908, 218, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1909, 219, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1910, 219, '1122121389', 'aprobo', 'ERIKA JOHANNA ALARCON APOLINAR', 'SEMAG DE LOS LLANOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1911, 219, '86085972', 'aprobo', 'NELSON ALEJANDRO SANCHEZ', 'SEMAG DE LOS LLANOS', 'DIBUJANTE TECNICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1912, 219, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1913, 219, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1914, 219, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1915, 219, '1122127220', 'aprobo', 'JORGE LEONARDO ANDRADE BOLIVAR', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1916, 219, '86043385', 'aprobo', 'JORGE ALEXANDER SILVA CRUZ', 'SEMAG DE LOS LLANOS', 'DIRECTOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'DIRECTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1917, 219, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1918, 219, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1919, 219, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1920, 219, '17419215', 'aprobo', 'ALI YOVAN AZUERO LOZANO', 'SEMAG DE LOS LLANOS', 'DIRECTOR DE PLANTA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'DIRECTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1921, 219, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1922, 219, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1923, 219, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1924, 219, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1925, 219, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1926, 219, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1927, 219, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1928, 219, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1929, 219, '1027943550', 'aprobo', 'NICOLE ANDREA BALANTA MARTINEZ', 'SEMAG DE LOS LLANOS', 'ESTUDIANTE SENA ETAPA PRODUCTIVA', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1930, 219, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1931, 219, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1932, 219, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1933, 219, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1934, 220, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1935, 220, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1936, 220, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1937, 220, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1938, 220, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1939, 220, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1940, 220, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1941, 220, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1942, 220, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1943, 220, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1944, 220, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1945, 220, '1006415951', 'aprobo', 'JHONATAN ARLEY ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1946, 220, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1947, 220, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1948, 220, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1949, 220, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1950, 220, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1951, 221, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1952, 221, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1953, 221, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1954, 221, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1955, 221, '1121826424', 'aprobo', 'WALTER ROLANDO VELASQUEZ ALEJO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1956, 221, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1957, 221, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1958, 221, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1959, 221, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1960, 221, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1961, 221, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1962, 221, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1963, 221, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1964, 221, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1965, 222, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1966, 222, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1967, 222, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1968, 222, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1969, 222, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1970, 222, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1971, 222, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1972, 222, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1973, 222, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1974, 222, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1975, 223, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1976, 223, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1977, 223, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1978, 223, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1979, 223, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1980, 223, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1981, 223, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1982, 223, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1983, 223, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1984, 223, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1985, 223, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1986, 223, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1987, 223, '1006783470', 'aprobo', 'ANTONIO MARIA ALCANTAR MONROY', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1988, 223, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1989, 223, '86085972', 'aprobo', 'NELSON ALEJANDRO SANCHEZ', 'SEMAG DE LOS LLANOS', 'DIBUJANTE TECNICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1990, 223, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1991, 223, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1992, 223, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1993, 223, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1994, 223, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1995, 223, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1996, 223, '1006863071', 'aprobo', 'JHONATAN ALEXANDER MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1997, 223, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1998, 223, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (1999, 223, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2000, 224, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2001, 224, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2002, 224, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2003, 224, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2004, 224, '1006415951', 'aprobo', 'JHONATAN ARLEY ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2005, 224, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2006, 224, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2007, 224, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2008, 224, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2009, 224, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2010, 224, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2011, 224, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2012, 224, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2013, 224, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2014, 224, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2015, 224, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2016, 224, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2017, 224, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2018, 225, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2019, 225, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2020, 225, '1123114330', 'aprobo', 'WILVER BAQUERO PINEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2021, 225, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2022, 225, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2023, 225, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2024, 225, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2025, 225, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2026, 225, '1006415951', 'aprobo', 'JHONATAN ARLEY ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2027, 225, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2028, 225, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2029, 225, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2030, 225, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2031, 225, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2032, 225, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2033, 225, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2034, 225, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2035, 225, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2036, 226, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2037, 226, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2038, 226, '1006783470', 'aprobo', 'ANTONIO MARIA ALCANTAR MONROY', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2039, 226, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2040, 226, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2041, 226, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2042, 226, '1121967163', 'aprobo', 'DANIEL LEONARDO SUAREZ BUSTOS', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2043, 226, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2044, 226, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2045, 226, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2046, 226, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2047, 226, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2048, 226, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2049, 226, '1006415951', 'aprobo', 'JHONATAN ARLEY ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2050, 226, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2051, 226, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2052, 226, '1121834337', 'aprobo', 'OSCAR IVAN MORA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2053, 227, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2054, 227, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2055, 227, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2056, 227, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2057, 227, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2058, 227, '86085972', 'aprobo', 'NELSON ALEJANDRO SANCHEZ', 'SEMAG DE LOS LLANOS', 'DIBUJANTE TECNICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2059, 227, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2060, 227, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2061, 227, '1122127220', 'aprobo', 'JORGE LEONARDO ANDRADE BOLIVAR', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2062, 227, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2063, 227, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2064, 227, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2065, 227, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2066, 227, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2067, 227, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2068, 227, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2069, 227, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2070, 227, '1124190795', 'aprobo', 'JHORMAN ALEXIS CASTRO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2071, 227, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2072, 227, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2073, 227, '1006415951', 'aprobo', 'JHONATAN ARLEY ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2074, 227, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2075, 227, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2076, 227, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2077, 227, '1115790149', 'aprobo', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2078, 228, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2079, 228, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2080, 228, '1122130097', 'aprobo', 'WILLIAM ALEXANDER REYES ROJAS', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2081, 228, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2082, 228, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2083, 228, '17414234', 'aprobo', 'FERNANDO CAÑON VALERO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2084, 228, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2085, 228, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2086, 228, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2087, 228, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2088, 228, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2089, 228, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2090, 228, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2132, 230, '1123115004', 'aprobo', 'MARIA ALEJANDRA MORA GUTIERREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2091, 228, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2092, 229, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2093, 229, '1122129144', 'aprobo', 'DUMAR ISRAEL ROJAS HERNANDEZ', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2094, 229, '1123116401', 'aprobo', 'NELSON MAURICIO MORA VARON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2095, 229, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2096, 229, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2097, 229, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2098, 229, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2099, 229, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2100, 229, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2101, 229, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2102, 229, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2103, 229, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2104, 229, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2105, 229, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2106, 229, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2107, 229, '86085972', 'aprobo', 'NELSON ALEJANDRO SANCHEZ', 'SEMAG DE LOS LLANOS', 'DIBUJANTE TECNICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2108, 229, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2109, 229, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2110, 229, '1006783470', 'aprobo', 'ANTONIO MARIA ALCANTAR MONROY', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2111, 229, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2112, 229, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2113, 229, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2114, 229, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2115, 229, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2116, 229, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2117, 230, '1121935349', 'aprobo', 'JAIR SEBASTIAN BERMUDEZ ROMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2118, 230, '1010186065', 'aprobo', 'GIOVANNY CAMILO PADILLA PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2119, 230, '1003369097', 'aprobo', 'VLADIMIR SUAREZ PEÑA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2120, 230, '98686765', 'aprobo', 'HUMBERTO ANTONIO GOMEZ PAEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2121, 230, '1037478252', 'aprobo', 'NEIS DAVID CABRERA TAPIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2122, 230, '1006875133', 'aprobo', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2123, 230, '1000969908', 'aprobo', 'SEBASTIAN CASTAÑEDA ESGUERRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2124, 230, '17417340', 'aprobo', 'EDILSON GALINDO MENDOZA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2125, 230, '86076533', 'aprobo', 'CORNELIO SILVA GAITAN', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2126, 230, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2127, 230, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2128, 230, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2129, 230, '1123116537', 'aprobo', 'DANISSA VIVEROS PANAMEÑO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2130, 230, '86056213', 'aprobo', 'JOSE SAID VARGAS IPUS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2131, 230, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2133, 230, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2134, 230, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2135, 230, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2136, 230, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2137, 230, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2138, 230, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2139, 230, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2140, 230, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2141, 230, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2142, 231, '17419215', 'aprobo', 'ALI YOVAN AZUERO LOZANO', 'SEMAG DE LOS LLANOS', 'DIRECTOR DE PLANTA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'DIRECTORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2143, 231, '1122129144', 'aprobo', 'DUMAR ISRAEL ROJAS HERNANDEZ', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2144, 231, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2145, 231, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2146, 231, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2147, 231, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2148, 231, '1124848880', 'aprobo', 'OSMAN FABIAN BAMBAGUE CHAVES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2149, 231, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2150, 231, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2151, 231, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2152, 231, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2153, 231, '1006783470', 'aprobo', 'ANTONIO MARIA ALCANTAR MONROY', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2154, 231, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2155, 231, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2156, 231, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2157, 231, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2158, 231, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2159, 231, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2160, 231, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2161, 231, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2162, 231, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2163, 231, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2164, 231, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2165, 231, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2166, 232, '1006863053', 'aprobo', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2167, 232, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2168, 232, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2169, 232, '1006783470', 'aprobo', 'ANTONIO MARIA ALCANTAR MONROY', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2170, 232, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2171, 232, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2172, 232, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2173, 232, '1123116616', 'aprobo', 'MARTHA YURANIS LOPEZ NOREÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2174, 232, '1121823601', 'aprobo', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2175, 232, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2176, 232, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2177, 232, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2178, 232, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2179, 232, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2180, 232, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2181, 232, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2182, 232, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2183, 232, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2184, 232, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2185, 232, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2186, 232, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2187, 232, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2188, 233, '1000047346', 'aprobo', 'JHON ALEXANDER GOMEZ ZAMBRANO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2189, 233, '66945678', 'aprobo', 'MARCIA PANAMEÑO RAMOS', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2190, 233, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2191, 233, '1006783470', 'aprobo', 'ANTONIO MARIA ALCANTAR MONROY', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2192, 233, '1122141585', 'aprobo', 'NIXON BALENTIN ARIZA AGUDELO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2193, 233, '1120838807', 'aprobo', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2194, 233, '1000972343', 'aprobo', 'LAURA KATERIN APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE DE ALMACEN Y COMPRAS', 'ADMINISTRACION', 'ALMACEN', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2195, 233, '1000972341', 'aprobo', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2196, 233, '1006772386', 'aprobo', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2197, 234, '79636045', 'aprobo', 'EDWIN OLIMPO DELGADO MENDOZA', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2198, 234, '1006779934', 'aprobo', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2199, 234, '1122652148', 'aprobo', 'WILMER ELIECER ROMERO LOPEZ', 'SEMAG DE LOS LLANOS', 'COORDINADOR PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2200, 234, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2201, 234, '1006776756', 'aprobo', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2202, 234, '1019022428', 'aprobo', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2203, 234, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2204, 234, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2205, 234, '1120361996', 'aprobo', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2206, 234, '1122120970', 'aprobo', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2207, 234, '1123115593', 'aprobo', 'JUAN DAVID ROCHA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2208, 234, '1122129144', 'aprobo', 'DUMAR ISRAEL ROJAS HERNANDEZ', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2209, 234, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2210, 234, '11275841', 'aprobo', 'WALTER ANTONIO LOPEZ TABARES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2211, 234, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2212, 234, '1123117506', 'aprobo', 'YOVANIS ALEXIS BARROSO HERRERA', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2213, 234, '1121919092', 'aprobo', 'JENNINSON CRISPIN DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'POR ASIGNAR', 'POR ASIGNAR', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2214, 234, '1123114837', 'aprobo', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2215, 234, '1006838662', 'aprobo', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2216, 234, '1006838449', 'aprobo', 'ANDRES DARIO CASTELLANOS CIFUENTES', 'SEMAG DE LOS LLANOS', 'SOLDADOR MECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2217, 234, '1123531569', 'aprobo', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2218, 234, '1124848880', 'aprobo', 'OSMAN FABIAN BAMBAGUE CHAVES', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2219, 234, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2220, 234, '1121880702', 'aprobo', 'LUISA FERNANDA TELLO TOVAR', 'SEMAG DE LOS LLANOS', 'PLANEADOR MANTENIMIENTO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2221, 234, '1007441523', 'aprobo', 'YANCARLOS ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2222, 235, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2223, 235, '1006863050', 'aprobo', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2224, 235, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2225, 235, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2226, 235, '1120841203', 'aprobo', 'YEISON STIVEN DIAZ MENDOZA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2227, 235, '87948678', 'aprobo', 'JAVIER ALFREDO CENTENO', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2242, 236, '1124190795', 'aprobo', 'JHORMAN ALEXIS CASTRO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2228, 236, '1026257976', 'aprobo', 'BRAYAN STEVEN LOPEZ SERRATO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2235, 236, '1006799630', 'aprobo', 'HERNAN DARIO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2232, 236, '1123085690', 'aprobo', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2230, 236, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2238, 236, '1006777925', 'aprobo', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2239, 236, '83230060', 'aprobo', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2234, 236, '1123115647', 'aprobo', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2237, 236, '1006415951', 'aprobo', 'JHONATAN ARLEY ESPEJO MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2233, 236, '1006779702', 'aprobo', 'JULIAN FELIPE PINZON MARTINEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2241, 236, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2229, 236, '1123114633', 'aprobo', 'DEIBER HUMBERTO CARDENAS RICO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2236, 236, '1006838564', 'aprobo', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2243, 237, '1123114837', 'no_aplica', 'VICTOR ALFONSO CORTES MOLINA', 'SEMAG DE LOS LLANOS', 'ELECTROMECANICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2240, 236, '1006838441', 'aprobo', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2247, 237, '1019022428', 'no_aplica', 'MAICOL STIVEN OSORIO BAQUERO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2244, 237, '1006783470', 'no_aplica', 'ANTONIO MARIA ALCANTAR MONROY', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2245, 237, '1122120970', 'no_aplica', 'HAROLD JHONDANY CRUZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2246, 237, '1120361996', 'no_aplica', 'KEVIN DAVID CARTAGENA RAMIREZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2266, 238, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2267, 238, '1111194516', 'aprobo', 'YULI PAOLA CAMACHO FLOREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2268, 238, '1122120601', 'aprobo', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2269, 238, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2270, 238, '1010186065', 'aprobo', 'GIOVANNY CAMILO PADILLA PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2271, 238, '7711031', 'aprobo', 'JHON JAIR OVIEDO RODRIGUEZ', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2272, 238, '17417340', 'aprobo', 'EDILSON GALINDO MENDOZA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2273, 238, '98686765', 'aprobo', 'HUMBERTO ANTONIO GOMEZ PAEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2274, 238, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2275, 238, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2276, 238, '1003369097', 'aprobo', 'VLADIMIR SUAREZ PEÑA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2277, 238, '1037478252', 'aprobo', 'NEIS DAVID CABRERA TAPIA', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2278, 238, '1122119449', 'aprobo', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2279, 238, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2280, 238, '1123116537', 'aprobo', 'DANISSA VIVEROS PANAMEÑO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2281, 238, '1120026250', 'aprobo', 'ESTEBAN SANTIAGO GUZMAN IPUZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2282, 238, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2283, 238, '1015477571', 'aprobo', 'KAREN DANIELA BERNAL HENDES', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA AGRONOMICO', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2284, 238, '1121935349', 'aprobo', 'JAIR SEBASTIAN BERMUDEZ ROMERO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2285, 238, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2286, 238, '1121879560', 'aprobo', 'DELIO FERNANDO LLANOS CRUZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2287, 239, '1123560144', 'aprobo', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2288, 240, '1121973213', 'aprobo', 'JOHANDRI JOSE VIVANCO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2259, 237, '1000972341', 'no_aplica', 'LEIDY ESTEFANIA APONTE MONTAÑEZ', 'SEMAG DE LOS LLANOS', 'ASISTENTE PRODUCCION INDUSTRIAL', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2258, 237, '40433429', 'no_aplica', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2260, 237, '1006772386', 'no_aplica', 'ANGELA PATRICIA MENDEZ ALMANZA', 'SEMAG DE LOS LLANOS', 'PASANTE UNIVERSITARIO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2265, 237, '1120838807', 'no_aplica', 'MARIA JOSE MAHECHA GARCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR ADMINISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2249, 237, '1122513183', 'no_aplica', 'JOHAN SANTIAGO POBLADOR GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2262, 237, '1123560144', 'no_aplica', 'ANDRES ALBERTO AYALA DIAZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2251, 237, '1006776756', 'no_aplica', 'BRAYAN SMITH ORTEGA HERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE MANTENIMIENTO Y SOLDADURA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2252, 237, '1123531569', 'no_aplica', 'JOSE MAIRON RUBIANO YATE', 'SEMAG DE LOS LLANOS', 'TECNICO EN SISTEMA HADRAULICO', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2261, 237, '1006779934', 'no_aplica', 'LUISA FERNANDA CERA ATEHORTUA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2264, 237, '1006863050', 'no_aplica', 'DIEGO ALEJANDRO MOYANO GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2255, 237, '1006658965', 'no_aplica', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2248, 237, '1122141585', 'no_aplica', 'NIXON BALENTIN ARIZA AGUDELO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2253, 237, '1006838662', 'no_aplica', 'JUAN CAMILO RAMIREZ NOGUERA', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2250, 237, '1123114388', 'no_aplica', 'DIEGO ALEXANDER RODRIGUEZ CASTAÑEDA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2263, 237, '1005690575', 'no_aplica', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2256, 237, '1006823065', 'no_aplica', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2254, 237, '1115790149', 'no_aplica', 'ANDRES MAURICIO RIOS GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2289, 241, '1006837429', 'aprobo', 'JEFERSON SNEYDER LEON CASTRILLON', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2290, 242, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2291, 243, '1122513183', 'aprobo', 'JOHAN SANTIAGO POBLADOR GONZALEZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2292, 244, '1006658965', 'aprobo', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2293, 245, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2294, 246, '1006823065', 'aprobo', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2295, 246, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2296, 247, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2297, 245, '40433429', 'aprobo', 'MARIA EDILMA PUENTES PEÑA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2298, 248, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2299, 249, '1123114224', 'aprobo', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2300, 250, '1122122429', 'aprobo', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2301, 251, '1121941500', 'aprobo', 'JANERSON VIVEROS PANAMEÑO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2302, 251, '1122129144', 'aprobo', 'DUMAR ISRAEL ROJAS HERNANDEZ', 'SEMAG DE LOS LLANOS', 'ANALISTA DE INFORMACION', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2303, 251, '1005690575', 'aprobo', 'JORGE ANTONIO VILLALOBOS RIAÑO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2304, 252, '86085633', 'aprobo', 'YORGE ALEXANDER CUBILLOS ESPITIA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA I', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2305, 252, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2306, 253, '6406181', 'aprobo', 'JOSE MARTIN REYES FERNANDEZ', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2307, 253, '1006838686', 'aprobo', 'YORDAN BERMUDEZ LEON', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2308, 254, '96357774', 'aprobo', 'WILMER ANTURI BUSTOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2309, 254, '1120374274', 'aprobo', 'ALDAIR ARISMENDI SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2310, 254, '1000969908', 'aprobo', 'SEBASTIAN CASTAÑEDA ESGUERRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2311, 254, '40775117', 'aprobo', 'ROCIO CONTRERAS RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2312, 254, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2313, 254, '1007780450', 'aprobo', 'MANUEL ESTEBAN DIAZ PEREIRA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2314, 254, '1006779589', 'aprobo', 'LUISA FERNANDA RODRIGUEZ BELLO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2315, 254, '17287753', 'aprobo', 'ISIDRO GARZON PENAGOS', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS IV', 'COMPOST', 'COMPOST', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2316, 254, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2317, 254, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2318, 254, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2319, 254, '1121820534', 'aprobo', 'CRISTIAN JULIAN CABALLERO FEO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2320, 254, '1122145747', 'aprobo', 'CRISTIAN IGNACIO SILVA ALDANA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2321, 255, '40434381', 'aprobo', 'OVIDIA MENDOZA MALAGON', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2330, 257, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2326, 256, '1122139934', 'no_aplica', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2324, 256, '1002623157', 'no_aplica', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2329, 256, '40433886', 'no_aplica', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2327, 256, '1121825154', 'no_aplica', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2325, 256, '1123086261', 'no_aplica', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2323, 256, '52850723', 'no_aplica', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2328, 256, '1006555318', 'no_aplica', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2331, 257, '52850723', 'aprobo', 'ELIZABETH ROSAS GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2332, 257, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2333, 257, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2334, 257, '1122139934', 'aprobo', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2335, 257, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2336, 257, '1006555318', 'aprobo', 'ORLANDO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2337, 257, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2364, 260, '1122127448', 'aprobo', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2365, 260, '1116266182', 'aprobo', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2366, 260, '1121825154', 'aprobo', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2367, 260, '1006779399', 'aprobo', 'PAULA ANDREA CASALLAS PACHECO', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2368, 260, '52966773', 'aprobo', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2372, 260, '1002623157', 'aprobo', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2373, 260, '1027947140', 'aprobo', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2374, 260, '7838219', 'aprobo', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2375, 260, '40433886', 'aprobo', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2352, 259, '1006838624', 'no_aplica', 'LINA PAOLA GUTIERREZ JARA', 'SEMAG DE LOS LLANOS', 'COORDINADOR DE ANALITICA Y SISTEMAS', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2353, 259, '1122137853', 'no_aplica', 'DENIS CAROLINA REINA TELLEZ', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2354, 259, '1122130280', 'no_aplica', 'JENNY PATRICIA LEMUS ARDILA', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2363, 259, '1123114218', 'no_aplica', 'PAOLA ANDREA GONZALEZ LOPEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2359, 259, '1006875191', 'no_aplica', 'ERIC YAMID RINTA SAENZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2357, 259, '1123114665', 'no_aplica', 'CAMILA BAEZ DUEÑAS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2355, 259, '1122118911', 'no_aplica', 'SANDRA LILIANA GUEVARA VELASQUEZ', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE ADMNISTRATIVO', 'ADMINISTRACION', 'ADMINISTRACION', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2356, 259, '40397899', 'no_aplica', 'SILVIA MORALES RAMIREZ', 'OLEAGINOSAS SAN MARCOS', 'ASISTENTE CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2361, 259, '10166719', 'no_aplica', 'JOSE OLIVERIO OBANDO ARIAS', 'OLEAGINOSAS SAN MARCOS', 'JARDINERO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2360, 259, '1122127133', 'no_aplica', 'NIDIA GARCES ORTIZ', 'SEMAG DE LOS LLANOS', 'TESORERO', 'ADMINISTRACION', 'CONTABILIDAD', 'ANALISTAS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2362, 259, '7837606', 'no_aplica', 'LEOPOLDO ROBAYO ISAZA', 'OLEAGINOSAS SAN MARCOS', 'JARDINERO', 'ADMINISTRACION', 'ADMINISTRACION', 'NO DEFINIDO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2343, 258, '1124190795', 'no_aplica', 'JHORMAN ALEXIS CASTRO VERGARA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE MAQUINARIA AGRICOLA', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2341, 258, '1123114633', 'no_aplica', 'DEIBER HUMBERTO CARDENAS RICO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2345, 258, '1123114224', 'no_aplica', 'NICHELZEN ALEXANDER LOPEZ DIAZ', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2338, 258, '1026257976', 'no_aplica', 'BRAYAN STEVEN LOPEZ SERRATO', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2348, 258, '83230060', 'no_aplica', 'ADOLFO PARRA VARGAS', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE PROCESO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2339, 258, '1006838564', 'no_aplica', 'CESAR FABIAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2349, 258, '1121823601', 'no_aplica', 'DIEGO FERNANDO CAMACHO URUEÑA', 'SEMAG DE LOS LLANOS', 'ASISTENTE ADMNISTRATIVO', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'ASISTENTES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2347, 258, '1122122429', 'no_aplica', 'YORMAN ALBERTO TRIVIÑO CONTRERAS', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2344, 258, '1123115647', 'no_aplica', 'DIEGO ALEXANDER PEÑA VARELA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2350, 258, '1006823065', 'no_aplica', 'ANDREA NATALIA MOSQUERA PERDOMO', 'SEMAG DE LOS LLANOS', 'SUPERVISOR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'SUPERVISORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2342, 258, '1123085690', 'no_aplica', 'GABRIEL GUTIERREZ APONTE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2346, 258, '1006658965', 'no_aplica', 'YEISON ANDRES MEJIA VALENCIA', 'SEMAG DE LOS LLANOS', 'AUXILIAR DE LABORATORIO', 'PLANTA EXTRACTORA', 'LABORATORIO', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2351, 258, '1006838441', 'no_aplica', 'LUIS HUMBERTO SAAVEDRA ZARATE', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2369, 260, '1123086261', 'aprobo', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2376, 260, '85261777', 'aprobo', 'MILTON JULIO GONZALEZ JULIO', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2377, 260, '1006838669', 'aprobo', 'JENNY ALEXANDRA GUTIERREZ YARA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2378, 260, '1122127033', 'aprobo', 'CINDI LORENA GUEVARA CALDERON', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2379, 260, '1120026250', 'aprobo', 'ESTEBAN SANTIAGO GUZMAN IPUZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2380, 260, '1115916468', 'aprobo', 'WILMAR RICARDO GARCIA ACOSTA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2381, 260, '7838194', 'aprobo', 'NESTOR JULIO HERRERA PARRA', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'AUXILIARES OPERATIVOS', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2382, 260, '1022349358', 'aprobo', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2383, 260, '10499152', 'aprobo', 'JHON JAIMER BALANTA CIFUENTES', 'OLEAGINOSAS SAN MARCOS', 'OPERARIO DE LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'LOGISTICA Y COSECHA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2384, 260, '1006838744', 'aprobo', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2385, 260, '1123115430', 'aprobo', 'HECTOR ANDRES MEDINA BONILLA', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2231, 236, '1082974980', 'aprobo', 'JESUS MIGUEL MIRANDA TUNA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2257, 237, '1006863053', 'no_aplica', 'OSCAR EDUARDO SANTANILLA QUINTERO', 'SEMAG DE LOS LLANOS', 'OPERARIO ENERGIA', 'MANTENIMIENTO INDUSTRIAL', 'MANTENIMIENTO INDUSTRIAL', 'OPERATIVOS MANTENIMIENTO', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2358, 259, '1122121389', 'no_aplica', 'ERIKA JOHANNA ALARCON APOLINAR', 'SEMAG DE LOS LLANOS', 'AUXILIAR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'AUXILIARES', 'Permiso');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2340, 258, '1006777925', 'no_aplica', 'MICHAEL ESTEBAN SAAVEDRA OCHOA', 'SEMAG DE LOS LLANOS', 'OPERARIO DE PLANTA II', 'PLANTA EXTRACTORA', 'PLANTA EXTRACTORA', 'OPERATIVOS PLANTA EXT', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2387, 261, '1122120878', 'no_aplica', 'ALEXANDRA OBANDO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2400, 261, '1122116022', 'no_aplica', 'JOHAN FELIPE RUIZ AGUDELO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2393, 261, '1116266182', 'no_aplica', 'JHONATAN BEDOYA MANRIQUE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2391, 261, '1122139934', 'no_aplica', 'DISNARDA MARIA SANABRIA GUACARAPARE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Vacaciones');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2395, 261, '1122127448', 'no_aplica', 'MARYORI JOHANA ARIAS SANCHEZ', 'OLEAGINOSAS SAN MARCOS', 'AUXILIAR DE SUPERVISION AGRICOLA', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'AUXILIARES OPERATIVOS', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2390, 261, '1006838744', 'no_aplica', 'DEISY ALEXANDRA MELO GONZALEZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2388, 261, '40433886', 'no_aplica', 'MERLY JOHANA GOMEZ ALVAREZ', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2402, 261, '52966773', 'no_aplica', 'NILSA CAPERA YATE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2398, 261, '1006838669', 'no_aplica', 'JENNY ALEXANDRA GUTIERREZ YARA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2397, 261, '1027947140', 'no_aplica', 'CARLOS ALBERTO FUENTES GARCIA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2394, 261, '1122127033', 'no_aplica', 'CINDI LORENA GUEVARA CALDERON', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2405, 261, '1006875133', 'no_aplica', 'SEBASTIAN RAMIREZ RUIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2401, 261, '1122119449', 'no_aplica', 'OLGA LUCIA RIVEROS ORTEGA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2403, 261, '1006822396', 'no_aplica', 'ANDRES FELIPE RINCON ORTIZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS III', 'PRODUCCION AGRICOLA', 'PRODUCCION AGRICOLA', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2386, 261, '1022349358', 'no_aplica', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2404, 261, '1002623157', 'no_aplica', 'YESICA SIRLEY ESPEJO USECHE', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2392, 261, '1123086261', 'no_aplica', 'GLADYS YOLANDA CARVAJAL MENDEZ', 'OLEAGINOSAS SAN MARCOS', 'OFICIOS VARIOS II', 'LOGISTICA Y COSECHA', 'SANIDAD', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2399, 261, '7838219', 'no_aplica', 'ROBER ALEXANDER IBAÑEZ GALINDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2396, 261, '1121825154', 'no_aplica', 'MARIA CAMILA BERMUDEZ ALZA', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2389, 261, '1122120601', 'no_aplica', 'KARIN ALEXA MORENO GIRALDO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2322, 256, '1022349358', 'no_aplica', 'JHON EDINSSON JIMENEZ VALERO', 'OLEAGINOSAS SAN MARCOS', 'POLINIZADOR', 'PRODUCCION AGRICOLA', 'POLINIZACION', 'OPERATIVOS PRODUCCION AGRICOLA', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2406, 262, '1123114665', 'no_aplica', 'CAMILA BAEZ DUEÑAS', 'OLEAGINOSAS SAN MARCOS', 'COORDINADOR CONTABLE', 'ADMINISTRACION', 'CONTABILIDAD', 'COORDINADORES', 'Activo');
INSERT INTO "public"."cap_formulario_asistente" VALUES (2407, 263, '1122130280', 'aprobo', 'JENNY PATRICIA LEMUS ARDILA', 'OLEAGINOSAS SAN MARCOS', 'ANALISTA DE INFORMACION', 'ADMINISTRACION', 'CLIPA - SISTEMAS', 'ANALISTAS', 'Activo');

-- ----------------------------
-- Table structure for cap_lugar
-- ----------------------------
DROP TABLE IF EXISTS "public"."cap_lugar";
CREATE TABLE "public"."cap_lugar" (
  "id" int4 NOT NULL DEFAULT nextval('lugar_id_seq'::regclass),
  "lugar" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of cap_lugar
-- ----------------------------
INSERT INTO "public"."cap_lugar" VALUES (1, 'Sala de Juntas Planta');
INSERT INTO "public"."cap_lugar" VALUES (2, 'Bascula');
INSERT INTO "public"."cap_lugar" VALUES (3, 'Oficina supervisores');
INSERT INTO "public"."cap_lugar" VALUES (4, 'Sala de capacitaciones');
INSERT INTO "public"."cap_lugar" VALUES (5, 'Laboratorio');
INSERT INTO "public"."cap_lugar" VALUES (6, 'Campamento');
INSERT INTO "public"."cap_lugar" VALUES (7, 'Planta Extractora');
INSERT INTO "public"."cap_lugar" VALUES (8, 'Oficina Jefe Ventas');
INSERT INTO "public"."cap_lugar" VALUES (9, 'Oficinas Casa Amarilla');
INSERT INTO "public"."cap_lugar" VALUES (10, 'Inversiones Sol Del Llano');
INSERT INTO "public"."cap_lugar" VALUES (11, 'Plantacion la Ucrania');
INSERT INTO "public"."cap_lugar" VALUES (12, 'Plantacion la Nena');
INSERT INTO "public"."cap_lugar" VALUES (13, 'Oficia HSE');

-- ----------------------------
-- Table structure for cap_notificaciones
-- ----------------------------
DROP TABLE IF EXISTS "public"."cap_notificaciones";
CREATE TABLE "public"."cap_notificaciones" (
  "id" int4 NOT NULL DEFAULT nextval('cap_notificaciones_id_seq'::regclass),
  "id_colaborador" int4 NOT NULL,
  "id_programacion" int4 NOT NULL,
  "fecha_ultima_capacitacion" date,
  "fecha_proxima" date NOT NULL,
  "dias_para_vencimiento" int4,
  "estado" varchar(50) COLLATE "pg_catalog"."default" DEFAULT 'pendiente'::character varying,
  "leida" bool DEFAULT false,
  "fecha_creacion" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "fecha_actualizacion" timestamp(6) DEFAULT CURRENT_TIMESTAMP
)
;
COMMENT ON COLUMN "public"."cap_notificaciones"."dias_para_vencimiento" IS 'Days until training expires';
COMMENT ON COLUMN "public"."cap_notificaciones"."estado" IS 'Status: pendiente, completada, vencida';
COMMENT ON TABLE "public"."cap_notificaciones" IS 'Stores training notifications for collaborators';

-- ----------------------------
-- Records of cap_notificaciones
-- ----------------------------

-- ----------------------------
-- Table structure for cap_proceso
-- ----------------------------
DROP TABLE IF EXISTS "public"."cap_proceso";
CREATE TABLE "public"."cap_proceso" (
  "id" int4 NOT NULL DEFAULT nextval('proceso_id_seq'::regclass),
  "proceso" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of cap_proceso
-- ----------------------------
INSERT INTO "public"."cap_proceso" VALUES (1, 'Producción industrial');
INSERT INTO "public"."cap_proceso" VALUES (2, 'Sostenibilidad');
INSERT INTO "public"."cap_proceso" VALUES (3, 'Talento Humano');
INSERT INTO "public"."cap_proceso" VALUES (4, 'Ventas');
INSERT INTO "public"."cap_proceso" VALUES (5, 'Administrativo');
INSERT INTO "public"."cap_proceso" VALUES (6, 'Compras y almacén');
INSERT INTO "public"."cap_proceso" VALUES (7, 'Gestión contable y financiera ');
INSERT INTO "public"."cap_proceso" VALUES (8, 'Logistica, cosecha y campo');
INSERT INTO "public"."cap_proceso" VALUES (9, 'SG-SST');

-- ----------------------------
-- Table structure for cap_programacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."cap_programacion";
CREATE TABLE "public"."cap_programacion" (
  "id" int4 NOT NULL DEFAULT nextval('cap_programacion_id_seq'::regclass),
  "id_tema" int4 NOT NULL,
  "id_cargo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "sub_area" varchar(255) COLLATE "pg_catalog"."default",
  "frecuencia_meses" int4 NOT NULL DEFAULT 12,
  "id_rol_capacitador" int4 NOT NULL,
  "fecha_creacion" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "activo" bool DEFAULT true
)
;
COMMENT ON COLUMN "public"."cap_programacion"."frecuencia_meses" IS 'Training frequency in months';
COMMENT ON COLUMN "public"."cap_programacion"."id_rol_capacitador" IS 'Role ID of the trainer responsible';
COMMENT ON TABLE "public"."cap_programacion" IS 'Stores scheduled training programs by position and sub-area';

-- ----------------------------
-- Records of cap_programacion
-- ----------------------------
INSERT INTO "public"."cap_programacion" VALUES (1, 75, '116', 'CLIPA - SISTEMAS', 12, 21, '2025-10-25 00:47:27.899873', 't');

-- ----------------------------
-- Table structure for cap_tema
-- ----------------------------
DROP TABLE IF EXISTS "public"."cap_tema";
CREATE TABLE "public"."cap_tema" (
  "id" int4 NOT NULL DEFAULT nextval('tema_id_seq'::regclass),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of cap_tema
-- ----------------------------
INSERT INTO "public"."cap_tema" VALUES (1, 'Trabajo en equipo ');
INSERT INTO "public"."cap_tema" VALUES (2, 'Capacitación a supervisores de proceso');
INSERT INTO "public"."cap_tema" VALUES (3, 'Principios y criterios RSPO ');
INSERT INTO "public"."cap_tema" VALUES (4, 'Inducción Talento humano y gestión administrativa');
INSERT INTO "public"."cap_tema" VALUES (5, 'Procedimiento de despacho');
INSERT INTO "public"."cap_tema" VALUES (6, 'Procedimiento de producto No conforme');
INSERT INTO "public"."cap_tema" VALUES (7, 'Calidad de aceite (Índice en yodo)');
INSERT INTO "public"."cap_tema" VALUES (8, 'Perdidas de almendra');
INSERT INTO "public"."cap_tema" VALUES (9, 'Manual de cadena de suministro y socialización de responsabilidades. ');
INSERT INTO "public"."cap_tema" VALUES (10, 'Llenado de vagones');
INSERT INTO "public"."cap_tema" VALUES (11, 'Mesa de volteo');
INSERT INTO "public"."cap_tema" VALUES (12, 'Esterilización ');
INSERT INTO "public"."cap_tema" VALUES (13, 'Desfrutado, digestión, prensado y desfibrado.');
INSERT INTO "public"."cap_tema" VALUES (14, 'Clarificación ');
INSERT INTO "public"."cap_tema" VALUES (15, 'Almacenamiento y control de tanques de almacenamiento');
INSERT INTO "public"."cap_tema" VALUES (16, 'Palmisteria');
INSERT INTO "public"."cap_tema" VALUES (17, 'Caldera');
INSERT INTO "public"."cap_tema" VALUES (18, 'Proceso de extracción de aceite');
INSERT INTO "public"."cap_tema" VALUES (19, 'Procedimiento de recepción de RFF');
INSERT INTO "public"."cap_tema" VALUES (20, 'Instructivo para operar bascula');
INSERT INTO "public"."cap_tema" VALUES (21, 'Descargue y calificación de fruta');
INSERT INTO "public"."cap_tema" VALUES (22, 'Procedimiento de orden y aseo');
INSERT INTO "public"."cap_tema" VALUES (23, 'BPM e inocuidad alimentaria');
INSERT INTO "public"."cap_tema" VALUES (24, 'Manejo de plaguicidas ');
INSERT INTO "public"."cap_tema" VALUES (25, 'Socialización de instructivos - Monitoreos ');
INSERT INTO "public"."cap_tema" VALUES (26, 'Socialización de instructivos - Polinización');
INSERT INTO "public"."cap_tema" VALUES (27, 'Socialización de instructivos - logística de producción');
INSERT INTO "public"."cap_tema" VALUES (28, 'Socialización de ISCC,RSPO, ORGANICO');
INSERT INTO "public"."cap_tema" VALUES (29, 'Requerimientos Cadena de suministro RSPO');
INSERT INTO "public"."cap_tema" VALUES (30, 'Socialización de procedimiento PQRS');
INSERT INTO "public"."cap_tema" VALUES (31, 'Política de sostenibilidad');
INSERT INTO "public"."cap_tema" VALUES (32, 'MIPE');
INSERT INTO "public"."cap_tema" VALUES (33, 'Socialización de instructivos - Fertilización');
INSERT INTO "public"."cap_tema" VALUES (34, 'Manejo de Insumos orgánicos');
INSERT INTO "public"."cap_tema" VALUES (35, 'Manejo defensivo');
INSERT INTO "public"."cap_tema" VALUES (36, 'Manejo de cybertracker para el envió de información.');
INSERT INTO "public"."cap_tema" VALUES (37, 'Supervisión labores de corte de RFF.');
INSERT INTO "public"."cap_tema" VALUES (38, 'Supervisión de labores de mantenimiento en campo en palma de aceite.');
INSERT INTO "public"."cap_tema" VALUES (39, 'Supervisión de labores de fertilización en palma de aceite.');
INSERT INTO "public"."cap_tema" VALUES (40, 'Logística para cosecha de lotes orgánicos');
INSERT INTO "public"."cap_tema" VALUES (41, 'Uso eficiente de maquinaria agrícola y aplicaciones de agricultura de precisión');
INSERT INTO "public"."cap_tema" VALUES (42, 'Riesgo biológico');
INSERT INTO "public"."cap_tema" VALUES (43, 'Uso adecuado EPP/Sensibilización de limpieza y mantenimiento de epp');
INSERT INTO "public"."cap_tema" VALUES (44, 'Reporte de accidentes laborales, incidentes, y EL');
INSERT INTO "public"."cap_tema" VALUES (45, 'Identificación de riesgos y peligros');
INSERT INTO "public"."cap_tema" VALUES (46, 'Reporte de actos y condiciones inseguras');
INSERT INTO "public"."cap_tema" VALUES (47, 'Autocuidado ');
INSERT INTO "public"."cap_tema" VALUES (48, 'Identificación de peligros');
INSERT INTO "public"."cap_tema" VALUES (49, 'Riesgo Psicosocial');
INSERT INTO "public"."cap_tema" VALUES (50, 'Manejo racional de plaguicidas');
INSERT INTO "public"."cap_tema" VALUES (51, 'Riesgo químico. SGA');
INSERT INTO "public"."cap_tema" VALUES (52, 'Riesgo ergonómico');
INSERT INTO "public"."cap_tema" VALUES (53, 'Inducción y reinducción de seguridad y salud en el trabajo ');
INSERT INTO "public"."cap_tema" VALUES (54, 'Brigadistas de emergencia');
INSERT INTO "public"."cap_tema" VALUES (55, 'Capacitación al COPASST ');
INSERT INTO "public"."cap_tema" VALUES (56, 'Curso de 50 horas/ 20 horas');
INSERT INTO "public"."cap_tema" VALUES (57, 'Comunicación asertiva');
INSERT INTO "public"."cap_tema" VALUES (58, 'Excel');
INSERT INTO "public"."cap_tema" VALUES (59, 'Análisis e datos');
INSERT INTO "public"."cap_tema" VALUES (60, 'Calibración y Mantenimiento de Equipos');
INSERT INTO "public"."cap_tema" VALUES (61, 'Manejo del suelo ');
INSERT INTO "public"."cap_tema" VALUES (62, 'Control de calidad');
INSERT INTO "public"."cap_tema" VALUES (63, 'Diseño Web');
INSERT INTO "public"."cap_tema" VALUES (64, 'Electricidad industrial ');
INSERT INTO "public"."cap_tema" VALUES (65, 'Generación de energía');
INSERT INTO "public"."cap_tema" VALUES (66, 'Herramientas de Google');
INSERT INTO "public"."cap_tema" VALUES (67, 'Herramientas ofimáticas');
INSERT INTO "public"."cap_tema" VALUES (68, 'Manejo de aplicativo ATLAS');
INSERT INTO "public"."cap_tema" VALUES (69, 'Manejo de maquinaria y equipo');
INSERT INTO "public"."cap_tema" VALUES (70, 'Manejo integrado de plagas y enfermedades');
INSERT INTO "public"."cap_tema" VALUES (71, 'Mantenimiento de cámaras');
INSERT INTO "public"."cap_tema" VALUES (72, 'Mantenimientos de primer nivel ');
INSERT INTO "public"."cap_tema" VALUES (73, 'Nomina y seguridad social ');
INSERT INTO "public"."cap_tema" VALUES (74, 'Planeación de labores agrícolas');
INSERT INTO "public"."cap_tema" VALUES (75, 'Power Bi');
INSERT INTO "public"."cap_tema" VALUES (76, 'Rotación de inventario');
INSERT INTO "public"."cap_tema" VALUES (77, 'SAP');
INSERT INTO "public"."cap_tema" VALUES (78, 'Bienestar laboral');
INSERT INTO "public"."cap_tema" VALUES (79, 'Riesgo vial');
INSERT INTO "public"."cap_tema" VALUES (80, 'Trabajo seguro en alturas');
INSERT INTO "public"."cap_tema" VALUES (81, 'Trabajo en espacios confinados ');

-- ----------------------------
-- Table structure for cap_tipo_actividad
-- ----------------------------
DROP TABLE IF EXISTS "public"."cap_tipo_actividad";
CREATE TABLE "public"."cap_tipo_actividad" (
  "id" int4 NOT NULL DEFAULT nextval('tipo_actividad_id_seq'::regclass),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of cap_tipo_actividad
-- ----------------------------
INSERT INTO "public"."cap_tipo_actividad" VALUES (1, 'Capacitación');
INSERT INTO "public"."cap_tipo_actividad" VALUES (2, 'Charla');
INSERT INTO "public"."cap_tipo_actividad" VALUES (3, 'Reunión');
INSERT INTO "public"."cap_tipo_actividad" VALUES (4, 'Entrenamiento');
INSERT INTO "public"."cap_tipo_actividad" VALUES (5, 'Inducción');

-- ----------------------------
-- Function structure for actualizar_notificaciones_capacitacion
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."actualizar_notificaciones_capacitacion"();
CREATE OR REPLACE FUNCTION "public"."actualizar_notificaciones_capacitacion"()
  RETURNS "pg_catalog"."void" AS $BODY$
BEGIN
  -- Delete old notifications for inactive schedules
  DELETE FROM cap_notificaciones 
  WHERE id_programacion IN (
    SELECT id FROM cap_programacion WHERE activo = false
  );

  -- Create or update notifications for active schedules
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
  ON CONFLICT (id_colaborador, id_programacion) 
  DO UPDATE SET
    fecha_ultima_capacitacion = EXCLUDED.fecha_ultima_capacitacion,
    fecha_proxima = EXCLUDED.fecha_proxima,
    dias_para_vencimiento = EXCLUDED.dias_para_vencimiento,
    estado = EXCLUDED.estado,
    fecha_actualizacion = CURRENT_TIMESTAMP;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
COMMENT ON FUNCTION "public"."actualizar_notificaciones_capacitacion"() IS 'Updates training notifications based on completed trainings and schedules';

-- ----------------------------
-- View structure for v_progreso_capacitaciones
-- ----------------------------
DROP VIEW IF EXISTS "public"."v_progreso_capacitaciones";
CREATE VIEW "public"."v_progreso_capacitaciones" AS  SELECT c.ac_id,
    c.ac_cedula,
    (((((c.ac_nombre1::text || ' '::text) || COALESCE(c.ac_nombre2, ''::character varying)::text) || ' '::text) || c.ac_apellido1::text) || ' '::text) || COALESCE(c.ac_apellido2, ''::character varying)::text AS nombre_completo,
    c.ac_id_cargo,
    c.ac_sub_area,
    count(DISTINCT p.id) AS capacitaciones_programadas,
    count(DISTINCT
        CASE
            WHEN fa.id IS NOT NULL THEN fa.id_formulario
            ELSE NULL::integer
        END) AS capacitaciones_realizadas,
    round(count(DISTINCT
        CASE
            WHEN fa.id IS NOT NULL THEN fa.id_formulario
            ELSE NULL::integer
        END)::numeric / NULLIF(count(DISTINCT p.id), 0)::numeric * 100::numeric, 2) AS porcentaje_completado
   FROM adm_colaboradores c
     LEFT JOIN cap_programacion p ON c.ac_id_cargo::text = p.id_cargo::text AND (p.sub_area IS NULL OR p.sub_area::text = c.ac_sub_area::text) AND p.activo = true
     LEFT JOIN cap_formulario_asistente fa ON fa.cedula::text = c.ac_cedula::text
  WHERE c."ac_id_situación"::text = ANY (ARRAY['A'::character varying, 'V'::character varying, 'P'::character varying]::text[])
  GROUP BY c.ac_id, c.ac_cedula, c.ac_nombre1, c.ac_nombre2, c.ac_apellido1, c.ac_apellido2, c.ac_id_cargo, c.ac_sub_area;
COMMENT ON VIEW "public"."v_progreso_capacitaciones" IS 'View showing training progress for each active collaborator';

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."adm_intentos_login_id_seq"
OWNED BY "public"."adm_intentos_login"."id";
SELECT setval('"public"."adm_intentos_login_id_seq"', 52, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."adm_sesiones_id_seq"
OWNED BY "public"."adm_sesiones"."id";
SELECT setval('"public"."adm_sesiones_id_seq"', 49, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."adm_usuario_roles_id_seq"
OWNED BY "public"."adm_usuario_roles"."id";
SELECT setval('"public"."adm_usuario_roles_id_seq"', 43, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."agr_fecha_corte_id_fc_seq"
OWNED BY "public"."agr_fecha_corte"."id_fc";
SELECT setval('"public"."agr_fecha_corte_id_fc_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."asistente_id_seq"', 1253, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cap_notificaciones_id_seq"
OWNED BY "public"."cap_notificaciones"."id";
SELECT setval('"public"."cap_notificaciones_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cap_programacion_id_seq"
OWNED BY "public"."cap_programacion"."id";
SELECT setval('"public"."cap_programacion_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."formulario_asistente_id_seq"', 2407, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."formulario_id_seq"', 263, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."lugar_id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."proceso_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."roles_id_seq"', 29, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."tema_id_seq"', 79, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."tipo_actividad_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."usuarios_id_seq"', 37, true);

-- ----------------------------
-- Indexes structure for table adm_cargos
-- ----------------------------
CREATE INDEX "idx_cargos_rango" ON "public"."adm_cargos" USING btree (
  "rango_cargo" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table adm_cargos
-- ----------------------------
ALTER TABLE "public"."adm_cargos" ADD CONSTRAINT "adm_cargos_pkey" PRIMARY KEY ("id_cargo");

-- ----------------------------
-- Indexes structure for table adm_colaboradores
-- ----------------------------
CREATE INDEX "idx_colaboradores_cedula" ON "public"."adm_colaboradores" USING btree (
  "ac_cedula" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table adm_colaboradores
-- ----------------------------
ALTER TABLE "public"."adm_colaboradores" ADD CONSTRAINT "unique_colaborador" UNIQUE ("ac_cedula", "ac_id_situación", "ac_sub_area", "ac_id_cargo", "ac_empresa");

-- ----------------------------
-- Primary Key structure for table adm_colaboradores
-- ----------------------------
ALTER TABLE "public"."adm_colaboradores" ADD CONSTRAINT "adm_colaboradores_pkey" PRIMARY KEY ("ac_id");

-- ----------------------------
-- Primary Key structure for table adm_empresa
-- ----------------------------
ALTER TABLE "public"."adm_empresa" ADD CONSTRAINT "adm_empresa_pkey" PRIMARY KEY ("emp_id");

-- ----------------------------
-- Indexes structure for table adm_intentos_login
-- ----------------------------
CREATE INDEX "idx_intentos_exitoso" ON "public"."adm_intentos_login" USING btree (
  "exitoso" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "idx_intentos_fecha" ON "public"."adm_intentos_login" USING btree (
  "fecha" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_intentos_identificador" ON "public"."adm_intentos_login" USING btree (
  "usuario_identificador" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table adm_intentos_login
-- ----------------------------
ALTER TABLE "public"."adm_intentos_login" ADD CONSTRAINT "adm_intentos_login_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table adm_roles
-- ----------------------------
ALTER TABLE "public"."adm_roles" ADD CONSTRAINT "adm_roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table adm_sesiones
-- ----------------------------
CREATE INDEX "idx_sesiones_activa" ON "public"."adm_sesiones" USING btree (
  "activa" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "idx_sesiones_session_id" ON "public"."adm_sesiones" USING btree (
  "session_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_sesiones_tipo_usuario" ON "public"."adm_sesiones" USING btree (
  "tipo_usuario" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_sesiones_usuario_id" ON "public"."adm_sesiones" USING btree (
  "usuario_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table adm_sesiones
-- ----------------------------
ALTER TABLE "public"."adm_sesiones" ADD CONSTRAINT "adm_sesiones_session_id_key" UNIQUE ("session_id");

-- ----------------------------
-- Primary Key structure for table adm_sesiones
-- ----------------------------
ALTER TABLE "public"."adm_sesiones" ADD CONSTRAINT "adm_sesiones_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table adm_situación
-- ----------------------------
ALTER TABLE "public"."adm_situación" ADD CONSTRAINT "adm_situación_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table adm_usuario_roles
-- ----------------------------
ALTER TABLE "public"."adm_usuario_roles" ADD CONSTRAINT "unique_usuario_rol" UNIQUE ("usuario_id", "rol_id");

-- ----------------------------
-- Primary Key structure for table adm_usuario_roles
-- ----------------------------
ALTER TABLE "public"."adm_usuario_roles" ADD CONSTRAINT "adm_usuario_roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table adm_usuarios
-- ----------------------------
CREATE INDEX "idx_usuarios_cedula" ON "public"."adm_usuarios" USING btree (
  "cedula" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table adm_usuarios
-- ----------------------------
ALTER TABLE "public"."adm_usuarios" ADD CONSTRAINT "adm_usuarios_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table adm_área
-- ----------------------------
CREATE INDEX "idx_area_area" ON "public"."adm_área" USING btree (
  "area" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table adm_área
-- ----------------------------
ALTER TABLE "public"."adm_área" ADD CONSTRAINT "adm_área_pkey" PRIMARY KEY ("id_area");

-- ----------------------------
-- Primary Key structure for table agr_fecha_corte
-- ----------------------------
ALTER TABLE "public"."agr_fecha_corte" ADD CONSTRAINT "agr_fecha_corte_pkey" PRIMARY KEY ("id_fc");

-- ----------------------------
-- Primary Key structure for table cap_formulario
-- ----------------------------
ALTER TABLE "public"."cap_formulario" ADD CONSTRAINT "cap_formulario_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cap_formulario_asistente
-- ----------------------------
ALTER TABLE "public"."cap_formulario_asistente" ADD CONSTRAINT "cap_formulario_asistente_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cap_lugar
-- ----------------------------
ALTER TABLE "public"."cap_lugar" ADD CONSTRAINT "cap_lugar_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cap_notificaciones
-- ----------------------------
CREATE INDEX "idx_notif_colaborador" ON "public"."cap_notificaciones" USING btree (
  "id_colaborador" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_notif_estado" ON "public"."cap_notificaciones" USING btree (
  "estado" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_notif_fecha_proxima" ON "public"."cap_notificaciones" USING btree (
  "fecha_proxima" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "idx_notif_leida" ON "public"."cap_notificaciones" USING btree (
  "leida" "pg_catalog"."bool_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table cap_notificaciones
-- ----------------------------
ALTER TABLE "public"."cap_notificaciones" ADD CONSTRAINT "uk_notif_colaborador_programacion" UNIQUE ("id_colaborador", "id_programacion");

-- ----------------------------
-- Primary Key structure for table cap_notificaciones
-- ----------------------------
ALTER TABLE "public"."cap_notificaciones" ADD CONSTRAINT "cap_notificaciones_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cap_proceso
-- ----------------------------
ALTER TABLE "public"."cap_proceso" ADD CONSTRAINT "cap_proceso_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cap_programacion
-- ----------------------------
CREATE INDEX "idx_cap_programacion_cargo" ON "public"."cap_programacion" USING btree (
  "id_cargo" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_cap_programacion_sub_area" ON "public"."cap_programacion" USING btree (
  "sub_area" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_cap_programacion_tema" ON "public"."cap_programacion" USING btree (
  "id_tema" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table cap_programacion
-- ----------------------------
ALTER TABLE "public"."cap_programacion" ADD CONSTRAINT "cap_programacion_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cap_tema
-- ----------------------------
ALTER TABLE "public"."cap_tema" ADD CONSTRAINT "cap_tema_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cap_tipo_actividad
-- ----------------------------
ALTER TABLE "public"."cap_tipo_actividad" ADD CONSTRAINT "cap_tipo_actividad_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table adm_colaboradores
-- ----------------------------
ALTER TABLE "public"."adm_colaboradores" ADD CONSTRAINT "adm_colaboradores_ac_id_rol_fkey" FOREIGN KEY ("ac_id_rol") REFERENCES "public"."adm_roles" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table adm_usuario_roles
-- ----------------------------
ALTER TABLE "public"."adm_usuario_roles" ADD CONSTRAINT "fk_rol" FOREIGN KEY ("rol_id") REFERENCES "public"."adm_roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."adm_usuario_roles" ADD CONSTRAINT "fk_usuario" FOREIGN KEY ("usuario_id") REFERENCES "public"."adm_usuarios" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cap_formulario
-- ----------------------------
ALTER TABLE "public"."cap_formulario" ADD CONSTRAINT "cap_formulario_id_lugar_fkey" FOREIGN KEY ("id_lugar") REFERENCES "public"."cap_lugar" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cap_formulario" ADD CONSTRAINT "cap_formulario_id_proceso_fkey" FOREIGN KEY ("id_proceso") REFERENCES "public"."cap_proceso" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cap_formulario" ADD CONSTRAINT "cap_formulario_id_tema_fkey" FOREIGN KEY ("id_tema") REFERENCES "public"."cap_tema" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cap_formulario" ADD CONSTRAINT "cap_formulario_id_tipo_actividad_fkey" FOREIGN KEY ("id_tipo_actividad") REFERENCES "public"."cap_tipo_actividad" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cap_formulario" ADD CONSTRAINT "cap_formulario_id_usuario_fkey" FOREIGN KEY ("id_usuario") REFERENCES "public"."adm_usuarios" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cap_formulario" ADD CONSTRAINT "fk_creado_por" FOREIGN KEY ("creado_por") REFERENCES "public"."adm_usuarios" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."cap_formulario" ADD CONSTRAINT "fk_editado_por" FOREIGN KEY ("editado_por") REFERENCES "public"."adm_usuarios" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cap_formulario_asistente
-- ----------------------------
ALTER TABLE "public"."cap_formulario_asistente" ADD CONSTRAINT "cap_formulario_asistente_id_formulario_fkey" FOREIGN KEY ("id_formulario") REFERENCES "public"."cap_formulario" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cap_notificaciones
-- ----------------------------
ALTER TABLE "public"."cap_notificaciones" ADD CONSTRAINT "fk_colaborador" FOREIGN KEY ("id_colaborador") REFERENCES "public"."adm_colaboradores" ("ac_id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."cap_notificaciones" ADD CONSTRAINT "fk_programacion" FOREIGN KEY ("id_programacion") REFERENCES "public"."cap_programacion" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cap_programacion
-- ----------------------------
ALTER TABLE "public"."cap_programacion" ADD CONSTRAINT "fk_cargo" FOREIGN KEY ("id_cargo") REFERENCES "public"."adm_cargos" ("id_cargo") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."cap_programacion" ADD CONSTRAINT "fk_rol" FOREIGN KEY ("id_rol_capacitador") REFERENCES "public"."adm_roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."cap_programacion" ADD CONSTRAINT "fk_tema" FOREIGN KEY ("id_tema") REFERENCES "public"."cap_tema" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
