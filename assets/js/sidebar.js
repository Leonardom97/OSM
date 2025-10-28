(function () {
  function isSM() { return window.innerWidth < 992; }

  function showSidebar() {
    const sidebar = document.querySelector('.sidebar');
    if (sidebar) sidebar.style.display = 'block';
  }

  function hideSidebar() {
    const sidebar = document.querySelector('.sidebar');
    if (sidebar) sidebar.style.display = 'none';
  }

  function toggleSidebar() {
    const sidebar = document.querySelector('.sidebar');
    if (!sidebar) return;
    if (getComputedStyle(sidebar).display === 'none') {
      showSidebar();
    } else {
      hideSidebar();
    }
  }

  function setInitialSidebar() {
    const sidebar = document.querySelector('.sidebar');
    if (!sidebar) return;
    if (isSM()) {
      hideSidebar();
    } else {
      sidebar.style.display = 'block';
    }
  }

  // Normaliza roles: minúsculas, quita acentos, espacios -> guion_bajo
  const normalize = (str) =>
    String(str || '')
      .trim()
      .toLowerCase()
      .normalize('NFD')
      .replace(/[\u0300-\u036f]/g, '')
      .replace(/\s+/g, '_');

  // Verifica y muestra solo los menús del sidebar permitidos por rol
  async function filtrarSidebarPorRol() {
    try {
      const res = await fetch('/php/verificar_sesion.php');
      const data = await res.json();
      if (!data.success) return;

      const rolesUsuario = Array.isArray(data.roles) && data.roles.length > 0
        ? data.roles.map(r => normalize(r.nombre))
        : [normalize(data.rol || 'usuario')];

      document.querySelectorAll('[data-role]').forEach(elemento => {
        const rolesPermitidos = elemento.dataset.role
          .split(',')
          .map(r => normalize(r));
        const tieneAcceso = rolesUsuario.some(rol => rolesPermitidos.includes(rol));
        if (!tieneAcceso) elemento.remove();
      });
    } catch (error) {
      console.error('Error verificando roles para el sidebar:', error);
    }
  }

  window.addEventListener('resize', setInitialSidebar);

  document.addEventListener('DOMContentLoaded', function () {
    setInitialSidebar();

    document.body.addEventListener('click', function (e) {
      const btn = e.target.closest('#sidebarToggleTop');
      if (btn && isSM()) {
        toggleSidebar();
        e.preventDefault();
      }
    });

    filtrarSidebarPorRol();
  });
})();