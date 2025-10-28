// Muestra la campana si el usuario es administrador o auxiliar
// y carga el script de notificaciones. El modo solo-lectura para auxiliar
// se maneja dentro de notificaciones_operaciones.js.
document.addEventListener('DOMContentLoaded', () => {
  function getRoles() {
    const all = new Set();

    const br = (document.body.getAttribute('data-role') || '')
      .toLowerCase().split(',').map(s => s.trim()).filter(Boolean);
    br.forEach(r => all.add(r));

    const meta = document.querySelector('meta[name="user-roles"]');
    if (meta?.content) {
      meta.content.toLowerCase().split(',').map(s=>s.trim()).filter(Boolean).forEach(r => all.add(r));
    }

    const gr = (window.USER_ROLES || window.ROLES || window.USER_ROLE || '');
    (Array.isArray(gr) ? gr : String(gr).split(','))
      .map(String).map(s=>s.toLowerCase().trim()).filter(Boolean).forEach(r => all.add(r));

    return Array.from(all);
  }

  function canSeeBell() {
    const roles = getRoles();
    const isAdmin = roles.includes('administrador');
    const isAux = roles.some(r => r.includes('aux'));
    return isAdmin || isAux;
  }

  const btn = document.getElementById('noti-admin');
  if (!btn) return;

  if (canSeeBell()) {
    btn.style.display = '';
    const s = document.createElement('script');
    s.src = `assets/js/notificaciones_operaciones.js?v=${Date.now()}`;
    document.body.appendChild(s);
    try { console.log('[InitNotiAdmin] Campana visible.'); } catch {}
  } else {
    btn.style.display = 'none';
    try { console.log('[InitNotiAdmin] Campana oculta (rol sin acceso).'); } catch {}
  }
});