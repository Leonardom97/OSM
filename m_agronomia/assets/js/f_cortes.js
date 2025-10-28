// assets/js/f_cortes.js
// Cliente final: envía cookies de sesión (credentials:'same-origin') y no intenta forzar rol por header.
// Reemplaza el archivo existente y haz hard-refresh.

(function () {
  const API_URL = 'assets/php/fecha_corte.php';
  const inputFecha = document.getElementById("fecha");
  const inputActual = document.getElementById("fecha-actual");
  const form = document.getElementById("form-fecha");
  const debugEl = document.getElementById("debug");

  // Mismo origen (localhost). Si frontend y backend están en distintos orígenes cambia a 'include' y configura CORS en el servidor.
  const CREDENTIALS = 'same-origin';

  function dbg(msg) {
    console.debug(msg);
    if (debugEl) {
      debugEl.style.display = 'block';
      debugEl.textContent = (debugEl.textContent ? debugEl.textContent + '\n' : '') + msg;
    }
  }

  function isIsoDate(s) {
    return typeof s === 'string' && /^\d{4}-\d{2}-\d{2}$/.test(s);
  }

  function formatFechaParaMostrar(fechaIso) {
    if (!fechaIso) return 'No establecida';
    const d = new Date(fechaIso + 'T00:00:00');
    if (isNaN(d.getTime())) return fechaIso;
    return d.toLocaleDateString('es-ES', { day: '2-digit', month: '2-digit', year: 'numeric' });
  }

  function actualizarDomYStorage(fechaIso) {
    try {
      if (fechaIso && isIsoDate(fechaIso)) localStorage.setItem('fecha_corte', fechaIso);
      else localStorage.removeItem('fecha_corte');
    } catch (e) { console.warn('localStorage:', e); }

    if (inputActual) inputActual.value = fechaIso ? formatFechaParaMostrar(fechaIso) : 'No establecida';
    if (inputFecha) inputFecha.value = (fechaIso && isIsoDate(fechaIso)) ? fechaIso : '';
    window.FECHA_CORTE = fechaIso || null;
    try { window.dispatchEvent(new CustomEvent('fechaCorteChanged', { detail: { fecha: fechaIso } })); } catch (e) {}
  }

  (function initFromLocal() {
    try {
      const stored = localStorage.getItem('fecha_corte');
      if (stored && isIsoDate(stored)) {
        if (inputActual) inputActual.value = formatFechaParaMostrar(stored);
        if (inputFecha) inputFecha.value = stored;
        window.FECHA_CORTE = stored;
      }
    } catch (e) { console.warn('localStorage read failed', e); }
  })();

  async function mostrarFechaActual() {
    dbg('GET ' + API_URL);
    try {
      const res = await fetch(API_URL, { method: 'GET', cache: 'no-store', credentials: CREDENTIALS });
      dbg('GET status: ' + res.status);
      const txt = await res.text();
      dbg('GET body raw: ' + txt);
      if (!res.ok) {
        if (res.status === 404) { actualizarDomYStorage(null); return; }
        console.error('GET error', txt);
        alert('Error al leer la fecha desde el servidor (ver consola).');
        return;
      }
      let data = null;
      try { data = JSON.parse(txt); } catch (e) { dbg('GET JSON parse error: ' + e); }
      const fecha = data && data.row && data.row.fecha_corte ? data.row.fecha_corte : null;
      actualizarDomYStorage(fecha);
    } catch (err) {
      console.error('mostrarFechaActual error:', err);
      dbg('Error de red al hacer GET: ' + err);
    }
  }

  async function sendUpdate(method, nuevaFecha) {
    const headers = { 'Content-Type': 'application/json' };
    dbg(`${method} -> ${API_URL} (envío con cookie de sesión)`);
    try {
      const res = await fetch(API_URL, {
        method,
        headers,
        body: JSON.stringify({ fecha_corte: nuevaFecha }),
        cache: 'no-store',
        credentials: CREDENTIALS
      });
      const txt = await res.text();
      dbg(`${method} status: ${res.status}`);
      dbg(`${method} body raw: ${txt}`);
      let body = null;
      try { body = JSON.parse(txt); } catch (e) {}
      return { ok: res.ok, status: res.status, body, txt };
    } catch (e) {
      dbg(method + ' fetch error: ' + e);
      return { ok: false, error: e };
    }
  }

  async function guardarFecha(nuevaFecha) {
    // No se envía X-User-Role: la verificación la hace el servidor con $_SESSION
    let res = await sendUpdate('PUT', nuevaFecha);
    if ((!res.ok && (res.status === 405 || res.status === 501)) || !res.ok) {
      // fallback a POST si PUT no está soportado o hubo error que indique intentarlo
      res = await sendUpdate('POST', nuevaFecha);
    }
    return res;
  }

  mostrarFechaActual();

  if (form) form.addEventListener('submit', async (e) => {
    e.preventDefault();
    const nuevaFecha = inputFecha.value;
    if (!nuevaFecha) { alert('Selecciona una fecha válida'); return; }
    dbg('Enviar fecha: ' + nuevaFecha);
    const result = await guardarFecha(nuevaFecha);
    dbg('Resultado: ' + JSON.stringify(result));
    if (result && result.ok) {
      const fechaDevuelta = (result.body && result.body.fecha_corte) ? result.body.fecha_corte : nuevaFecha;
      actualizarDomYStorage(fechaDevuelta);
      alert('Fecha guardada: ' + formatFechaParaMostrar(fechaDevuelta));
      mostrarFechaActual();
      return;
    }
    if (result && result.status === 403) {
      const msg = (result.body && (result.body.message || result.body.error)) ? (result.body.message || result.body.error) : 'No autorizado (403)';
      alert('No autorizado: ' + msg);
      return;
    }
    alert('Error al guardar la fecha. Revisa la consola y el endpoint debug.');
  });

  window._fechaCorte = { mostrarFechaActual };
})();