// Cargar navbar y sidebar dinámicamente desde /includes
async function includeComponent(file, selector) {
  try {
    const res = await fetch(file);
    const html = await res.text();
    const el = document.querySelector(selector);
    if (el) el.innerHTML = html;
  } catch (err) {
    console.error(`Error al cargar ${file}:`, err);
  }
}

// Inicializador modular de multiselect tipo CoreUI
function initMultiselect(suffix) {
  const ms = document.getElementById(`multiSelect${suffix}`);
  const list = document.getElementById(`optionsList${suffix}`);
  const selected = document.getElementById(`selectedContainer${suffix}`);
  const hidden = document.getElementById(`hiddenSelect${suffix}`);
  const placeholder = document.getElementById(`placeholder${suffix}`);
  const clearBtn = document.getElementById(`clearBtn${suffix}`); // Opcional
  const toggleBtn = document.getElementById(`toggleBtn${suffix}`); // Opcional

  if (!ms || ms.dataset.initialized === 'true') return;
  ms.dataset.initialized = 'true';

  ms.addEventListener('click', (e) => {
    if (!e.target.closest('.btn-clear') && !e.target.closest('.btn-toggle')) {
      list.style.display = list.style.display === 'block' ? 'none' : 'block';
    }
  });

  document.addEventListener('click', (e) => {
    if (!ms.contains(e.target)) {
      list.style.display = 'none';
    }
  });

  list.querySelectorAll('input[type="checkbox"]').forEach(input => {
    input.addEventListener('change', update);
  });

  if (clearBtn) {
    clearBtn.addEventListener('click', (e) => {
      e.stopPropagation();
      list.querySelectorAll('input[type="checkbox"]').forEach(input => input.checked = false);
      update();
    });
  }

  if (toggleBtn) {
    toggleBtn.addEventListener('click', (e) => {
      e.stopPropagation();
      list.style.display = list.style.display === 'block' ? 'none' : 'block';
    });
  }

  function update() {
    const checked = Array.from(list.querySelectorAll('input[type="checkbox"]:checked'));

    selected.querySelectorAll('.coreui-ms-chip').forEach(chip => chip.remove());
    placeholder.style.display = checked.length === 0 ? 'inline' : 'none';

    checked.forEach(item => {
      const chip = document.createElement('span');
      chip.className = 'coreui-ms-chip';
      chip.textContent = item.parentElement.textContent.trim();

      const remove = document.createElement('button');
      remove.innerHTML = `<i class="bi bi-x-lg"></i>`;
      remove.onclick = (e) => {
        e.stopPropagation();
        item.checked = false;
        update();
      };

      chip.appendChild(remove);
      selected.appendChild(chip);
    });

    Array.from(hidden.options).forEach(opt => {
      opt.selected = checked.some(chk => chk.value === opt.value);
    });
  }

  update();
}

// Función principal al cargar el DOM
document.addEventListener("DOMContentLoaded", async () => {
  await includeComponent("../includes/navbar.html", "#navbar");
  await includeComponent("../includes/sidebar.html", "#sidebar");

  try {
    const res = await fetch("../php/verificar_sesion.php");
    const data = await res.json();

    if (!data.success) {
      window.location.href = "../index.html";
      return;
    }

    const nombreEl = document.getElementById("usuarioNombre");
    if (nombreEl) nombreEl.textContent = data.nombre;

    const adminLink = document.getElementById("link_admon");
    if (adminLink) {
      data.rol === "admin"
        ? adminLink.classList.remove("d-none")
        : adminLink.classList.add("d-none");
    }

    // >>>>> NUEVO: publica los roles reales en el DOM para que los demás scripts los lean
    (function publishRoles(){
      const body = document.body;
      if (!body) return;
      const raw = String(data.rol || '').toLowerCase();

      const roles = new Set();

      // Normaliza nombres a los que ya usan los scripts
      if (raw.includes('admin')) roles.add('administrador');
      if (raw.includes('aux')) roles.add('aux_agronomico'); // ajusta si tu back devuelve otro nombre

      // Si tu backend devuelve un array data.roles, puedes añadirlo aquí:
      if (Array.isArray(data.roles)) {
        data.roles.forEach(r => {
          const s = String(r || '').toLowerCase().trim();
          if (s) roles.add(s);
          if (s.includes('admin')) roles.add('administrador');
          if (s.includes('aux')) roles.add('aux_agronomico');
        });
      }

      const rolesStr = Array.from(roles).join(',');
      if (rolesStr) {
        body.setAttribute('data-role', rolesStr);
        // Expone también en <meta name="user-roles"> para verificacion_icons.js y otros
        let meta = document.querySelector('meta[name="user-roles"]');
        if (!meta) {
          meta = document.createElement('meta');
          meta.setAttribute('name', 'user-roles');
          document.head.appendChild(meta);
        }
        meta.setAttribute('content', rolesStr);
        // También expón en variable global (fallback)
        window.USER_ROLES = Array.from(roles);
      }
    })();

    const logoutBtn = document.getElementById("logoutBtn");
    if (logoutBtn) {
      logoutBtn.addEventListener("click", (e) => {
        e.preventDefault();
        fetch("../php/logout.php", {
          method: "GET",
          headers: { "X-Requested-With": "XMLHttpRequest" },
        })
          .then(() => window.location.href = "../index.html")
          .catch(() => alert("No se pudo cerrar la sesión"));
      });
    }

  } catch (error) {
    console.error("Error al verificar la sesión:", error);
    window.location.href = "../index.html";
  }
});