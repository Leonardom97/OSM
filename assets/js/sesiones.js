// assets/js/sesiones.js
// Lógica para la página sesiones.html: carga de includes (navbar/sidebar) y gestión de sesiones

(function () {
  // Carga un componente HTML y lo inyecta en selector
  async function includeComponent(file, selector) {
    try {
      const res = await fetch(file, { cache: 'no-store' });
      if (!res.ok) throw new Error('HTTP ' + res.status);
      const html = await res.text();
      const el = document.querySelector(selector);
      if (el) el.innerHTML = html;
    } catch (err) {
      console.error(`Error al cargar ${file}:`, err);
    }
  }

  // Utilidades
  function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text ?? '';
    return div.innerHTML;
  }
  function formatDateTime(dateStr) {
    if (!dateStr) return 'N/A';
    try {
      const date = new Date(dateStr);
      return date.toLocaleString('es-ES');
    } catch (e) {
      return dateStr;
    }
  }
  function getRazonCierre(razon) {
    const razones = {
      'logout': 'Cierre normal',
      'admin_disconnect': 'Desconectado por admin',
      'concurrent_login': 'Nuevo inicio de sesión',
      'timeout': 'Tiempo de espera agotado'
    };
    return razones[razon] || razon || '-';
  }

  // Interpreta valores booleanos que pueden venir como true/false o 't'/'f'/'1'/'0'/'true'/'false'
  function isTrue(val) {
    if (val === true || val === 1) return true;
    if (val === false || val === 0) return false;
    if (val == null) return false;
    const s = String(val).toLowerCase();
    return s === 't' || s === 'true' || s === '1' || s === 'yes' || s === 'y';
  }

  // Estado
  let selectedSessionId = null;
  let disconnectModal = null;

  // DOM event handlers
  document.addEventListener('DOMContentLoaded', async () => {
    // Cargar includes (rutas relativas al root)
    await includeComponent('includes/navbar.html', '#navbar');
    await includeComponent('includes/sidebar.html', '#sidebar');

    // Hacer visible la página ahora que navbar/sidebar están cargados
    document.body.style.visibility = 'visible';

    // Inicializar modal (bootstrap ya está cargado en el HTML antes de este script)
    const modalEl = document.getElementById('disconnectModal');
    if (modalEl) disconnectModal = new bootstrap.Modal(modalEl);

    // Bind botones refresh y tabs (solo si existen)
    const raf = document.getElementById('refreshActiveBtn');
    if (raf) raf.addEventListener('click', loadActiveSessions);
    const rab = document.getElementById('refreshAttemptsBtn');
    if (rab) rab.addEventListener('click', loadLoginAttempts);
    const rhb = document.getElementById('refreshHistoryBtn');
    if (rhb) rhb.addEventListener('click', loadMyHistory);
    const attemptFilter = document.getElementById('attemptFilter');
    if (attemptFilter) attemptFilter.addEventListener('change', loadLoginAttempts);

    // Delegación de click para botones desconectar en la tabla
    const activeTable = document.getElementById('activeSessionsTable');
    if (activeTable) {
      activeTable.addEventListener('click', function (e) {
        const btn = e.target.closest('.btn-disconnect');
        if (btn) {
          selectedSessionId = btn.dataset.sessionId;
          const uname = btn.dataset.userName || '';
          const nameEl = document.getElementById('disconnectUserName');
          if (nameEl) nameEl.textContent = uname;
          if (disconnectModal) disconnectModal.show();
          return;
        }
      });
    }

    // Confirmar desconexión
    const confirmBtn = document.getElementById('confirmDisconnect');
    if (confirmBtn) {
      confirmBtn.addEventListener('click', function () {
        if (selectedSessionId) disconnectSession(selectedSessionId);
      });
    }

    // Auto-refresh solo cuando pestaña activa
    setInterval(() => {
      const activeTab = document.querySelector('#sessionTabs .nav-link.active');
      if (activeTab && activeTab.id === 'active-tab') loadActiveSessions();
    }, 30000);

    // Cargar inicialmente pestaña activa
    loadActiveSessions();

    // Cargar contenido al mostrar cada pestaña (Bootstrap 'shown.bs.tab')
    document.querySelectorAll('#sessionTabs button[data-bs-toggle="tab"]').forEach(btn => {
      btn.addEventListener('shown.bs.tab', (e) => {
        const id = e.target.id;
        if (id === 'active-tab') {
          loadActiveSessions();
        } else if (id === 'attempts-tab') {
          loadLoginAttempts();
        } else if (id === 'history-tab') {
          loadMyHistory();
        }
      });

      // fallback: cuando el usuario hace click (en caso de que el evento de bootstrap no esté disponible)
      btn.addEventListener('click', (e) => {
        const id = e.currentTarget.id;
        if (id === 'active-tab') {
          loadActiveSessions();
        } else if (id === 'attempts-tab') {
          loadLoginAttempts();
        } else if (id === 'history-tab') {
          loadMyHistory();
        }
      });
    });
  });

  // Cargas
  async function loadActiveSessions() {
    try {
      const res = await fetch('php/session_management_api.php?action=get_active_sessions', { cache: 'no-store' });
      const data = await res.json();
      const tbody = document.getElementById('activeSessionsTable');

      if (!data.success || !Array.isArray(data.sessions) || data.sessions.length === 0) {
        if (tbody) tbody.innerHTML = '<tr><td colspan="8" class="text-center">No hay sesiones activas</td></tr>';
        return;
      }

      if (!tbody) return;

      tbody.innerHTML = data.sessions.map(s => {
        const userName = escapeHtml(s.nombre_usuario || 'N/A');
        const identificador = escapeHtml(s.identificador || 'N/A');
        const tipo = (s.tipo_usuario || 'usuario');
        const badgeClass = tipo === 'admin' ? 'primary' : 'info';
        return `
          <tr>
            <td>${userName}</td>
            <td>${identificador}</td>
            <td><span class="badge bg-${badgeClass}">${escapeHtml(tipo)}</span></td>
            <td>${escapeHtml(s.ip_address || 'N/A')}</td>
            <td>${escapeHtml(s.host_name || 'N/A')}</td>
            <td>${formatDateTime(s.fecha_inicio)}</td>
            <td>${formatDateTime(s.fecha_actividad)}</td>
            <td>
              <button class="btn btn-sm btn-danger btn-disconnect" data-session-id="${escapeHtml(s.id ?? '')}" data-user-name="${userName}">
                <i class="fas fa-times"></i> Desconectar
              </button>
            </td>
          </tr>
        `;
      }).join('');
    } catch (err) {
      console.error('Error loading active sessions:', err);
      const tbody = document.getElementById('activeSessionsTable');
      if (tbody) {
        tbody.innerHTML =
          '<tr><td colspan="8" class="text-center text-danger">Error al cargar sesiones</td></tr>';
      }
    }
  }

  async function loadLoginAttempts() {
    try {
      const filterEl = document.getElementById('attemptFilter');
      const filter = filterEl ? filterEl.value : '';
      const url = `php/session_management_api.php?action=get_login_attempts&limit=100${filter ? '&exitoso=' + encodeURIComponent(filter) : ''}`;
      const res = await fetch(url, { cache: 'no-store' });
      const data = await res.json();
      const tbody = document.getElementById('loginAttemptsTable');

      if (!data.success || !Array.isArray(data.attempts) || data.attempts.length === 0) {
        if (tbody) tbody.innerHTML = '<tr><td colspan="7" class="text-center">No hay intentos de acceso</td></tr>';
        return;
      }

      if (!tbody) return;

      tbody.innerHTML = data.attempts.map(a => {
        const exitoso = isTrue(a.exitoso);
        const rowClass = exitoso ? '' : 'table-danger';
        const estadoBadge = exitoso ? '<span class="badge bg-success">Exitoso</span>' : '<span class="badge bg-danger">Fallido</span>';
        const tipoBadge = `<span class="badge bg-${(a.tipo_usuario === 'admin') ? 'primary' : 'info'}">${escapeHtml(a.tipo_usuario || 'N/A')}</span>`;
        return `
          <tr class="${rowClass}">
            <td>${escapeHtml(a.usuario_identificador || '')}</td>
            <td>${tipoBadge}</td>
            <td>${estadoBadge}</td>
            <td>${escapeHtml(a.ip_address || 'N/A')}</td>
            <td>${escapeHtml(a.host_name || 'N/A')}</td>
            <td>${escapeHtml(a.mensaje_error || '-')}</td>
            <td>${formatDateTime(a.fecha)}</td>
          </tr>
        `;
      }).join('');
    } catch (err) {
      console.error('Error loading login attempts:', err);
      const tbody = document.getElementById('loginAttemptsTable');
      if (tbody) tbody.innerHTML =
        '<tr><td colspan="7" class="text-center text-danger">Error al cargar intentos</td></tr>';
    }
  }

  async function loadMyHistory() {
    try {
      const res = await fetch('php/session_management_api.php?action=get_my_sessions', { cache: 'no-store' });
      const data = await res.json();
      const tbody = document.getElementById('myHistoryTable');

      if (!data.success || !Array.isArray(data.sessions) || data.sessions.length === 0) {
        if (tbody) tbody.innerHTML = '<tr><td colspan="7" class="text-center">No hay historial de sesiones</td></tr>';
        return;
      }

      if (!tbody) return;

      tbody.innerHTML = data.sessions.map(s => {
        const activa = isTrue(s.activa);
        const estadoBadge = activa ? '<span class="badge bg-success">Activa</span>' : '<span class="badge bg-secondary">Cerrada</span>';
        return `
          <tr>
            <td>${escapeHtml(s.ip_address || 'N/A')}</td>
            <td>${escapeHtml(s.host_name || 'N/A')}</td>
            <td>${formatDateTime(s.fecha_inicio)}</td>
            <td>${s.fecha_cierre ? formatDateTime(s.fecha_cierre) : '-'}</td>
            <td>${estadoBadge}</td>
            <td>${escapeHtml(getRazonCierre(s.razon_cierre))}</td>
            <td>${escapeHtml(s.cerrada_por_nombre || '-')}</td>
          </tr>
        `;
      }).join('');
    } catch (err) {
      console.error('Error loading history:', err);
      const tbody = document.getElementById('myHistoryTable');
      if (tbody) tbody.innerHTML =
        '<tr><td colspan="7" class="text-center text-danger">Error al cargar historial</td></tr>';
    }
  }

  async function disconnectSession(sessionId) {
    try {
      const params = new URLSearchParams();
      params.append('action', 'disconnect_session');
      params.append('session_id', sessionId);

      const res = await fetch('php/session_management_api.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: params.toString()
      });
      const data = await res.json();
      if (data.success) {
        alert('Sesión desconectada exitosamente');
        if (disconnectModal) disconnectModal.hide();
        selectedSessionId = null;
        loadActiveSessions();
      } else {
        alert('Error al desconectar sesión: ' + (data.error || 'Error desconocido'));
      }
    } catch (err) {
      console.error('Error disconnecting session:', err);
      alert('Error al desconectar sesión');
    }
  }

  // Export para debug (opcional)
  window.SESIONES = {
    loadActiveSessions,
    loadLoginAttempts,
    loadMyHistory,
    disconnectSession
  };
})();