# OSM - Sistema de Gestión Operacional

![OSM Logo](assets/img/Sin%20título-2.png)

## 📋 Tabla de Contenidos
- [Funcionamiento General](#funcionamiento-general)
- [Motivo de Desarrollo y Propósito](#motivo-de-desarrollo-y-propósito)
- [Módulos y Estado de Desarrollo](#módulos-y-estado-de-desarrollo)
- [Arquitectura del Sistema](#arquitectura-del-sistema)
- [Diagramas de Flujo](#diagramas-de-flujo)
- [Base de Datos](#base-de-datos)
- [Instalación](#instalación)
- [Tecnologías Utilizadas](#tecnologías-utilizadas)

---

## 🎯 Funcionamiento General

OSM (Sistema de Gestión Operacional) es una aplicación web empresarial diseñada para gestionar integralmente las operaciones de una empresa agroindustrial de producción de aceite de palma. El sistema centraliza la administración de:

### Características Principales

1. **Autenticación Dual**
   - Sistema de login para Administradores
   - Sistema de login para Colaboradores
   - Gestión de sesiones seguras con control de intentos fallidos
   - Roles y permisos diferenciados

2. **Panel de Control Central**
   - Dashboard con métricas en tiempo real
   - Indicadores de usuarios registrados
   - Estadísticas de colaboradores activos
   - Seguimiento de capacitaciones
   - Programación de fechas de corte

3. **Gestión de Usuarios y Colaboradores**
   - Registro y administración de usuarios del sistema
   - Base de datos completa de colaboradores (1200+ registros)
   - Gestión de cargos, áreas y sub-áreas
   - Control de situación laboral (Activo, Vacaciones, Pendiente, etc.)

4. **Sistema de Capacitaciones**
   - Programación de capacitaciones por cargo y área
   - Registro de asistencia
   - Sistema de notificaciones automáticas
   - Seguimiento de progreso individual
   - Gestión de temas, lugares y tipos de actividad

5. **Módulo Agronómico**
   - Monitoreo de plagas y enfermedades
   - Control de fertilización
   - Gestión de cosecha de fruta
   - Programación de fechas de corte
   - Seguimiento de mantenimientos agrícolas
   - Control de sanidad vegetal
   - Monitoreo de trampas
   - Gestión de nivel freático

6. **Sistema de Pesaje**
   - Registro de pesaje de materia prima
   - Control de entrada de fruta fresca
   - Integración con báscula

---

## 🎓 Motivo de Desarrollo y Propósito

### Contexto del Proyecto

El sistema OSM fue desarrollado para resolver las necesidades operacionales de una empresa agroindustrial dedicada a la producción de aceite de palma africana. Antes de la implementación de OSM, la empresa enfrentaba varios desafíos:

1. **Dispersión de Información**: Datos operacionales distribuidos en múltiples sistemas incompatibles
2. **Gestión Manual**: Procesos críticos realizados de forma manual o en hojas de cálculo
3. **Falta de Trazabilidad**: Dificultad para rastrear el progreso de capacitaciones y cumplimiento normativo
4. **Ineficiencia en Comunicación**: Carencia de un sistema centralizado de notificaciones
5. **Desintegración de Módulos**: Operaciones agrícolas, administrativas e industriales operando de forma aislada

### Propósito del Sistema

**Objetivo Principal**: Centralizar y automatizar la gestión operacional completa de la empresa, desde la administración de recursos humanos hasta el control de procesos agrícolas e industriales.

**Objetivos Específicos**:

1. **Cumplimiento Normativo**
   - Garantizar el cumplimiento de certificaciones (RSPO, ISCC, Orgánico)
   - Mantener registros actualizados de capacitaciones obligatorias
   - Documentar trazabilidad de procesos

2. **Eficiencia Operacional**
   - Reducir tiempo de gestión administrativa
   - Automatizar notificaciones y alertas
   - Centralizar información crítica del negocio
   - Facilitar toma de decisiones basada en datos

3. **Gestión del Talento**
   - Control integral de colaboradores
   - Seguimiento de capacitaciones y desarrollo profesional
   - Gestión de competencias por cargo

4. **Control Agrícola**
   - Monitoreo en tiempo real de cultivos
   - Planificación de cosechas
   - Control fitosanitario
   - Gestión de aplicaciones agronómicas

5. **Integración Operacional**
   - Conexión entre módulos administrativos, agrícolas e industriales
   - Flujo de información desde campo hasta planta
   - Reportería unificada

### Beneficios Esperados

- ✅ Reducción del 60% en tiempo de gestión administrativa
- ✅ Trazabilidad completa de operaciones agrícolas
- ✅ Cumplimiento del 100% en capacitaciones obligatorias
- ✅ Centralización de información en una única plataforma
- ✅ Mejora en la comunicación organizacional
- ✅ Reducción de errores por registro manual

---

## 📊 Módulos y Estado de Desarrollo

### Resumen de Avance

| Módulo | Completado | En Desarrollo | Planificado | Total |
|--------|-----------|---------------|-------------|-------|
| **m_admin** | 90% | 10% | 0% | 100% |
| **m_capacitaciones** | 85% | 10% | 5% | 100% |
| **m_agronomia** | 75% | 20% | 5% | 100% |
| **m_bascula** | 70% | 15% | 15% | 100% |
| **Core System** | 95% | 5% | 0% | 100% |
| **TOTAL GENERAL** | **82%** | **13%** | **5%** | **100%** |

---

### 1. **Módulo de Administración (m_admin)** - 90% Completado

**Funcionalidades Implementadas** (90%):
- ✅ Gestión de usuarios administradores
- ✅ CRUD completo de colaboradores
- ✅ Asignación de roles y permisos
- ✅ Gestión de cargos y áreas
- ✅ Sincronización con base de datos SQL Server (colaboradores)
- ✅ Interfaz de edición de usuarios
- ✅ Interfaz de edición de colaboradores
- ✅ Sistema de búsqueda y filtrado

**En Desarrollo** (10%):
- 🔄 Panel de auditoría de cambios
- 🔄 Reportes avanzados de usuarios

**Componentes**:
- `ed_usuario.html` - Edición de usuarios administradores
- `ed_uscolaboradores.html` - Edición de colaboradores
- `usuarios_api.php` - API de gestión de usuarios
- `colaboradores_api.php` - API de gestión de colaboradores
- `usuarios.js`, `colaboradores.js` - Lógica del frontend

---

### 2. **Módulo de Capacitaciones (m_capacitaciones)** - 85% Completado

**Funcionalidades Implementadas** (85%):
- ✅ Registro de capacitaciones (formulario completo)
- ✅ Gestión de asistentes con importación CSV
- ✅ Programación de capacitaciones por cargo
- ✅ Sistema de notificaciones automáticas
- ✅ Cálculo de fechas de vencimiento
- ✅ Consulta y búsqueda de capacitaciones históricas
- ✅ Edición de capacitaciones existentes
- ✅ Seguimiento de progreso por colaborador
- ✅ Gestión de temas (81 temas configurados)
- ✅ Gestión de tipos de actividad
- ✅ Gestión de lugares de capacitación
- ✅ Gestión de procesos
- ✅ Upload de archivos adjuntos
- ✅ Vista de progreso de capacitaciones

**En Desarrollo** (10%):
- 🔄 Generación automática de certificados
- 🔄 Reportes estadísticos avanzados

**Planificado** (5%):
- 📋 Integración con calendario corporativo
- 📋 Recordatorios por email/SMS

**Componentes**:
- `formulario.html` - Registro de nueva capacitación
- `ed_formulario.html` - Edición de capacitación existente
- `programacion.html` - Programación de capacitaciones
- `Consultas_capacitacion.html` - Búsqueda y consulta histórica
- APIs: `formulario_api.php`, `ed_formulario_api.php`, `programacion_api.php`, `consultas_capacitacion_api.php`, `notificaciones_api.php`, `progreso_api.php`, `file_upload_api.php`
- Scripts JS: `formulario.js`, `ed_formulario.js`, `programacion.js`, `consulta-cap.js`, `capacitaciones.js`

**Tablas de Base de Datos**:
- `cap_formulario` - Capacitaciones registradas
- `cap_formulario_asistente` - Asistentes por capacitación
- `cap_programacion` - Programación por cargo
- `cap_notificaciones` - Notificaciones de vencimiento
- `cap_tema` - Catálogo de temas (81 registros)
- `cap_tipo_actividad` - Tipos (5 registros)
- `cap_lugar` - Lugares disponibles
- `cap_proceso` - Procesos asociados
- `v_progreso_capacitaciones` - Vista de progreso

---

### 3. **Módulo Agronómico (m_agronomia)** - 75% Completado

Este es el módulo más extenso del sistema con 98 archivos entre HTML, PHP y JavaScript.

**Funcionalidades Implementadas** (75%):
- ✅ Monitoreo de plagas
- ✅ Control de enfermedades
- ✅ Gestión de fertilización orgánica y química
- ✅ Registro de cosecha de fruta
- ✅ Control de calidad de fruta
- ✅ Monitoreo de trampas
- ✅ Gestión de mantenimientos agrícolas
- ✅ Control de oficios varios en palma
- ✅ Monitoreo de nivel freático
- ✅ Programación de fechas de corte
- ✅ Aprobación de monitoreos generales
- ✅ Sistema de eventos pendientes
- ✅ Reportes de lotes con monitoreo

**En Desarrollo** (20%):
- 🔄 Dashboard analítico de producción
- 🔄 Predicción de cosechas
- 🔄 Integración con sensores IoT
- 🔄 Mapas de calor de incidencia

**Planificado** (5%):
- 📋 Módulo de agricultura de precisión
- 📋 Sistema de alertas tempranas

**Componentes Principales**:
- `tb_agronomia.html` - Tabla principal de agronomía
- `f_cortes.html` - Programación de fechas de corte
- Más de 50 archivos PHP para diferentes operaciones agronómicas
- Scripts especializados para cada sub-proceso

**Sub-procesos Agronómicos**:
1. **Monitoreo de Plagas**: Registro y seguimiento de incidencia de plagas
2. **Control Fitosanitario**: Gestión de aplicaciones y tratamientos
3. **Fertilización**: Control de aplicaciones orgánicas y químicas
4. **Cosecha**: Registro de RFF (Racimos de Fruta Fresca)
5. **Calidad**: Control de calidad de fruta
6. **Mantenimiento**: Gestión de labores de mantenimiento
7. **Trampas**: Monitoreo de trampas para control de plagas
8. **Nivel Freático**: Control de agua subterránea

**Tablas Principales**:
- `agr_fecha_corte` - Programación de cortes
- Múltiples tablas para diferentes aspectos agronómicos

---

### 4. **Módulo de Báscula (m_bascula)** - 70% Completado

**Funcionalidades Implementadas** (70%):
- ✅ Registro de pesaje
- ✅ Interfaz de báscula
- ✅ Registro de RFF entrante

**En Desarrollo** (15%):
- 🔄 Integración directa con báscula electrónica
- 🔄 Generación de tickets automáticos

**Planificado** (15%):
- 📋 Análisis de tendencias de peso
- 📋 Alertas de anomalías en pesaje
- 📋 Reportes de productividad por lote

**Componentes**:
- `Pesaje.html` - Interface de registro de pesaje
- APIs asociadas en carpeta assets

---

### 5. **Sistema Core** - 95% Completado

**Funcionalidades Implementadas** (95%):
- ✅ Sistema de autenticación dual (Administradores/Colaboradores)
- ✅ Gestión de sesiones con PHP
- ✅ Control de intentos de login
- ✅ Sistema de roles y permisos
- ✅ Navegación dinámica (sidebar y navbar)
- ✅ Panel de control con métricas
- ✅ Configuración web dinámica
- ✅ Guard de autenticación
- ✅ Gestión de sesiones activas
- ✅ Logout seguro
- ✅ Diseño responsivo con Bootstrap 5

**En Desarrollo** (5%):
- 🔄 Sistema de logs de auditoría
- 🔄 Panel de monitoreo de sesiones

**Componentes Core**:
- `index.html` - Página de login
- `panel.html` - Dashboard principal
- `sesiones.html` - Gestión de sesiones
- `Usuarios.html` - Listado de usuarios
- `php/login_admin.php` - Autenticación administradores
- `php/login_colaborador.php` - Autenticación colaboradores
- `php/session_manager.php` - Gestión de sesiones
- `php/session_management_api.php` - API de sesiones
- `php/verificar_sesion.php` - Verificación de sesión activa
- `php/logout.php` - Cierre de sesión
- `php/db_postgres.php` - Conexión PostgreSQL
- `php/db_sqlserver.php` - Conexión SQL Server
- `assets/js/login.js` - Lógica de login
- `assets/js/navbar.js` - Navegación dinámica
- `assets/js/sidebar.js` - Menú lateral dinámico
- `assets/js/auth_guard.js` - Protección de rutas

**Tablas Core**:
- `adm_usuarios` - Usuarios administradores
- `adm_colaboradores` - Colaboradores (1200+ registros)
- `adm_sesiones` - Sesiones activas
- `adm_intentos_login` - Control de intentos
- `adm_roles` - Roles del sistema
- `adm_usuario_roles` - Asignación de roles
- `adm_cargos` - Catálogo de cargos (143 registros)
- `adm_área` - Áreas organizacionales
- `adm_situación` - Estados de colaboradores
- `adm_empresa` - Empresas del grupo
- `adm_webmain` - Configuración web

---

## 🏗️ Arquitectura del Sistema

### Estructura de Archivos

```
OSM/
├── index.html                 # Página de login
├── panel.html                 # Dashboard principal
├── sesiones.html             # Gestión de sesiones
├── Usuarios.html             # Listado de usuarios
├── assets/                   # Recursos compartidos
│   ├── bootstrap/           # Framework CSS
│   ├── css/                 # Estilos personalizados
│   ├── fonts/               # Iconos FontAwesome
│   ├── img/                 # Imágenes y logos
│   └── js/                  # JavaScript compartido
│       ├── login.js
│       ├── navbar.js
│       ├── sidebar.js
│       ├── panel.js
│       └── auth_guard.js
├── php/                      # Backend PHP compartido
│   ├── db_postgres.php      # Conexión PostgreSQL
│   ├── db_sqlserver.php     # Conexión SQL Server
│   ├── login_admin.php
│   ├── login_colaborador.php
│   ├── session_manager.php
│   ├── session_management_api.php
│   ├── verificar_sesion.php
│   ├── logout.php
│   ├── web_main_api.php
│   ├── web_main_upload.php
│   ├── sync_colaboradores.php
│   └── funciones_sync.php
├── db/                       # Scripts de base de datos
│   ├── osm_postgres.sql
│   ├── migration_adm_webmain.sql
│   └── verify_webmain_config.sql
├── m_admin/                  # Módulo de administración
│   ├── ed_usuario.html
│   ├── ed_uscolaboradores.html
│   ├── php/
│   │   ├── usuarios_api.php
│   │   └── colaboradores_api.php
│   └── assets/
│       └── js/
│           ├── usuarios.js
│           └── colaboradores.js
├── m_capacitaciones/         # Módulo de capacitaciones
│   ├── formulario.html
│   ├── ed_formulario.html
│   ├── programacion.html
│   ├── Consultas_capacitacion.html
│   ├── plantilla_importacion.csv
│   └── assets/
│       ├── php/
│       │   ├── formulario_api.php
│       │   ├── ed_formulario_api.php
│       │   ├── programacion_api.php
│       │   ├── consultas_capacitacion_api.php
│       │   ├── notificaciones_api.php
│       │   ├── progreso_api.php
│       │   └── file_upload_api.php
│       └── js/
│           ├── formulario.js
│           ├── ed_formulario.js
│           ├── programacion.js
│           ├── consulta-cap.js
│           └── capacitaciones.js
├── m_agronomia/              # Módulo agronómico (98 archivos)
│   ├── tb_agronomia.html
│   ├── f_cortes.html
│   └── assets/
│       ├── php/             # 50+ APIs especializadas
│       └── js/              # Scripts del frontend
├── m_bascula/                # Módulo de pesaje
│   ├── Pesaje.html
│   └── assets/
└── includes/                 # Componentes reutilizables
```

### Stack Tecnológico

**Frontend**:
- HTML5
- CSS3 + Bootstrap 5
- JavaScript (Vanilla + ES6)
- FontAwesome Icons
- XLSX.js (Procesamiento de Excel)

**Backend**:
- PHP 7.4+
- PostgreSQL 9.x / 17.x
- SQL Server (para sincronización de colaboradores)

**Arquitectura**:
- Patrón MVC adaptado
- API RESTful con PHP
- Autenticación basada en sesiones PHP
- SPA parcial (Single Page Application components)

---

## 📈 Diagramas de Flujo

### 1. Flujo de Autenticación

```
┌─────────────────┐
│  Usuario accede │
│   a index.html  │
└────────┬────────┘
         │
         ▼
┌─────────────────────────────────┐
│  Selecciona tipo de usuario:    │
│  • Colaborador                  │
│  • Administrador                │
└────────┬────────────────────────┘
         │
         ▼
┌─────────────────────────────────┐
│  Ingresa credenciales:          │
│  • Cédula                       │
│  • Contraseña                   │
└────────┬────────────────────────┘
         │
         ▼
┌─────────────────────────────────┐
│  login.js envía petición a:     │
│  • login_colaborador.php  ó     │
│  • login_admin.php              │
└────────┬────────────────────────┘
         │
         ▼
┌─────────────────────────────────┐
│  Backend valida en:             │
│  • adm_colaboradores (Postgres) │
│  • adm_usuarios (Postgres)      │
└────────┬────────────────────────┘
         │
         ├─── ❌ Credenciales inválidas
         │    │
         │    ▼
         │    ┌──────────────────────────┐
         │    │ Registra intento fallido │
         │    │ en adm_intentos_login    │
         │    └────────┬─────────────────┘
         │             │
         │             ▼
         │    ┌──────────────────────────┐
         │    │ Muestra error al usuario │
         │    └──────────────────────────┘
         │
         └─── ✅ Credenciales válidas
              │
              ▼
┌─────────────────────────────────┐
│  Crea sesión en:                │
│  • adm_sesiones                 │
│  • $_SESSION PHP                │
└────────┬────────────────────────┘
         │
         ▼
┌─────────────────────────────────┐
│  Registra intento exitoso       │
│  en adm_intentos_login          │
└────────┬────────────────────────┘
         │
         ▼
┌─────────────────────────────────┐
│  Redirige a panel.html          │
│  con datos de usuario en sesión │
└─────────────────────────────────┘
```

### 2. Flujo del Sistema de Capacitaciones

#### 2.1 Registro de Nueva Capacitación

```
┌──────────────────────┐
│  Usuario accede a    │
│  formulario.html     │
└──────────┬───────────┘
           │
           ▼
┌─────────────────────────────────┐
│  auth_guard.js verifica sesión  │
│  y permisos del usuario         │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  formulario.js carga catálogos: │
│  • cap_tema                     │
│  • cap_proceso                  │
│  • cap_lugar                    │
│  • cap_tipo_actividad           │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Usuario completa formulario:   │
│  1. Selecciona proceso          │
│  2. Selecciona lugar            │
│  3. Ingresa responsable         │
│  4. Selecciona tipo actividad   │
│  5. Selecciona tema             │
│  6. Ingresa fecha y hora        │
│  7. Ingresa duración            │
│  8. Ingresa observaciones       │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Usuario agrega asistentes:     │
│  • Opción 1: Búsqueda manual    │
│  • Opción 2: Importar CSV       │
└──────────┬──────────────────────┘
           │
           ├─── Búsqueda Manual
           │    │
           │    ▼
           │    ┌────────────────────────────┐
           │    │ Busca en adm_colaboradores │
           │    │ por cédula o nombre        │
           │    └────────┬───────────────────┘
           │             │
           │             ▼
           │    ┌────────────────────────────┐
           │    │ Agrega a lista de          │
           │    │ asistentes (temporal)      │
           │    └────────────────────────────┘
           │
           └─── Importar CSV
                │
                ▼
                ┌────────────────────────────┐
                │ file_upload_api.php procesa│
                │ plantilla_importacion.csv  │
                └────────┬───────────────────┘
                         │
                         ▼
                ┌────────────────────────────┐
                │ Valida cédulas contra      │
                │ adm_colaboradores          │
                └────────┬───────────────────┘
                         │
                         ▼
                ┌────────────────────────────┐
                │ Agrega múltiples asistentes│
                └────────────────────────────┘
           │
           │ (Ambos flujos convergen)
           │
           ▼
┌─────────────────────────────────┐
│  Usuario adjunta archivo        │
│  (opcional): PDF, DOCX, etc.    │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Usuario hace clic en "Guardar" │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  formulario.js envía datos a    │
│  formulario_api.php             │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  formulario_api.php ejecuta:    │
│  BEGIN TRANSACTION              │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  INSERT INTO cap_formulario     │
│  (datos de la capacitación)     │
│  RETURNING id                   │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Para cada asistente:           │
│  INSERT INTO                    │
│  cap_formulario_asistente       │
│  (id_formulario, cedula)        │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Si hay archivo:                │
│  Guarda en servidor y actualiza │
│  cap_formulario.archivo_adjunto │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  COMMIT TRANSACTION             │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Ejecuta función:               │
│  actualizar_notificaciones_     │
│  capacitacion()                 │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Actualiza/Crea registros en    │
│  cap_notificaciones para        │
│  colaboradores afectados        │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Muestra mensaje de éxito       │
│  y redirige a consultas         │
└─────────────────────────────────┘
```

#### 2.2 Programación de Capacitaciones

```
┌──────────────────────┐
│  Usuario accede a    │
│  programacion.html   │
└──────────┬───────────┘
           │
           ▼
┌─────────────────────────────────┐
│  programacion.js carga:         │
│  • cap_tema                     │
│  • adm_cargos                   │
│  • adm_roles (capacitadores)    │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Usuario configura programa:    │
│  1. Selecciona tema             │
│  2. Selecciona cargo objetivo   │
│  3. Selecciona sub-área (opc.)  │
│  4. Define frecuencia (meses)   │
│  5. Asigna capacitador (rol)    │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  programacion_api.php ejecuta:  │
│  INSERT INTO cap_programacion   │
│  con activo=true                │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Ejecuta trigger automático:    │
│  actualizar_notificaciones_     │
│  capacitacion()                 │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Para cada colaborador con      │
│  cargo y sub-área coincidentes: │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Verifica última capacitación   │
│  en cap_formulario_asistente    │
└──────────┬──────────────────────┘
           │
           ├─── Sin capacitación previa
           │    │
           │    ▼
           │    ┌────────────────────────────┐
           │    │ Crea notificación con:     │
           │    │ estado='pendiente'         │
           │    │ fecha_proxima=HOY          │
           │    └────────────────────────────┘
           │
           └─── Con capacitación previa
                │
                ▼
                ┌────────────────────────────┐
                │ Calcula próxima fecha:     │
                │ fecha_ultima +             │
                │ frecuencia_meses           │
                └────────┬───────────────────┘
                         │
                         ▼
                ┌────────────────────────────┐
                │ Determina estado:          │
                │ • vencida (pasó fecha)     │
                │ • proximo_vencer (<30 días)│
                │ • vigente (>30 días)       │
                └────────┬───────────────────┘
                         │
                         ▼
                ┌────────────────────────────┐
                │ INSERT/UPDATE              │
                │ cap_notificaciones         │
                └────────────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Muestra programación activa    │
│  con contador de colaboradores  │
│  afectados                      │
└─────────────────────────────────┘
```

#### 2.3 Sistema de Notificaciones Automáticas

```
┌─────────────────────────────────┐
│  Función PostgreSQL:            │
│  actualizar_notificaciones_     │
│  capacitacion()                 │
│  (Se ejecuta automáticamente)   │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  PASO 1: Limpieza               │
│  DELETE FROM cap_notificaciones │
│  WHERE id_programacion IN       │
│  (SELECT id FROM                │
│   cap_programacion              │
│   WHERE activo = false)         │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  PASO 2: Construcción de CTE    │
│  ultima_capacitacion            │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Para cada colaborador activo   │
│  (ac_id_situación IN A,V,P):    │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  JOIN con cap_programacion      │
│  WHERE activo=true              │
│  AND cargo coincide             │
│  AND sub_area coincide (o NULL) │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  LEFT JOIN con cap_formulario   │
│  y cap_formulario_asistente     │
│  para obtener fecha_ultima      │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  PASO 3: Inserción/Actualización│
│  INSERT INTO cap_notificaciones │
│  ON CONFLICT (id_colaborador,   │
│               id_programacion)  │
│  DO UPDATE SET ...              │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Calcula campos dinámicamente:  │
│  • fecha_proxima                │
│  • dias_para_vencimiento        │
│  • estado (pendiente/vencida/   │
│    proximo_vencer/vigente)      │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Notificaciones disponibles     │
│  para consulta vía              │
│  notificaciones_api.php         │
└─────────────────────────────────┘
```

### 3. Flujo del Módulo Agronómico

#### 3.1 Registro de Fecha de Corte

```
┌──────────────────────┐
│  Usuario accede a    │
│  f_cortes.html       │
└──────────┬───────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Formulario solicita:           │
│  • Fecha de corte               │
│  • Observaciones                │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Envía a API agronómica         │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  INSERT INTO agr_fecha_corte    │
│  (fecha_corte, observaciones,   │
│   estado='activo')              │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Actualiza dashboard con nueva  │
│  fecha programada               │
└─────────────────────────────────┘
```

#### 3.2 Monitoreo de Plagas

```
┌──────────────────────┐
│  Usuario en campo    │
│  accede a módulo     │
└──────────┬───────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Registra observación:          │
│  • Lote afectado                │
│  • Tipo de plaga                │
│  • Nivel de incidencia          │
│  • Foto (opcional)              │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  conexion_plagas.php procesa    │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  INSERT en tabla de plagas      │
│  con georeferencia y timestamp  │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Genera alerta si supera        │
│  umbral de incidencia           │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  eventos_pendientes_            │
│  operaciones.php notifica       │
│  a supervisor                   │
└─────────────────────────────────┘
```

### 4. Flujo de Gestión de Sesiones

```
┌─────────────────────────────────┐
│  Usuario activo en el sistema   │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Cada petición incluye          │
│  session_id en cookie/header    │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  verificar_sesion.php valida:   │
│  • Existe session_id            │
│  • Sesión activa en DB          │
│  • No ha expirado               │
└──────────┬──────────────────────┘
           │
           ├─── ❌ Sesión inválida
           │    │
           │    ▼
           │    ┌──────────────────────────┐
           │    │ Redirige a index.html    │
           │    └──────────────────────────┘
           │
           └─── ✅ Sesión válida
                │
                ▼
┌─────────────────────────────────┐
│  auth_guard.js verifica permisos│
│  según rol y página             │
└──────────┬──────────────────────┘
           │
           ├─── ❌ Sin permisos
           │    │
           │    ▼
           │    ┌──────────────────────────┐
           │    │ Muestra mensaje de error │
           │    │ o redirige a dashboard   │
           │    └──────────────────────────┘
           │
           └─── ✅ Con permisos
                │
                ▼
┌─────────────────────────────────┐
│  Permite acceso a recurso       │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Usuario puede cerrar sesión:   │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  logout.php ejecuta:            │
│  UPDATE adm_sesiones            │
│  SET activa = false,            │
│      fecha_logout = NOW()       │
│  WHERE session_id = ?           │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  session_destroy() en PHP       │
└──────────┬──────────────────────┘
           │
           ▼
┌─────────────────────────────────┐
│  Redirige a index.html          │
└─────────────────────────────────┘
```

---

## 🗄️ Base de Datos

### Diagrama de Relaciones Principales

```
                    ┌─────────────────────┐
                    │   adm_roles         │
                    │   (Roles)           │
                    └──────────┬──────────┘
                               │
                    ┌──────────┴──────────┐
                    │                     │
         ┌──────────▼──────────┐  ┌──────▼───────────────┐
         │  adm_usuarios       │  │  adm_colaboradores   │
         │  (Administradores)  │  │  (Colaboradores)     │
         └──────────┬──────────┘  └──────┬───────────────┘
                    │                     │
                    │                     │
         ┌──────────▼──────────┐  ┌──────▼───────────────┐
         │ adm_usuario_roles   │  │  adm_cargos          │
         │ (Asignación roles)  │  │  (Catálogo cargos)   │
         └─────────────────────┘  └──────────────────────┘
                                           │
                                           │
                    ┌──────────────────────▼───────────────┐
                    │   cap_programacion                   │
                    │   (Programación capacitaciones)      │
                    └──────────┬───────────────────────────┘
                               │
                    ┌──────────┴──────────┐
                    │                     │
         ┌──────────▼──────────┐  ┌──────▼───────────────┐
         │  cap_formulario     │  │  cap_notificaciones  │
         │  (Capacitaciones)   │  │  (Notificaciones)    │
         └──────────┬──────────┘  └──────────────────────┘
                    │
         ┌──────────▼──────────────────┐
         │  cap_formulario_asistente   │
         │  (Asistentes)               │
         └─────────────────────────────┘
```

### Descripción de Tablas Principales

#### Módulo de Administración

**adm_usuarios** (Usuarios Administradores)
- `id` - Identificador único
- `cedula` - Cédula del usuario
- `nombre`, `apellido` - Datos personales
- `password` - Contraseña hasheada
- `activo` - Estado del usuario

**adm_colaboradores** (Colaboradores - 1200+ registros)
- `ac_id` - Identificador único
- `ac_cedula` - Cédula
- `ac_nombre1`, `ac_nombre2`, `ac_apellido1`, `ac_apellido2`
- `ac_empresa` - Empresa del grupo
- `ac_id_cargo` - FK a adm_cargos
- `ac_id_area`, `ac_sub_area` - Área organizacional
- `ac_id_situación` - Estado (A=Activo, V=Vacaciones, P=Pendiente, etc.)
- `ac_contraseña` - Password hasheado
- `ac_id_rol` - FK a adm_roles

**adm_roles** (Roles del Sistema)
- `id` - Identificador
- `nombre` - Nombre del rol
- `descripcion` - Descripción
- Roles configurados: Administrador, Capacitador, Aux_Capacitador, Capacitador_SIE, etc.

**adm_cargos** (Catálogo de Cargos - 143 registros)
- `id_cargo` - Código de cargo
- `cargo` - Nombre del cargo
- `rango_cargo` - Rango organizacional (ANALISTAS, ASISTENTES, COORDINADORES, etc.)

**adm_sesiones** (Sesiones Activas)
- `id` - Identificador
- `session_id` - ID único de sesión PHP
- `usuario_id` - FK al usuario/colaborador
- `tipo_usuario` - 'admin' o 'colaborador'
- `activa` - Booleano de estado
- `fecha_login`, `fecha_logout` - Timestamps
- `ip_address`, `user_agent` - Datos de auditoría

**adm_intentos_login** (Control de Intentos)
- `id` - Identificador
- `usuario_identificador` - Cédula del usuario
- `exitoso` - Booleano de éxito
- `ip_address` - IP de origen
- `fecha` - Timestamp del intento

**adm_webmain** (Configuración Web)
- `id` - Identificador
- `site_title` - Título del sitio
- `footer_text` - Texto del footer
- `favicon_path`, `login_image_path` - Rutas de imágenes
- `primary_color` - Color primario del tema
- `is_active` - Configuración activa
- `theme_name` - Nombre del tema

#### Módulo de Capacitaciones

**cap_formulario** (Registro de Capacitaciones)
- `id` - Identificador único
- `fecha`, `hora_inicio`, `duracion` - Programación temporal
- `id_tema` - FK a cap_tema
- `id_tipo_actividad` - FK a cap_tipo_actividad
- `id_proceso` - FK a cap_proceso
- `id_lugar` - FK a cap_lugar
- `id_usuario` - FK al responsable
- `cedula_responsable` - Cédula del capacitador
- `nombre_responsable` - Nombre del capacitador
- `observaciones` - Notas adicionales
- `archivo_adjunto` - Ruta del archivo
- `creado_por`, `editado_por` - Auditoría
- `fecha_creacion`, `fecha_edicion` - Timestamps

**cap_formulario_asistente** (Asistentes por Capacitación)
- `id` - Identificador
- `id_formulario` - FK a cap_formulario (CASCADE DELETE)
- `cedula` - Cédula del asistente
- `nombre` - Nombre del asistente

**cap_programacion** (Programación por Cargo)
- `id` - Identificador
- `id_tema` - FK a cap_tema
- `id_cargo` - FK a adm_cargos
- `sub_area` - Sub-área específica (NULL = todas)
- `frecuencia_meses` - Frecuencia requerida (default 12)
- `id_rol_capacitador` - FK al rol responsable
- `fecha_creacion` - Timestamp
- `activo` - Booleano de estado

**cap_notificaciones** (Notificaciones de Vencimiento)
- `id` - Identificador
- `id_colaborador` - FK a adm_colaboradores
- `id_programacion` - FK a cap_programacion
- `fecha_ultima_capacitacion` - Última vez capacitado
- `fecha_proxima` - Próxima capacitación requerida
- `dias_para_vencimiento` - Días restantes
- `estado` - 'pendiente', 'vigente', 'proximo_vencer', 'vencida'
- `leida` - Booleano de lectura
- `fecha_actualizacion` - Timestamp
- Constraint UNIQUE: (id_colaborador, id_programacion)

**cap_tema** (Catálogo de Temas - 81 registros)
- `id` - Identificador
- `nombre` - Nombre del tema
- Ejemplos: "Trabajo en equipo", "Principios RSPO", "BPM e inocuidad alimentaria", etc.

**cap_tipo_actividad** (Tipos de Actividad - 5 registros)
- `id` - Identificador
- `nombre` - Tipo (Capacitación, Charla, Reunión, Entrenamiento, Inducción)

**cap_lugar** (Lugares de Capacitación)
- `id` - Identificador
- `nombre` - Nombre del lugar

**cap_proceso** (Procesos Asociados)
- `id` - Identificador
- `nombre` - Nombre del proceso

**v_progreso_capacitaciones** (Vista de Progreso)
- Vista calculada que muestra:
  - Datos del colaborador
  - Capacitaciones programadas
  - Capacitaciones realizadas
  - Porcentaje de completitud

#### Módulo Agronómico

**agr_fecha_corte** (Programación de Cortes)
- `id_fc` - Identificador
- `fecha_corte` - Fecha programada
- `observaciones` - Notas
- (Nota: Este módulo tiene muchas más tablas para diferentes sub-procesos)

### Funciones y Triggers de PostgreSQL

**actualizar_notificaciones_capacitacion()**
- Función PL/pgSQL que se ejecuta automáticamente
- Limpia notificaciones de programas inactivos
- Calcula notificaciones para cada colaborador
- Determina estado según fechas y frecuencia
- Se invoca tras INSERT/UPDATE en cap_formulario y cap_programacion

**trigger_set_updated_at()**
- Actualiza campo `updated_at` automáticamente
- Se dispara BEFORE UPDATE en tablas con timestamp

### Análisis de Compatibilidad con PostgreSQL v9

#### ✅ Características Compatibles con PostgreSQL 9.x:

1. **Sequences**: Todas las secuencias usan sintaxis estándar compatible
2. **Data Types**: varchar, int4, date, timestamp, bool - todos soportados desde PG 9.0
3. **Indexes**: CREATE INDEX estándar - compatible
4. **Foreign Keys**: Sintaxis ON DELETE CASCADE - compatible desde PG 9.0
5. **Functions**: PL/pgSQL básico - compatible
6. **Triggers**: BEFORE UPDATE triggers - compatible
7. **Views**: CREATE VIEW - compatible
8. **CTEs**: WITH clauses - soportadas desde PG 8.4
9. **RETURNING**: Cláusula RETURNING en INSERT - desde PG 8.2

#### ⚠️ Características que Requieren PostgreSQL 9.5+:

1. **INSERT ... ON CONFLICT** (usado en `actualizar_notificaciones_capacitacion()`)
   - Introducido en PostgreSQL 9.5
   - **Solución para PG 9.x**: Usar UPDATE seguido de INSERT condicional

#### ⚠️ Características que Requieren PostgreSQL 10+:

1. **IDENTITY Columns** (usado en `migration_adm_webmain.sql`)
   - `id integer GENERATED BY DEFAULT AS IDENTITY`
   - Introducido en PostgreSQL 10
   - **Solución para PG 9.x**: Usar SERIAL o crear secuencia manualmente

#### 🔧 Modificaciones Necesarias para PostgreSQL 9.x:

**Para `migration_adm_webmain.sql`:**
```sql
-- En lugar de:
id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,

-- Usar:
id SERIAL PRIMARY KEY,
-- O:
id integer DEFAULT nextval('adm_webmain_id_seq'::regclass) PRIMARY KEY,
```

**Para `actualizar_notificaciones_capacitacion()`:**
```sql
-- En lugar de:
INSERT INTO cap_notificaciones (...)
VALUES (...)
ON CONFLICT (id_colaborador, id_programacion) 
DO UPDATE SET ...

-- Usar:
UPDATE cap_notificaciones SET ...
WHERE id_colaborador = ? AND id_programacion = ?;

IF NOT FOUND THEN
  INSERT INTO cap_notificaciones (...) VALUES (...);
END IF;
```

#### ✅ Conclusión de Compatibilidad:

El sistema es **95% compatible con PostgreSQL 9.x** con modificaciones menores:
1. Cambiar IDENTITY a SERIAL (1 tabla afectada)
2. Reemplazar ON CONFLICT con lógica UPDATE/INSERT (1 función afectada)
3. Todo lo demás funciona sin cambios

---

## 🚀 Instalación

### Requisitos Previos

- **Servidor Web**: Apache 2.4+ o Nginx
- **PHP**: 7.4 o superior
  - Extensiones requeridas: pdo, pdo_pgsql, pdo_sqlsrv, session, json
- **PostgreSQL**: 9.6+ (recomendado 17.x)
- **SQL Server**: Para sincronización de colaboradores (opcional)
- **Navegador**: Chrome, Firefox, Edge (versiones recientes)

### Pasos de Instalación

1. **Clonar el repositorio**
```bash
git clone https://github.com/Leonardom97/OSM.git
cd OSM
```

2. **Configurar Base de Datos PostgreSQL**
```bash
# Crear base de datos
createdb osm2

# Ejecutar script principal
psql -U postgres -d osm2 -f db/osm_postgres.sql

# Ejecutar migración de configuración web
psql -U postgres -d osm2 -f db/migration_adm_webmain.sql

# Verificar instalación
psql -U postgres -d osm2 -f db/verify_webmain_config.sql
```

3. **Configurar Conexiones PHP**

Editar `php/db_postgres.php`:
```php
$host = 'localhost';
$port = '5432';
$dbname = 'osm2';
$user = 'postgres';
$password = 'tu_password';
```

Editar `php/db_sqlserver.php` (si aplica):
```php
$serverName = "tu_servidor";
$connectionOptions = array(
    "Database" => "tu_base_datos",
    "Uid" => "usuario",
    "PWD" => "password"
);
```

4. **Configurar Permisos**
```bash
# Dar permisos de escritura a carpetas de uploads
chmod 755 uploads/
chmod 755 m_capacitaciones/uploads/
```

5. **Configurar Virtual Host**

Para Apache:
```apache
<VirtualHost *:80>
    ServerName osm.local
    DocumentRoot /path/to/OSM
    <Directory /path/to/OSM>
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```

6. **Acceder al Sistema**

- Abrir navegador en `http://osm.local` o `http://localhost/OSM`
- Credenciales de prueba (si existen en DB):
  - Administrador: Cédula del usuario en `adm_usuarios`
  - Colaborador: Cédula del colaborador en `adm_colaboradores`

### Configuración Inicial

1. **Crear Usuario Administrador**
```sql
INSERT INTO adm_usuarios (cedula, nombre, apellido, password, activo)
VALUES ('1234567890', 'Admin', 'Sistema', '...hash...', true);

INSERT INTO adm_usuario_roles (usuario_id, rol_id)
VALUES (1, 1); -- Rol Administrador
```

2. **Sincronizar Colaboradores** (si se usa SQL Server)
```bash
# Ejecutar script de sincronización
php php/sync_colaboradores.php
```

3. **Configurar Temas de Capacitación**
- Los 81 temas ya están pre-cargados en la base de datos

4. **Configurar Web**
- Acceder a configuración web (si existe interfaz)
- O modificar directamente en `adm_webmain`

---

## 💻 Tecnologías Utilizadas

### Frontend
- **HTML5**: Estructura semántica
- **CSS3**: Estilos personalizados
- **Bootstrap 5.x**: Framework CSS responsivo
- **JavaScript ES6+**: Lógica del cliente
- **FontAwesome 6**: Iconografía
- **XLSX.js**: Procesamiento de archivos Excel

### Backend
- **PHP 7.4+**: Lenguaje del servidor
- **PostgreSQL 9.x/17.x**: Base de datos principal
- **SQL Server**: Sincronización de datos externos (opcional)

### Arquitectura
- **Patrón MVC**: Separación de capas
- **REST API**: APIs PHP para operaciones CRUD
- **Session-based Auth**: Autenticación con sesiones PHP
- **SPA Components**: Componentes de aplicación de página única

### Herramientas de Desarrollo
- **Git**: Control de versiones
- **Navicat**: Gestión de base de datos
- **Visual Studio Code**: Editor de código
- **Chrome DevTools**: Depuración

---

## 📚 Documentación Adicional

### Estructura de Roles

| Rol | Descripción | Permisos |
|-----|-------------|----------|
| Administrador | Acceso total | Todos los módulos |
| Capacitador | Gestión de capacitaciones | Módulo m_capacitaciones |
| Aux_Capacitador | Asistente de capacitaciones | Lectura y creación |
| Capacitador_SIE | Capacitador de Sistemas | Capacitaciones de TI |
| Capacitador_GH | Capacitador de RRHH | Capacitaciones de Gestión Humana |
| Capacitador_TI | Capacitador Técnico | Capacitaciones técnicas |
| Capacitador_MT | Capacitador de Mantenimiento | Capacitaciones de mantenimiento |
| Capacitador_ADM | Capacitador Administrativo | Capacitaciones administrativas |
| Capacitador_IND | Capacitador Industrial | Capacitaciones de planta |
| Capacitador_AGR | Capacitador Agrícola | Capacitaciones agronómicas |
| Colaborador | Usuario básico | Dashboard y consultas |

### Estados de Colaborador

- **A** (Activo): Colaborador activo trabajando
- **V** (Vacaciones): Colaborador en vacaciones
- **P** (Pendiente): Colaborador con situación pendiente
- **E** (Egresado/Inactivo): Colaborador que ya no trabaja
- **X** (Otro): Situación especial

### Certificaciones y Cumplimiento

El sistema soporta el cumplimiento de:
- **RSPO** (Roundtable on Sustainable Palm Oil)
- **ISCC** (International Sustainability and Carbon Certification)
- **Certificación Orgánica**

---

## 👥 Contacto y Soporte

**Desarrollado para**: Empresa Agroindustrial de Aceite de Palma  
**Año**: 2025  
**Versión**: 1.0.0  

---

## 📄 Licencia

© OSM 2025 - Todos los derechos reservados

---

## 🔄 Changelog

### Versión 1.0.0 (2025-10-25)
- ✅ Implementación inicial del sistema
- ✅ Módulo de Administración completo
- ✅ Módulo de Capacitaciones con notificaciones
- ✅ Módulo Agronómico base
- ✅ Módulo de Báscula
- ✅ Sistema de autenticación dual
- ✅ Dashboard principal
- ✅ 81 temas de capacitación pre-configurados
- ✅ Base de datos con 1200+ colaboradores

---

**Última actualización**: 30 de Octubre de 2025
