# Diagramas de Flujo - Sistema OSM

Este documento contiene los diagramas de flujo detallados de los procesos principales del sistema OSM, mostrando las relaciones entre HTML, JavaScript, PHP APIs y las tablas de la base de datos PostgreSQL.

## Tabla de Contenidos

1. [Flujo de Autenticación](#1-flujo-de-autenticación)
2. [Flujo del Módulo de Capacitaciones](#2-flujo-del-módulo-de-capacitaciones)
3. [Flujo del Módulo de Administración](#3-flujo-del-módulo-de-administración)
4. [Flujo del Módulo Agronómico](#4-flujo-del-módulo-agronómico)
5. [Flujo de Gestión de Sesiones](#5-flujo-de-gestión-de-sesiones)

---

## 1. Flujo de Autenticación

### Diagrama Mermaid

```mermaid
flowchart TD
    A[Usuario accede a index.html] --> B{Selecciona tipo de usuario}
    B -->|Colaborador| C[Completa formulario colaborador]
    B -->|Administrador| D[Completa formulario administrador]
    
    C --> E[login.js envía POST a login_colaborador.php]
    D --> F[login.js envía POST a login_admin.php]
    
    E --> G[Valida en tabla adm_colaboradores]
    F --> H[Valida en tabla adm_usuarios]
    
    G --> I{Credenciales válidas?}
    H --> I
    
    I -->|No| J[Registra intento fallido en adm_intentos_login]
    J --> K[Retorna error al cliente]
    K --> L[Muestra mensaje de error]
    
    I -->|Sí| M[Crea sesión en adm_sesiones]
    M --> N[Registra intento exitoso en adm_intentos_login]
    N --> O[Retorna datos de usuario y session_id]
    O --> P[Guarda en sessionStorage/localStorage]
    P --> Q[Redirige a panel.html]
    
    Q --> R[auth_guard.js verifica sesión]
    R --> S{Sesión válida?}
    S -->|No| A
    S -->|Sí| T[Carga dashboard con datos de usuario]
```

### Dependencias HTML → Database

**index.html** (Login)
- ↓ `assets/js/login.js`
- ↓ `php/login_colaborador.php` O `php/login_admin.php`
- ↓ **Tablas:**
  - `adm_colaboradores` (SELECT WHERE cedula AND password)
  - `adm_usuarios` (SELECT WHERE cedula AND password)
  - `adm_sesiones` (INSERT nueva sesión)
  - `adm_intentos_login` (INSERT intento)
  - `adm_roles` (JOIN para obtener permisos)

**panel.html** (Dashboard)
- ↓ `assets/js/auth_guard.js`
- ↓ `php/verificar_sesion.php`
- ↓ **Tablas:**
  - `adm_sesiones` (SELECT WHERE session_id AND activa=true)

---

## 2. Flujo del Módulo de Capacitaciones

### 2.1 Registro de Nueva Capacitación

```mermaid
flowchart TD
    A[Usuario accede a m_capacitaciones/formulario.html] --> B[auth_guard.js verifica permisos]
    B --> C{Tiene rol de Capacitador?}
    C -->|No| D[Redirige a panel.html]
    C -->|Sí| E[formulario.js carga datos iniciales]
    
    E --> F[GET a formulario_api.php?action=getCatalogos]
    F --> G[Query a cap_tema, cap_proceso, cap_lugar, cap_tipo_actividad]
    G --> H[Renderiza dropdowns con opciones]
    
    H --> I[Usuario completa formulario]
    I --> J{Método de asistentes?}
    
    J -->|Búsqueda manual| K[Busca colaborador por cédula]
    K --> L[Query a adm_colaboradores WHERE cedula]
    L --> M[Agrega a lista temporal]
    
    J -->|Importar CSV| N[Sube plantilla_importacion.csv]
    N --> O[file_upload_api.php procesa archivo]
    O --> P[Valida cédulas contra adm_colaboradores]
    P --> M
    
    M --> Q[Usuario adjunta archivo opcional]
    Q --> R[Click en Guardar]
    R --> S[formulario.js envía POST a formulario_api.php]
    
    S --> T[BEGIN TRANSACTION]
    T --> U[INSERT INTO cap_formulario]
    U --> V[Obtiene id_formulario con RETURNING]
    
    V --> W[Loop para cada asistente]
    W --> X[INSERT INTO cap_formulario_asistente]
    X --> Y{Más asistentes?}
    Y -->|Sí| W
    Y -->|No| Z[COMMIT TRANSACTION]
    
    Z --> AA[Ejecuta función actualizar_notificaciones_capacitacion]
    AA --> AB[UPDATE/INSERT en cap_notificaciones]
    AB --> AC[Retorna éxito al cliente]
    AC --> AD[Muestra mensaje de confirmación]
    AD --> AE[Redirige a Consultas_capacitacion.html]
```

### Dependencias HTML → Database (Formulario de Capacitación)

**m_capacitaciones/formulario.html**
- ↓ `assets/js/formulario.js`
- ↓ `assets/php/formulario_api.php`
- ↓ **Tablas:**
  - **SELECT (Catálogos):**
    - `cap_tema` (listado de temas)
    - `cap_proceso` (listado de procesos)
    - `cap_lugar` (listado de lugares)
    - `cap_tipo_actividad` (tipos de actividad)
    - `adm_usuarios` (capacitadores)
  - **SELECT (Búsqueda):**
    - `adm_colaboradores` (búsqueda de asistentes)
  - **INSERT:**
    - `cap_formulario` (nueva capacitación)
    - `cap_formulario_asistente` (cada asistente)
  - **UPDATE (Trigger automático):**
    - `cap_notificaciones` (actualización por función PL/pgSQL)

### 2.2 Programación de Capacitaciones

```mermaid
flowchart TD
    A[Usuario accede a m_capacitaciones/programacion.html] --> B[programacion.js carga datos]
    B --> C[GET a programacion_api.php?action=getCatalogos]
    C --> D[Query cap_tema, adm_cargos, adm_roles]
    D --> E[Renderiza formulario de programación]
    
    E --> F[Usuario configura programa]
    F --> G[Selecciona tema, cargo, sub-área, frecuencia, capacitador]
    G --> H[Click en Guardar Programación]
    
    H --> I[POST a programacion_api.php?action=crear]
    I --> J[INSERT INTO cap_programacion]
    J --> K[Ejecuta función actualizar_notificaciones_capacitacion]
    
    K --> L[CTE: Busca colaboradores con cargo coincidente]
    L --> M[LEFT JOIN para obtener última capacitación]
    M --> N{Tiene capacitación previa?}
    
    N -->|No| O[Calcula fecha_proxima = HOY]
    N -->|Sí| P[Calcula fecha_proxima = fecha_ultima + frecuencia_meses]
    
    O --> Q[Calcula estado = 'pendiente']
    P --> R{Fecha pasó?}
    R -->|Sí| S[Calcula estado = 'vencida']
    R -->|No| T{Faltan menos de 30 días?}
    T -->|Sí| U[Calcula estado = 'proximo_vencer']
    T -->|No| V[Calcula estado = 'vigente']
    
    Q --> W[INSERT/UPDATE cap_notificaciones]
    S --> W
    U --> W
    V --> W
    
    W --> X[Retorna cantidad de colaboradores afectados]
    X --> Y[Muestra confirmación con estadísticas]
```

### Dependencias HTML → Database (Programación)

**m_capacitaciones/programacion.html**
- ↓ `assets/js/programacion.js`
- ↓ `assets/php/programacion_api.php`
- ↓ **Tablas:**
  - **SELECT:**
    - `cap_tema` (listado)
    - `adm_cargos` (listado)
    - `adm_roles` (capacitadores)
    - `cap_programacion` (programas existentes)
  - **INSERT:**
    - `cap_programacion` (nueva programación)
  - **UPDATE/INSERT (Función PL/pgSQL):**
    - `cap_notificaciones` (notificaciones automáticas)
  - **Query CTE en función:**
    - `adm_colaboradores` (colaboradores afectados)
    - `cap_formulario_asistente` (historial de asistencias)
    - `cap_formulario` (fechas de capacitaciones)

### 2.3 Consulta de Capacitaciones

```mermaid
flowchart TD
    A[Usuario accede a m_capacitaciones/Consultas_capacitacion.html] --> B[consulta-cap.js inicializa]
    B --> C[GET a consultas_capacitacion_api.php?action=listar]
    
    C --> D[SELECT FROM cap_formulario con JOINs]
    D --> E[JOIN cap_tema para nombre del tema]
    E --> F[JOIN cap_tipo_actividad para tipo]
    F --> G[JOIN cap_lugar para lugar]
    G --> H[JOIN cap_proceso para proceso]
    H --> I[LEFT JOIN adm_usuarios para capacitador]
    
    I --> J[Retorna lista de capacitaciones]
    J --> K[Renderiza tabla con DataTables]
    
    K --> L[Usuario puede filtrar/buscar]
    L --> M{Acción del usuario?}
    
    M -->|Ver detalles| N[GET a consultas_capacitacion_api.php?action=getDetalle&id=X]
    N --> O[SELECT cap_formulario WHERE id]
    O --> P[SELECT cap_formulario_asistente WHERE id_formulario]
    P --> Q[Muestra modal con info completa]
    
    M -->|Editar| R[Redirige a ed_formulario.html?id=X]
    
    M -->|Descargar lista| S[Genera Excel con XLSX.js]
    S --> T[Descarga archivo con asistentes]
    
    M -->|Eliminar| U[Confirma eliminación]
    U --> V[DELETE a consultas_capacitacion_api.php?action=eliminar&id=X]
    V --> W[DELETE FROM cap_formulario WHERE id - CASCADE a asistentes]
    W --> X[Recarga tabla]
```

### Dependencias HTML → Database (Consultas)

**m_capacitaciones/Consultas_capacitacion.html**
- ↓ `assets/js/consulta-cap.js`
- ↓ `assets/php/consultas_capacitacion_api.php`
- ↓ **Tablas:**
  - **SELECT (Listado):**
    - `cap_formulario` (todas las capacitaciones)
    - `cap_tema` (JOIN)
    - `cap_tipo_actividad` (JOIN)
    - `cap_lugar` (JOIN)
    - `cap_proceso` (JOIN)
    - `adm_usuarios` (JOIN para capacitador)
  - **SELECT (Detalle):**
    - `cap_formulario` (WHERE id)
    - `cap_formulario_asistente` (WHERE id_formulario)
    - `adm_colaboradores` (JOIN para datos completos de asistentes)
  - **DELETE:**
    - `cap_formulario` (DELETE WHERE id - CASCADE automático a cap_formulario_asistente)

### 2.4 Sistema de Notificaciones

```mermaid
flowchart TD
    A[Trigger: INSERT/UPDATE en cap_formulario o cap_programacion] --> B[Ejecuta función actualizar_notificaciones_capacitacion]
    
    B --> C[PASO 1: Limpieza]
    C --> D[DELETE FROM cap_notificaciones WHERE programa inactivo]
    
    D --> E[PASO 2: Construcción CTE ultima_capacitacion]
    E --> F[SELECT colaboradores activos con situación A, V, P]
    F --> G[INNER JOIN cap_programacion activa WHERE cargo coincide]
    G --> H[LEFT JOIN para obtener fecha última capacitación]
    
    H --> I[GROUP BY colaborador y programa]
    I --> J[PASO 3: Cálculo de notificaciones]
    
    J --> K{Colaborador tiene capacitación previa?}
    K -->|No| L[fecha_proxima = CURRENT_DATE]
    K -->|Sí| M[fecha_proxima = fecha_ultima + frecuencia_meses * INTERVAL '1 month']
    
    L --> N[dias_para_vencimiento = 0]
    M --> O[dias_para_vencimiento = EXTRACT DAY FROM fecha_proxima - CURRENT_DATE]
    
    N --> P[estado = 'pendiente']
    O --> Q{fecha_proxima < CURRENT_DATE?}
    Q -->|Sí| R[estado = 'vencida']
    Q -->|No| S{fecha_proxima <= CURRENT_DATE + 30 days?}
    S -->|Sí| T[estado = 'proximo_vencer']
    S -->|No| U[estado = 'vigente']
    
    P --> V[INSERT INTO cap_notificaciones ON CONFLICT UPDATE]
    R --> V
    T --> V
    U --> V
    
    V --> W[Notificaciones disponibles para consulta]
    
    W --> X[notificaciones_api.php lee cap_notificaciones]
    X --> Y[Frontend muestra badges y alertas]
```

### Dependencias de Notificaciones

**Función PL/pgSQL: actualizar_notificaciones_capacitacion()**
- **Tablas involucradas:**
  - **DELETE FROM:**
    - `cap_notificaciones` (limpieza)
  - **SELECT (CTE):**
    - `adm_colaboradores` (colaboradores activos)
    - `cap_programacion` (programas activos)
    - `cap_formulario` (historial)
    - `cap_formulario_asistente` (asistencias)
  - **INSERT/UPDATE:**
    - `cap_notificaciones` (ON CONFLICT por constraint único)

**API de Notificaciones:**
- `assets/php/notificaciones_api.php`
- ↓ **Tablas:**
  - **SELECT:**
    - `cap_notificaciones` (WHERE id_colaborador)
    - `cap_programacion` (JOIN)
    - `cap_tema` (JOIN)
    - `adm_cargos` (JOIN)

---

## 3. Flujo del Módulo de Administración

### 3.1 Gestión de Usuarios Administradores

```mermaid
flowchart TD
    A[Usuario accede a Usuarios.html] --> B[Carga listado de usuarios]
    B --> C[GET a m_admin/php/usuarios_api.php?action=listar]
    C --> D[SELECT FROM adm_usuarios]
    D --> E[LEFT JOIN adm_usuario_roles]
    E --> F[LEFT JOIN adm_roles]
    F --> G[Retorna lista con roles asignados]
    G --> H[Renderiza tabla con usuarios]
    
    H --> I{Acción del usuario?}
    
    I -->|Crear nuevo| J[Abre modal de creación]
    J --> K[Completa formulario: cédula, nombre, apellido, password]
    K --> L[POST a usuarios_api.php?action=crear]
    L --> M[BEGIN TRANSACTION]
    M --> N[INSERT INTO adm_usuarios]
    N --> O{Asignar roles?}
    O -->|Sí| P[Loop: INSERT INTO adm_usuario_roles]
    P --> Q[COMMIT TRANSACTION]
    Q --> R[Recarga tabla]
    
    I -->|Editar| S[Redirige a m_admin/ed_usuario.html?id=X]
    S --> T[GET a usuarios_api.php?action=getUsuario&id=X]
    T --> U[SELECT adm_usuarios WHERE id]
    U --> V[SELECT adm_usuario_roles WHERE usuario_id]
    V --> W[Renderiza formulario con datos]
    W --> X[Usuario modifica campos]
    X --> Y[POST a usuarios_api.php?action=actualizar]
    Y --> Z[BEGIN TRANSACTION]
    Z --> AA[UPDATE adm_usuarios]
    AA --> AB[DELETE FROM adm_usuario_roles WHERE usuario_id]
    AB --> AC[INSERT nuevos roles en adm_usuario_roles]
    AC --> AD[COMMIT TRANSACTION]
    AD --> R
    
    I -->|Eliminar| AE[Confirma eliminación]
    AE --> AF[DELETE a usuarios_api.php?action=eliminar&id=X]
    AF --> AG[DELETE FROM adm_usuarios WHERE id]
    AG --> AH[CASCADE automático elimina adm_usuario_roles]
    AH --> R
    
    I -->|Cambiar estado| AI[Toggle activo/inactivo]
    AI --> AJ[PUT a usuarios_api.php?action=toggleEstado&id=X]
    AJ --> AK[UPDATE adm_usuarios SET activo = NOT activo]
    AK --> R
```

### Dependencias HTML → Database (Usuarios)

**Usuarios.html**
- ↓ `assets/js/usuarios.js`
- ↓ `m_admin/php/usuarios_api.php`
- ↓ **Tablas:**
  - **SELECT:**
    - `adm_usuarios` (listado)
    - `adm_usuario_roles` (JOIN)
    - `adm_roles` (JOIN)
  - **INSERT:**
    - `adm_usuarios` (nuevo usuario)
    - `adm_usuario_roles` (asignación de roles)
  - **UPDATE:**
    - `adm_usuarios` (modificación de datos)
  - **DELETE:**
    - `adm_usuarios` (eliminación - CASCADE a adm_usuario_roles)
    - `adm_usuario_roles` (al reasignar roles)

**m_admin/ed_usuario.html**
- ↓ `assets/js/usuarios.js`
- ↓ `m_admin/php/usuarios_api.php`
- ↓ **Tablas:** (mismas que arriba)

### 3.2 Gestión de Colaboradores

```mermaid
flowchart TD
    A[Panel muestra contador de colaboradores] --> B[GET a m_admin/php/colaboradores_api.php?action=count]
    B --> C[SELECT COUNT FROM adm_colaboradores WHERE situación IN A,V,P]
    C --> D[Retorna total]
    
    E[Usuario accede a gestión de colaboradores] --> F[Abre m_admin/ed_uscolaboradores.html]
    F --> G[colaboradores.js inicializa]
    G --> H[GET a colaboradores_api.php?action=listar]
    H --> I[SELECT adm_colaboradores con JOINs]
    I --> J[JOIN adm_cargos para nombre de cargo]
    J --> K[JOIN adm_área para área]
    K --> L[JOIN adm_situación para situación]
    L --> M[JOIN adm_roles para rol]
    M --> N[Renderiza tabla con ~1200 registros]
    
    N --> O{Acción?}
    
    O -->|Buscar/Filtrar| P[Filtro por cédula, nombre, cargo, área]
    P --> Q[Query con WHERE dinámico]
    Q --> N
    
    O -->|Ver detalle| R[Click en colaborador]
    R --> S[GET a colaboradores_api.php?action=getDetalle&id=X]
    S --> T[SELECT completo con todos los datos]
    T --> U[Muestra modal o panel con información]
    
    O -->|Editar| V[Modifica campos en formulario]
    V --> W[PUT a colaboradores_api.php?action=actualizar]
    W --> X[UPDATE adm_colaboradores WHERE ac_id]
    X --> Y[Recarga registro]
    
    O -->|Sincronizar| Z[Click en Sincronizar con SQL Server]
    Z --> AA[POST a php/sync_colaboradores.php]
    AA --> AB[Conecta a SQL Server con db_sqlserver.php]
    AB --> AC[SELECT colaboradores de SQL Server]
    AC --> AD[Compara con adm_colaboradores PostgreSQL]
    AD --> AE{Colaborador existe?}
    AE -->|No| AF[INSERT nuevo colaborador]
    AE -->|Sí| AG[UPDATE datos si cambiaron]
    AF --> AH[Retorna resumen: X nuevos, Y actualizados]
    AG --> AH
    AH --> AI[Muestra notificación con resultados]
```

### Dependencias HTML → Database (Colaboradores)

**m_admin/ed_uscolaboradores.html**
- ↓ `assets/js/colaboradores.js`
- ↓ `m_admin/php/colaboradores_api.php`
- ↓ `php/sync_colaboradores.php` (sincronización)
- ↓ **Tablas PostgreSQL:**
  - **SELECT:**
    - `adm_colaboradores` (listado completo)
    - `adm_cargos` (JOIN)
    - `adm_área` (JOIN)
    - `adm_situación` (JOIN)
    - `adm_roles` (JOIN)
    - `adm_empresa` (JOIN)
  - **UPDATE:**
    - `adm_colaboradores` (modificación)
  - **INSERT (desde sincronización):**
    - `adm_colaboradores` (nuevos desde SQL Server)
- ↓ **Tablas SQL Server (lectura):**
  - Tabla de colaboradores externa (nombre variable según configuración)

---

## 4. Flujo del Módulo Agronómico

### 4.1 Programación de Fecha de Corte

```mermaid
flowchart TD
    A[Usuario accede a m_agronomia/f_cortes.html] --> B[Formulario de programación]
    B --> C[Usuario selecciona fecha de corte]
    C --> D[Usuario ingresa observaciones]
    D --> E[Click en Guardar]
    E --> F[POST a API agronómica]
    F --> G[INSERT INTO agr_fecha_corte]
    G --> H[Campos: fecha_corte, observaciones, estado='activo']
    H --> I[Retorna confirmación]
    I --> J[Actualiza dashboard]
    J --> K[Panel muestra nueva fecha programada]
```

### 4.2 Monitoreo de Plagas (Ejemplo)

```mermaid
flowchart TD
    A[Trabajador en campo accede a m_agronomia/tb_agronomia.html] --> B[Selecciona opción Monitoreo de Plagas]
    B --> C[Completa formulario]
    C --> D[Selecciona lote afectado]
    D --> E[Selecciona tipo de plaga]
    E --> F[Ingresa nivel de incidencia]
    F --> G[Toma foto opcional]
    G --> H[Registra coordenadas GPS opcional]
    H --> I[Click en Registrar]
    I --> J[POST a assets/php/conexion_plagas.php]
    J --> K[BEGIN TRANSACTION]
    K --> L[INSERT INTO tabla_plagas]
    L --> M{Nivel supera umbral?}
    M -->|Sí| N[INSERT INTO tabla_eventos_pendientes]
    N --> O[Marca como: requiere_atencion=true]
    O --> P[COMMIT TRANSACTION]
    M -->|No| P
    P --> Q[Notifica a supervisor si hay alerta]
    Q --> R[eventos_pendientes_operaciones.php genera notificación]
    R --> S[Retorna confirmación]
    S --> T[Muestra mensaje de éxito]
```

### 4.3 Aprobación de Monitoreos

```mermaid
flowchart TD
    A[Supervisor accede a módulo agronómico] --> B[Navega a Monitoreos Pendientes]
    B --> C[GET a assets/php/pendientes_operaciones.php]
    C --> D[SELECT eventos WHERE estado='pendiente']
    D --> E[JOIN con tablas relacionadas]
    E --> F[Renderiza lista de eventos]
    
    F --> G{Acción del supervisor?}
    
    G -->|Aprobar| H[Click en Aprobar]
    H --> I[POST a assets/php/aprobar_monitoreos_generales.php]
    I --> J[UPDATE evento SET estado='aprobado', aprobado_por=supervisor_id]
    J --> K[INSERT en tabla de acciones aprobadas]
    K --> L[Retorna éxito]
    
    G -->|Rechazar| M[Click en Rechazar]
    M --> N[POST a assets/php/rechazar_mantenimientos.php]
    N --> O[UPDATE evento SET estado='rechazado', motivo_rechazo=comentario]
    O --> L
    
    L --> P[Recarga lista de pendientes]
```

### Dependencias HTML → Database (Agronomía)

**m_agronomia/tb_agronomia.html**
- ↓ Múltiples scripts JS especializados
- ↓ Más de 50 archivos PHP API en `assets/php/`
- ↓ **Tablas** (estimadas, nombres varían):
  - `agr_plagas` (monitoreo de plagas)
  - `agr_enfermedades` (registro de enfermedades)
  - `agr_fertilizacion` (aplicaciones)
  - `agr_cosecha` (registro de RFF)
  - `agr_mantenimientos` (labores)
  - `agr_trampas` (monitoreo de trampas)
  - `agr_nivel_freatico` (control de agua)
  - `agr_eventos_pendientes` (eventos para aprobación)
  - `agr_lotes` (catálogo de lotes)
  - `adm_colaboradores` (JOIN para operadores)

**m_agronomia/f_cortes.html**
- ↓ Script JS específico
- ↓ API PHP específica
- ↓ **Tablas:**
  - `agr_fecha_corte` (INSERT/UPDATE/SELECT)

---

## 5. Flujo de Gestión de Sesiones

### 5.1 Verificación Continua de Sesión

```mermaid
flowchart TD
    A[Usuario navega en la aplicación] --> B[Cada petición incluye session_id]
    B --> C[auth_guard.js intercepta navegación]
    C --> D[GET a php/verificar_sesion.php]
    D --> E[Lee session_id de cookie PHP]
    E --> F[SELECT FROM adm_sesiones WHERE session_id]
    F --> G{Sesión encontrada?}
    
    G -->|No| H[Retorna error 401 No autorizado]
    H --> I[auth_guard.js detecta 401]
    I --> J[Limpia almacenamiento local]
    J --> K[Redirige a index.html]
    
    G -->|Sí| L{Sesión está activa?}
    L -->|No| H
    L -->|Sí| M{Sesión no ha expirado?}
    M -->|No| N[UPDATE adm_sesiones SET activa=false]
    N --> H
    M -->|Sí| O[Retorna datos de usuario y permisos]
    O --> P[auth_guard.js verifica permisos de página]
    P --> Q{Usuario tiene permiso?}
    Q -->|No| R[Muestra error o redirige]
    Q -->|Sí| S[Permite acceso a recurso]
```

### 5.2 Gestión Activa de Sesiones

```mermaid
flowchart TD
    A[Administrador accede a sesiones.html] --> B[GET a php/session_management_api.php?action=listar]
    B --> C[SELECT adm_sesiones WHERE activa=true]
    C --> D[JOIN con adm_usuarios o adm_colaboradores]
    D --> E[Retorna lista de sesiones activas]
    E --> F[Renderiza tabla con sesiones]
    
    F --> G{Acción del administrador?}
    
    G -->|Ver detalles| H[Muestra modal con info de sesión]
    H --> I[IP, navegador, fecha login, duración]
    
    G -->|Cerrar sesión| J[Confirma cierre forzado]
    J --> K[POST a session_management_api.php?action=cerrar&id=X]
    K --> L[UPDATE adm_sesiones SET activa=false WHERE id]
    L --> M[UPDATE fecha_logout = NOW]
    M --> N[Retorna éxito]
    N --> O[Usuario afectado es desconectado en próxima petición]
    O --> P[Recarga tabla de sesiones]
    
    G -->|Cerrar todas| Q[Confirma cierre masivo]
    Q --> R[POST a session_management_api.php?action=cerrarTodas]
    R --> S[UPDATE adm_sesiones SET activa=false WHERE tipo_usuario='colaborador']
    S --> P
```

### 5.3 Cierre de Sesión por Usuario

```mermaid
flowchart TD
    A[Usuario click en Cerrar Sesión] --> B[navbar.js maneja evento]
    B --> C[Confirma cierre de sesión]
    C --> D[POST a php/logout.php]
    D --> E[Lee session_id de sesión PHP]
    E --> F[UPDATE adm_sesiones SET activa=false, fecha_logout=NOW]
    F --> G[session_destroy en PHP]
    G --> H[Limpia cookie de sesión]
    H --> I[Retorna confirmación]
    I --> J[Frontend limpia sessionStorage/localStorage]
    J --> K[Redirige a index.html]
```

### Dependencias de Sesiones

**sesiones.html**
- ↓ `assets/js/sesiones.js`
- ↓ `php/session_management_api.php`
- ↓ **Tablas:**
  - **SELECT:**
    - `adm_sesiones` (WHERE activa=true)
    - `adm_usuarios` (LEFT JOIN)
    - `adm_colaboradores` (LEFT JOIN)
  - **UPDATE:**
    - `adm_sesiones` (cerrar sesión)

**Todas las páginas protegidas**
- ↓ `assets/js/auth_guard.js`
- ↓ `php/verificar_sesion.php`
- ↓ **Tablas:**
  - **SELECT:**
    - `adm_sesiones` (WHERE session_id AND activa=true)

**Logout**
- ↓ `php/logout.php`
- ↓ **Tablas:**
  - **UPDATE:**
    - `adm_sesiones` (SET activa=false, fecha_logout=NOW())

---

## Resumen de Tablas Más Utilizadas

### Top 10 Tablas por Operaciones

1. **adm_sesiones** - Verificada en cada petición
2. **adm_colaboradores** - Usada en autenticación, búsquedas, reportes
3. **cap_notificaciones** - Actualizada frecuentemente por función automática
4. **cap_formulario** - Core del módulo de capacitaciones
5. **cap_formulario_asistente** - Registros de asistencia masivos
6. **adm_usuarios** - Autenticación y gestión de administradores
7. **cap_programacion** - Consultas frecuentes para notificaciones
8. **adm_cargos** - JOIN frecuente en múltiples módulos
9. **cap_tema** - Catálogo usado en formularios y consultas
10. **adm_intentos_login** - Log de todos los intentos de acceso

---

## Notas de Implementación

### Optimizaciones Aplicadas

1. **Índices en tablas críticas:**
   - `idx_sesiones_session_id` en `adm_sesiones`
   - `idx_colaboradores_cedula` en `adm_colaboradores`
   - `idx_notif_colaborador` en `cap_notificaciones`
   - `idx_notif_estado` en `cap_notificaciones`

2. **Constraints para integridad:**
   - Foreign Keys con CASCADE DELETE donde aplica
   - Unique constraints en relaciones many-to-many
   - Check constraints en estados

3. **Triggers automáticos:**
   - `actualizar_notificaciones_capacitacion()` se ejecuta después de INSERT/UPDATE
   - `trigger_set_updated_at()` mantiene timestamps actualizados

4. **Transacciones:**
   - BEGIN/COMMIT en operaciones multi-tabla
   - ROLLBACK automático en caso de error

### Flujos Críticos para Rendimiento

1. **Verificación de sesión**: Optimizada con índice en session_id
2. **Búsqueda de colaboradores**: Índice en cédula para búsquedas rápidas
3. **Generación de notificaciones**: Función PL/pgSQL eficiente con CTEs
4. **Listado de capacitaciones**: JOINs indexados apropiadamente

---

**Última actualización**: 30 de Octubre de 2025
