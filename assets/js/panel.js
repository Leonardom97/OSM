// www/assets/js/panel.js
// Versión defensiva: rellena datos desde /php/panel.php sin tocar thead ni sus atributos.
// Si el thead pierde su estilo inline lo restablece al valor original detectado al cargar la página.

(function () {
  const ENDPOINT = '/php/panel.php';
  const FETCH_CREDENTIALS = 'same-origin';

  const IDS = {
    usuarios: 'usuarios-registrados-panel',
    colaboradores: 'usuarios-colaboradores-panel',
    capacitaciones_total: 'capacitaciones-realizadas-panel',
    fecha_corte: 'fecha-corte-panel',
    tabla_capacitaciones: 'tabla-capacitaciones'
  };

  function $id(id) { return document.getElementById(id); }

  // Guarda el atributo 'style' original del thead (si existe) para restituirlo después
  function captureTheadStyle(table) {
    if (!table) return null;
    const thead = table.querySelector && table.querySelector('thead');
    if (!thead) return null;
    // guardamos el atributo style completo y también el outerHTML por si hace falta
    return {
      styleAttr: thead.getAttribute('style'),
      outerHTML: thead.outerHTML
    };
  }

  // Restaura el styleAttr guardado si el thead actual no tiene un style o si fue cambiado.
  function restoreTheadStyleIfNeeded(table, snapshot) {
    if (!table || !snapshot) return;
    const thead = table.querySelector && table.querySelector('thead');
    if (!thead) return;
    // Si no hay style inline o difiere del snapshot, restablecer el atributo style (solo si snapshot.styleAttr !== null)
    // No forzamos colores nuevos, simplemente devolvemos lo que había al cargar.
    try {
      const currentStyle = thead.getAttribute('style');
      if (snapshot.styleAttr !== currentStyle) {
        if (snapshot.styleAttr === null) {
          // eliminar atributo si antes no existía
          thead.removeAttribute('style');
        } else {
          thead.setAttribute('style', snapshot.styleAttr);
        }
      }
      // Aseguramos que cada th tenga el color heredado si estaban explícitos en snapshot.outerHTML
      // (solo en caso extremo donde el thead fuese reescrito por otro script)
      // No forzamos valores que el usuario no tuviese originalmente.
      // Si el snapshot tenía th con inline styles, restauramos esos th inline styles.
      // Para mantener simpleza, si current outerHTML difiere sustancialmente volvemos a snapshot.outerHTML.
      if (snapshot.outerHTML && thead.outerHTML !== snapshot.outerHTML) {
        // Reemplazamos solo si difiere (puede afectar listeners en thead, pero es necesario si otro script reescribió thead)
        // Esto restituye exactamente lo que había.
        thead.outerHTML = snapshot.outerHTML;
      }
    } catch (e) {
      // en caso de error no hacer nada para no romper la página
      console.warn('[panel.js] restoreTheadStyleIfNeeded failed', e);
    }
  }

  // Obtiene o crea un <span data-value> dentro del contenedor sin modificar contenedor.
  function getOrCreateValueSpan(container) {
    if (!container) return null;
    try {
      const found = container.querySelector && container.querySelector('[data-value]');
      if (found) return found;
    } catch (e) {}
    try {
      const firstSpan = container.querySelector && container.querySelector('span');
      if (firstSpan) return firstSpan;
    } catch (e) {}
    // buscar nodo de texto para reemplazar
    for (let i = 0; i < container.childNodes.length; i++) {
      const node = container.childNodes[i];
      if (node.nodeType === Node.TEXT_NODE && node.nodeValue.trim() !== '') {
        const newSpan = document.createElement('span');
        newSpan.setAttribute('data-value', 'true');
        // asegurar herencia visual
        newSpan.style.color = 'inherit';
        newSpan.style.fontSize = 'inherit';
        newSpan.style.fontWeight = 'inherit';
        newSpan.style.fontFamily = 'inherit';
        newSpan.textContent = node.nodeValue.trim();
        container.replaceChild(newSpan, node);
        return newSpan;
      }
    }
    // crear al final sin tocar otros hijos
    const created = document.createElement('span');
    created.setAttribute('data-value', 'true');
    created.style.color = 'inherit';
    created.style.fontSize = 'inherit';
    created.style.fontWeight = 'inherit';
    created.style.fontFamily = 'inherit';
    container.appendChild(created);
    return created;
  }

  function setCounterValueById(id, value) {
    const el = $id(id);
    if (!el) return;
    const span = getOrCreateValueSpan(el);
    if (span) span.textContent = (value === null || value === undefined || value === '') ? '--' : String(value);
  }

  function formatDateToDDMMYYYY(dateIso) {
    if (!dateIso) return '--';
    const m = dateIso.match(/^(\d{4})-(\d{2})-(\d{2})/);
    if (m) return `${m[3]}/${m[2]}/${m[1]}`;
    const d = new Date(dateIso);
    if (!isNaN(d.getTime())) {
      const dd = String(d.getDate()).padStart(2, '0');
      const mm = String(d.getMonth() + 1).padStart(2, '0');
      const yyyy = d.getFullYear();
      return `${dd}/${mm}/${yyyy}`;
    }
    return dateIso;
  }

  // Vacía filas del tbody sin tocar thead ni sus atributos
  function clearTableRows(tableId) {
    const table = $id(tableId);
    if (!table) return null;
    let tbody = table.tBodies[0];
    if (!tbody) {
      // crear tbody sin alterar thead
      tbody = document.createElement('tbody');
      table.appendChild(tbody);
    }
    while (tbody.firstChild) tbody.removeChild(tbody.firstChild);
    return tbody;
  }

  function addTableRow(tableId, cols) {
    const table = $id(tableId);
    if (!table) return;
    let tbody = table.tBodies[0];
    if (!tbody) {
      tbody = document.createElement('tbody');
      table.appendChild(tbody);
    }
    const tr = document.createElement('tr');
    cols.forEach(col => {
      const td = document.createElement('td');
      if (col && typeof col === 'object' && col.html) {
        // caso excepcional: HTML controlado
        td.innerHTML = col.value;
      } else {
        td.textContent = (col === null || col === undefined) ? '' : String(col);
      }
      tr.appendChild(td);
    });
    tbody.appendChild(tr);
  }

  async function fetchAndPopulate() {
    try {
      const table = $id(IDS.tabla_capacitaciones);
      // capturar snapshot del thead antes de tocar la tabla
      const theadSnapshot = table ? captureTheadStyle(table) : null;

      console.log('[panel.js] fetching', ENDPOINT);
      const resp = await fetch(ENDPOINT, {
        method: 'GET',
        credentials: FETCH_CREDENTIALS,
        cache: 'no-store',
        headers: { 'Accept': 'application/json' }
      });

      if (resp.status === 401) {
        console.warn('[panel.js] 401 no autenticado');
        setCounterValueById(IDS.usuarios, '--');
        setCounterValueById(IDS.colaboradores, '--');
        setCounterValueById(IDS.capacitaciones_total, '--');
        setCounterValueById(IDS.fecha_corte, '--');
        if (table) clearTableRows(IDS.tabla_capacitaciones);
        return;
      }

      if (!resp.ok) {
        const txt = await resp.text();
        console.error('[panel.js] HTTP error', resp.status, txt);
        throw new Error('HTTP ' + resp.status);
      }

      const data = await resp.json();
      if (!data || data.ok !== true) {
        console.error('[panel.js] API error or ok!=true', data);
        setCounterValueById(IDS.usuarios, '--');
        setCounterValueById(IDS.colaboradores, '--');
        setCounterValueById(IDS.capacitaciones_total, '--');
        setCounterValueById(IDS.fecha_corte, '--');
        if (table) clearTableRows(IDS.tabla_capacitaciones);
        return;
      }

      // actualizar contadores (solo spans)
      setCounterValueById(IDS.usuarios, data.usuarios ?? '--');
      setCounterValueById(IDS.colaboradores, data.colaboradores ?? '--');
      setCounterValueById(IDS.capacitaciones_total, data.capacitaciones_total ?? '--');
      setCounterValueById(IDS.fecha_corte, data.fecha_corte ? formatDateToDDMMYYYY(data.fecha_corte) : '--');

      // actualizar tabla (solo tbody)
      if (table) {
        clearTableRows(IDS.tabla_capacitaciones);
        const recientes = Array.isArray(data.capacitaciones_recientes) ? data.capacitaciones_recientes : [];
        if (recientes.length === 0) {
          addTableRow(IDS.tabla_capacitaciones, ['—', '—', '—']);
        } else {
          recientes.forEach(item => {
            addTableRow(IDS.tabla_capacitaciones, [
              item.nombre || 'Sin nombre',
              item.fecha ? formatDateToDDMMYYYY(item.fecha) : '--',
              (typeof item.asistentes !== 'undefined') ? item.asistentes : 0
            ]);
          });
        }
        // Restaurar thead si otro script lo modificó
        restoreTheadStyleIfNeeded(table, theadSnapshot);
      }

      console.log('[panel.js] datos actualizados');
    } catch (err) {
      console.error('[panel.js] error al cargar datos:', err);
      try {
        setCounterValueById(IDS.usuarios, '--');
        setCounterValueById(IDS.colaboradores, '--');
        setCounterValueById(IDS.capacitaciones_total, '--');
        setCounterValueById(IDS.fecha_corte, '--');
        const table = $id(IDS.tabla_capacitaciones);
        if (table) clearTableRows(IDS.tabla_capacitaciones);
      } catch (e) {}
    }
  }

  document.addEventListener('DOMContentLoaded', () => {
    fetchAndPopulate();
    setInterval(fetchAndPopulate, 60 * 1000);
  });
})();