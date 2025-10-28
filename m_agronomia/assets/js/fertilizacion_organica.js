(function () {
  // Definición de las columnas que tendrá la tabla de fertilización orgánica
  const columnas = [
    'fertilizacion_organica_id','fecha_actividad','responsable','plantacion','finca','siembra','lote','parcela',
    'linea_entrada','linea_salida','hora_entrada','hora_salida','labor_especifica','producto_aplicado',
    'dosis_kg','unidad_aplicacion','contratista_colaborador','n_colaboradores','colaboradores','tipo_labor',
    'contratista_maquinaria','n_operadores','tipo_maquina','nombre_operadores','bultos_aplicados','n_traslado',
    'kg_aplicados','error_registro','supervision'
  ];

  // Variables globales para el manejo de los datos, paginación, filtros y orden
  let allData = [], currentPage = 1, pageSize = 25, filtros = {}, ordenColumna = null, ordenAsc = true, total = 0;

  /**
   * Solicita datos al backend aplicando filtros, paginación y orden.
   */
  async function fetchData(page = 1, pageSize = 25, filtros = {}, ordenCol = null, ordenAsc = true) {
    const params = new URLSearchParams({ page, pageSize });
    if (ordenCol) { params.append('ordenColumna', ordenCol); params.append('ordenAsc', ordenAsc ? '1' : '0'); }
    for (const key in filtros) { if (filtros[key]) params.append(`filtro_${key}`, filtros[key]); }
    const endpoint = `assets/php/conexion_fertilizacion_organica.php?${params}`;
    const resp = await fetch(endpoint);
    if (!resp.ok) throw new Error('Error al cargar fertilización orgánica');
    return await resp.json();
  }

  /**
   * Determina el estado de supervisión de una fila (aprobado, pendiente o edición).
   */
  function calcularEstadoSupervision(row, pendientesSet) {
    const check = row.check !== undefined && row.check !== null ? Number(row.check) : 0;
    if (check === 1) return 'aprobado';
    if (row.supervision === 'pendiente' || pendientesSet.has(String(row.fertilizacion_organica_id))) return 'pendiente';
    return 'edicion';
  }

  /**
   * Renderiza la tabla principal con los datos actuales y sus acciones.
   */
  function renderTabla(datos) {
    const fechaCorte = localStorage.getItem("fecha_corte");
    const tbody = document.getElementById('tbody-fertilizacion-organica');
    if (!tbody) return;
    // Obtiene el set de IDs pendientes desde variable global, si existe
    const pendientesSet = (window.PENDING_IDS && window.PENDING_IDS.fertilizacion_organica) ? window.PENDING_IDS.fertilizacion_organica : new Set();
    tbody.innerHTML = '';
    datos.forEach((row, idx) => {
      const estadoSupervision = calcularEstadoSupervision(row, pendientesSet);
      const tr = document.createElement('tr');
      // Checkbox para seleccionar la fila
      tr.innerHTML = `<td><input type="checkbox" class="fila-fertilizacion-chk md-checkbox" data-row="${idx}"></td>`;
      columnas.forEach(col => {
        const td = document.createElement('td');
        if (col === 'supervision') {
          // Celda especial para estado de supervisión
          td.innerHTML = '';
          td.classList.add('supervision-cell');
          td.setAttribute('data-col','supervision');
          td.setAttribute('data-estado', estadoSupervision);
        } else if (col === 'error_registro') {
          // Celda especial para error_registro: badge o botón de inactivar
          if (row.error_registro === 'inactivo') {
            td.innerHTML = '<span class="badge bg-secondary">Inactivo</span>';
          } else {
            td.innerHTML = `
              <button class="md-btn md-btn-icon btn-inactivar"
                      title="Inactivar"
                      data-id="${row.fertilizacion_organica_id}">
                <i class="fas fa-ban"></i>
              </button>`;
          }
          td.classList.add('error-cell');
          td.setAttribute('data-col','error_registro');
        } else {
          // Celda normal
          td.textContent = row[col] || '';
        }
        tr.appendChild(td);
      });
      // Botones de acción según el estado de la fila y la fecha de corte
      const fechaFila = row['fecha_actividad'] || "";
      let btnEditar = "", btnEstado = "";
      if (row.error_registro === 'inactivo') {
        btnEstado = `<button class="md-btn md-btn-icon" title="Inactivo" disabled><i class="fa fa-lock"></i></button>`;
      } else if (fechaCorte && fechaFila) {
        if (fechaFila < fechaCorte) {
          btnEstado = `<button class="md-btn md-btn-icon" title="Fuera de fecha de corte" disabled><i class="fa fa-lock"></i></button>`;
        } else {
          btnEditar = `<button class="md-btn md-btn-icon btn-editar" title="Editar" data-id="${row.fertilizacion_organica_id}"><i class="fa fa-pen"></i></button>`;
        }
      } else {
        btnEditar = `<button class="md-btn md-btn-icon btn-editar" title="Editar" data-id="${row.fertilizacion_organica_id}"><i class="fa fa-pen"></i></button>`;
        btnEstado = `<button class="md-btn md-btn-icon" title="Sin fecha de corte" disabled><i class="fa fa-question-circle"></i></button>`;
      }
      // Botones de acción: editar, visualizar y estado
      const acciones = `
        ${btnEditar}
        <button class="md-btn md-btn-icon btn-visualizar" title="Visualizar" data-id="${row.fertilizacion_organica_id}"><i class="fa fa-eye"></i></button>
        ${btnEstado}
      `;
      const tdAcciones = document.createElement('td');
      tdAcciones.style = 'display:inline-flex; align-items:center;';
      tdAcciones.innerHTML = acciones;
      tr.appendChild(tdAcciones);
      tbody.appendChild(tr);
    });
    // Asignación de eventos a los botones de acción
    tbody.querySelectorAll('.btn-editar').forEach(btn => {
      btn.onclick = function () {
        const id = this.getAttribute("data-id");
        const registro = allData.find(row => row.fertilizacion_organica_id == id);
        if (registro) abrirModal(registro, false);
      };
    });
    tbody.querySelectorAll('.btn-visualizar').forEach(btn => {
      btn.onclick = function () {
        const id = this.getAttribute("data-id");
        const registro = allData.find(row => row.fertilizacion_organica_id == id);
        if (registro) abrirModal(registro, true);
      };
    });
    tbody.querySelectorAll('.btn-inactivar').forEach(btn => {
      btn.onclick = async function () {
        const id = this.getAttribute("data-id");
        if (!confirm("¿Seguro que quieres inactivar este registro? Esta acción no se puede deshacer.")) return;
        try {
          const resp = await fetch('assets/php/inactivar_fertilizacion_organica.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ fertilizacion_organica_id: id })
          });
          const result = await resp.json();
          if (result.success) {
            alert("Registro inactivado.");
            renderPagina();
          } else {
            alert(result.error || "No se pudo inactivar.");
          }
        } catch (e) {
          alert("Error al inactivar.");
        }
      };
    });
    renderPaginacion();
  }

  /**
   * Renderiza el control de paginación de la tabla.
   */
  function renderPaginacion() {
    const totalPages = Math.max(1, Math.ceil(total / pageSize));
    const pagNav = document.getElementById('pagination-inventarios');
    if (!pagNav) return;
    const ul = pagNav.querySelector('.md-pagination-list');
    if (!ul) return;
    ul.innerHTML = '';
    function pageItem(text, page, active = false, disabled = false) {
      const li = document.createElement('li');
      li.className = disabled ? 'disabled' : (active ? 'active' : '');
      const btn = document.createElement('button');
      btn.className = 'page-link';
      btn.innerText = text;
      btn.disabled = disabled;
      btn.onclick = function () {
        if (!disabled && page !== currentPage) {
          currentPage = page;
          renderPagina();
        }
      };
      li.appendChild(btn);
      return li;
    }
    ul.appendChild(pageItem('«', Math.max(1, currentPage - 1), false, currentPage === 1));
    let start = Math.max(1, currentPage - 1);
    let end = Math.min(totalPages, start + 3);
    if (end - start < 3) start = Math.max(1, end - 3);
    for (let i = start; i <= end; i++) {
      ul.appendChild(pageItem(i, i, i === currentPage));
    }
    ul.appendChild(pageItem('»', Math.min(totalPages, currentPage + 1), false, currentPage === totalPages));
  }

  /**
   * Abre el modal de edición o visualización de registros.
   */
  function abrirModal(rowData, soloLectura = false) {
    const campos = columnas
      .filter(col => col !== 'error_registro' && col !== 'supervision')
      .map(col => {
        const readonly = (col === 'fertilizacion_organica_id' || soloLectura) ? "readonly" : "";
        return `
          <div class="col-md-6 mb-3">
            <label class="form-label">${col.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase())}</label>
            <input type="text" class="form-control" name="${col}" value="${rowData[col] || ''}" ${readonly}>
          </div>
        `;
      }).join('');
    const contCampos = document.getElementById('campos-formulario');
    if (contCampos) contCampos.innerHTML = campos;

    // --- INICIO: BOTÓN REVERTIR APROBACIÓN ---
    const modalFooter = document.querySelector('#modal-editar .modal-footer');
    if (modalFooter) {
      // Remueve el botón repeat si ya existe
      const oldIcon = modalFooter.querySelector('.icon-repeat-supervision');
      if (oldIcon) oldIcon.remove();

      // Muestra el botón si el registro está aprobado
      const isAprobado = rowData.check == 1 || rowData.supervision === 'aprobado';
      if (isAprobado) {
        const repeatBtn = document.createElement('button');
        repeatBtn.type = "button";
        repeatBtn.className = 'btn btn-link icon-repeat-supervision';
        repeatBtn.title = "Revertir aprobación y restaurar datos originales";
        repeatBtn.innerHTML = `<i class="fa-solid fa-repeat" style="font-size:1.8em;color:#198754;vertical-align:middle;"></i>`;
        repeatBtn.style.marginRight = "18px";
        repeatBtn.onclick = async function () {
          if (!rowData.fertilizacion_organica_id) return;
          if (!confirm("¿Deseas revertir la aprobación y restaurar los datos originales?")) return;
          try {
            const resp1 = await fetch('assets/php/rechazar_fertilizacion_organica.php', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify({ fertilizacion_organica_id: rowData.fertilizacion_organica_id })
            });
            const res1 = await resp1.json();
            if (!res1 || !res1.success) {
              alert("No se pudo revertir la aprobación: " + (res1 && res1.error ? res1.error : ""));
              return;
            }
            // Obtener datos originales actualizados
            const resp2 = await fetch(`assets/php/conexion_fertilizacion_organica.php?page=1&pageSize=1&filtro_fertilizacion_organica_id=${encodeURIComponent(rowData.fertilizacion_organica_id)}`);
            const res2 = await resp2.json();
            const original = res2 && res2.datos && res2.datos[0];
            if (!original) {
              alert("No se pudo obtener los datos originales.");
              return;
            }
            // Actualiza local y tabla
            const idx = allData.findIndex(r => r.fertilizacion_organica_id == original.fertilizacion_organica_id);
            if (idx !== -1) allData[idx] = original;
            renderTabla(allData);
            abrirModal(original, false);
          } catch (e) {
            alert("Error al restaurar datos originales: " + (e.message || e));
          }
        };
        modalFooter.insertBefore(repeatBtn, modalFooter.firstChild);
      }

      const btnSubmit = modalFooter.querySelector('button[type="submit"]');
      if (btnSubmit) btnSubmit.style.display = soloLectura ? 'none' : '';
    }
    // --- FIN BOTÓN REVERTIR ---

    const modalEl = document.getElementById('modal-editar');
    if (modalEl) {
      const modal = new bootstrap.Modal(modalEl);
      modal.show();
    }
  }

  // Evento submit para guardar edición de un registro
  const formEditar = document.getElementById('form-editar');
  if (formEditar) {
    formEditar.addEventListener('submit', async function(e) {
      e.preventDefault();
      const formData = new FormData(this);
      const datosEditados = {};
      columnas.forEach(col => {
        datosEditados[col] = formData.get(col);
      });
      const rol = (document.body.getAttribute('data-role') || "").toLowerCase();
      if (rol !== 'administrador' && rol !== 'aux_agronomico') {
        datosEditados.supervision = 'pendiente';
      }
      try {
        const resp = await fetch('assets/php/actualizar_fertilizacion_organica.php', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(datosEditados)
        });
        const result = await resp.json();
        if(result.success) {
          renderPagina();
          setTimeout(() => {
            document.activeElement.blur();
            bootstrap.Modal.getInstance(document.getElementById('modal-editar'))?.hide();
          }, 100);
          alert("¡Guardado exitosamente!");
        }
      } catch(e) {
        // NO alert de error aquí
      }
    });
  }

  // ------------------ EXPORTACIÓN EXCEL ------------------

  /**
   * Exporta los datos recibidos a un archivo Excel usando XLSX.
   */
  function exportarAExcelDesdeDatos(datos, columnas, nombre) {
    const cabeceras = columnas.map(c => c.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase()));
    const data = datos.map(row => columnas.map(col => row[col]));
    const ws = XLSX.utils.aoa_to_sheet([cabeceras, ...data]);
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, ws, "Hoja1");
    XLSX.writeFile(wb, nombre + ".xlsx");
  }
  // Exporta todos los registros de la BD (sin filtro ni paginación)
  function exportarTodo() {
    const params = new URLSearchParams();
    params.append('exportTodo', '1');
    fetch('assets/php/conexion_fertilizacion_organica.php?' + params.toString())
      .then(r => r.json())
      .then(json => {
        exportarAExcelDesdeDatos(json.datos || [], columnas, 'fertilizacion_organica_todo');
      });
  }
  // Exporta solo lo filtrado (actual tabla)
  function exportarFiltrado() {
    exportarAExcelDesdeDatos(allData, columnas, 'fertilizacion_organica_filtrado');
  }
  // Exporta solo las filas seleccionadas por el usuario
  function exportarSeleccion() {
    const tbody = document.getElementById('tbody-fertilizacion-organica');
    const seleccion = [];
    tbody.querySelectorAll('tr').forEach((tr, idx) => {
      const chk = tr.querySelector('input[type="checkbox"]');
      if (chk && chk.checked) seleccion.push(allData[idx]);
    });
    exportarAExcelDesdeDatos(seleccion, columnas, 'fertilizacion_organica_seleccion');
  }
  // Crea el menú visual para exportar a excel
  function crearMenuExportar() {
    if (document.getElementById('exportMenuFertilizacion')) return;
    const btnExport = document.getElementById('exportBtnFertilizacion');
    if (!btnExport) return;
    const menu = document.createElement('div');
    menu.id = 'exportMenuFertilizacion';
    menu.className = 'md-export-menu';
    menu.style.position = 'absolute';
    menu.style.top = '40px';
    menu.style.right = '0';
    menu.style.background = '#fff';
    menu.style.boxShadow = '0 2px 16px rgba(0,0,0,0.15)';
    menu.style.padding = '8px 0';
    menu.style.borderRadius = '16px';
    menu.style.zIndex = 1000;
    menu.style.minWidth = '190px';
    menu.innerHTML = `
      <button class="md-export-menu-item" style="width:100%;text-align:left;padding:12px 24px;border:none;background:none;cursor:pointer;font-size:1rem;display:flex;align-items:center;gap:10px">
        <i class="fas fa-table"></i> <b>Todo (.xlsx)</b>
      </button>
      <button class="md-export-menu-item" style="width:100%;text-align:left;padding:12px 24px;border:none;background:none;cursor:pointer;font-size:1rem;display:flex;align-items:center;gap:10px">
        <i class="fas fa-filter"></i> Filtrado (.xlsx)
      </button>
      <button class="md-export-menu-item" style="width:100%;text-align:left;padding:12px 24px;border:none;background:none;cursor:pointer;font-size:1rem;display:flex;align-items:center;gap:10px">
        <i class="fas fa-check-square"></i> Selección (.xlsx)
      </button>
    `;
    btnExport.parentNode.style.position = 'relative';
    btnExport.parentNode.appendChild(menu);
    const items = menu.querySelectorAll('.md-export-menu-item');
    items[0].onclick = function(){ exportarTodo(); menu.remove(); };
    items[1].onclick = function(){ exportarFiltrado(); menu.remove(); };
    items[2].onclick = function(){ exportarSeleccion(); menu.remove(); };
    setTimeout(()=>{
      function clickFuera(e){
        if (!menu.contains(e.target) && e.target !== btnExport) {
          menu.remove();
          document.removeEventListener('mousedown', clickFuera);
        }
      }
      document.addEventListener('mousedown', clickFuera);
    }, 100);
  }
  // ------------------------------------------------------

  /**
   * Llama a fetchData y renderiza la tabla para la página actual.
   */
  async function renderPagina() {
    const data = await fetchData(currentPage, pageSize, filtros, ordenColumna, ordenAsc);
    allData = data.datos || [];
    total = data.total || 0;
    renderTabla(allData);
  }
  // Inicialización de eventos y renderizado al cargar el DOM
  document.addEventListener('DOMContentLoaded', () => {
    const filtrosInputs = document.querySelectorAll('#tabla-inventarios thead input[data-col]');
    const btnClear = document.getElementById('clearFiltersBtn4');
    filtrosInputs.forEach(input => {
      input.addEventListener('input', function () {
        filtros[this.dataset.col] = this.value;
        currentPage = 1;
        renderPagina();
      });
    });
    if (btnClear) {
      btnClear.addEventListener('click', () => {
        filtrosInputs.forEach(input => input.value = '');
        filtros = {};
        currentPage = 1;
        renderPagina();
      });
    }

    const select = document.getElementById('limitSelect4');
    if (select) {
      select.addEventListener('change', function () {
        pageSize = parseInt(this.value, 10);
        currentPage = 1;
        renderPagina();
      });
    }
    const selectAll = document.getElementById('selectAll4');
    if (selectAll) {
      selectAll.addEventListener('change', function() {
        document.querySelectorAll('.fila-fertilizacion-chk').forEach(chk => chk.checked = this.checked);
      });
    }
    document.querySelectorAll('#tabla-inventarios thead .icon-sort').forEach(flecha => {
      flecha.addEventListener('click', function() {
        if (ordenColumna === this.dataset.col) {
          ordenAsc = !ordenAsc;
        } else {
          ordenColumna = this.dataset.col;
          ordenAsc = true;
        }
        document.querySelectorAll('#tabla-inventarios thead .icon-sort').forEach(f=>f.classList.remove('active'));
        this.classList.add('active');
        renderPagina();
      });
    });

    // ---- EXPORT ----
    const btnExport = document.getElementById('exportBtnFertilizacion');
    if (btnExport) {
      btnExport.addEventListener('click', function(e) {
        e.stopPropagation();
        crearMenuExportar();
      });
    }
    const estilos = `
    .md-export-menu { animation: fadein .2s; }
    .md-export-menu-item:hover { background: #f5f5f5; }
    @keyframes fadein { from{opacity:0;transform:translateY(-8px);} to{opacity:1;transform:translateY(0);} }
    `;
    const styleTag = document.createElement('style');
    styleTag.textContent = estilos;
    document.head.appendChild(styleTag);

    renderPagina();
  });
})();