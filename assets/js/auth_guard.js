(function () {
  document.addEventListener('DOMContentLoaded', () => {
    const DEBUG = false;

    // Normaliza roles: minúsculas, quita acentos, espacios -> guion_bajo
    const normalize = (str) =>
      String(str || '')
        .trim()
        .toLowerCase()
        .normalize('NFD')
        .replace(/[\u0300-\u036f]/g, '')
        .replace(/\s+/g, '_');

    fetch('/php/verificar_sesion.php')
      .then(res => res.json())
      .then(data => {
        if (DEBUG) console.log('[auth_guard] verificar_sesion:', data);

        if (!data.success) {
          if (DEBUG) console.warn('[auth_guard] sin sesión => /index.html');
          window.location.href = '/index.html';
          return;
        }

        // Construye arreglo de roles consistente
        const roleArray = Array.isArray(data.roles) && data.roles.length > 0
          ? data.roles.map(r => r.nombre)
          : [data.rol || 'usuario'];

        const userRoles = roleArray.map(normalize);
        if (DEBUG) console.log('[auth_guard] userRoles:', userRoles);

        // Permisos por elemento (oculta elementos no permitidos)
        document.querySelectorAll('[data-role]').forEach(el => {
          const requiredRoles = el.getAttribute('data-role')
            .split(',')
            .map(r => normalize(r));
          const hasPermission = userRoles.some(role => requiredRoles.includes(role));
          if (!hasPermission) el.style.display = 'none';
        });

        // Permisos por página (<body data-role="...">)
        const pageRolesAttr = document.body.getAttribute('data-role');
        if (pageRolesAttr) {
          const allowed = pageRolesAttr.split(',').map(r => normalize(r));
          const accessGranted = userRoles.some(role => allowed.includes(role));
          if (!accessGranted) {
            if (DEBUG) console.warn('[auth_guard] acceso denegado => /panel.html');
            window.location.href = '/panel.html';
            return;
          }
        }

        // Mostrar página solo después de aplicar reglas
        document.body.style.visibility = 'visible';
      })
      .catch((e) => {
        console.error('[auth_guard] error verificar_sesion:', e);
        window.location.href = '/index.html';
      });
  });
})();