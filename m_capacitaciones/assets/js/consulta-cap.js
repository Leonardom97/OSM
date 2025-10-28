let datos = [];
let pagina = 1;
let porPagina = 10;
let filtros = {};
let seleccionados = new Set();
let sortCol = null;
let sortDir = 'asc';

// Carga datos vía fetch del backend PHP
fetch('assets/php/consultas_capacitacion_api.php')
  .then(res => {
    if (!res.ok) throw new Error('Error HTTP: ' + res.status);
    return res.json();
  })
  .then(json => {
    if (!Array.isArray(json)) {
      console.error("Respuesta no es un array:", json);
      alert('El backend no devolvió un array.');
      return;
    }
    datos = json;
    renderTabla();
  })
  .catch(err => {
    console.error('Error cargando datos:', err);
    alert('Error cargando datos: ' + err);
  });

function filtrarDatos() {
  return datos.filter(row => {
    return Object.keys(filtros).every(col => {
      if (!filtros[col]) return true;
      
      // Special handling for the "registrado_por" column
      if (col === 'registrado_por') {
        const searchText = filtros[col].toLowerCase();
        const creado = (row.creado_por_nombre || '').toLowerCase();
        const editado = (row.editado_por_nombre || '').toLowerCase();
        return creado.includes(searchText) || editado.includes(searchText);
      }
      
      // Regular column filtering
      return row[col] && row[col].toString().toLowerCase().includes(filtros[col].toLowerCase());
    });
  }).sort((a, b) => {
    if (!sortCol) return 0;
    
    let va, vb;
    
    // Special handling for sorting by "registrado_por"
    if (sortCol === 'registrado_por') {
      va = a.creado_por_nombre || '';
      vb = b.creado_por_nombre || '';
    } else if (sortCol === 'fecha') {
      va = a[sortCol].split('/').reverse().join('');
      vb = b[sortCol].split('/').reverse().join('');
    } else {
      va = a[sortCol];
      vb = b[sortCol];
    }
    
    if (va < vb) return sortDir === 'asc' ? -1 : 1;
    if (va > vb) return sortDir === 'asc' ? 1 : -1;
    return 0;
  });
}

function renderTabla() {
  const tbody = document.querySelector('#tabla tbody');
  tbody.innerHTML = '';
  const filtrados = filtrarDatos();
  const total = filtrados.length;
  const inicio = (pagina-1)*porPagina;
  const fin = Math.min(inicio+porPagina, total);

  for (let i=inicio; i<fin; i++) {
    const row = filtrados[i];
    const idStr = String(row.id);
    const tr = document.createElement('tr');
    if (seleccionados.has(idStr)) tr.classList.add('selected');
    
    // Build the "Registrado por" cell content
    let registradoPor = '';
    if (row.creado_por_nombre) {
      registradoPor = 'Creado por: ' + row.creado_por_nombre;
      if (row.editado_por_nombre) {
        registradoPor += '<br>Editado por: ' + row.editado_por_nombre;
      }
    } else {
      registradoPor = 'No disponible';
    }
    
    tr.innerHTML = `
      <td><input type="checkbox" class="selectRow" value="${idStr}" ${seleccionados.has(idStr)?'checked':''}></td>
      <td>${row.id}</td>
      <td>${row.capacitador || ''}</td>
      <td>${row.cedula || ''}</td>
      <td>${row.tema || ''}</td>
      <td>${row.lugar || ''}</td>
      <td>${row.actividad || ''}</td>
      <td>${row.proceso || ''}</td>
      <td>${row.fecha || ''}</td>
      <td>${row.total_asistentes || 0}</td>
      <td style="font-size: 0.85em;">${registradoPor}</td>
    `;
    tbody.appendChild(tr);
  }
  document.getElementById('downloadSelected').classList.toggle('disabled', seleccionados.size === 0);
  renderBootstrapPagination(total);
  renderSortIcons();
}

function renderBootstrapPagination(total) {
  const pagNav = document.getElementById('bootstrap-pagination-nav');
  const pagUl = pagNav.querySelector('.pagination');
  pagUl.innerHTML = '';

  const totalPaginas = Math.max(1, Math.ceil(total / porPagina));

  // Prev
  const prevLi = document.createElement('li');
  prevLi.className = 'page-item' + (pagina === 1 ? ' disabled' : '');
  const prevA = document.createElement('a');
  prevA.className = 'page-link';
  prevA.href = '#';
  prevA.setAttribute('aria-label', 'Previous');
  prevA.innerHTML = '<span aria-hidden="true">&laquo;</span>';
  prevA.onclick = function(e){
    e.preventDefault();
    if(pagina > 1) { pagina--; renderTabla(); }
  };
  prevLi.appendChild(prevA);
  pagUl.appendChild(prevLi);

  // Números
  for(let i=1; i<=totalPaginas; i++) {
    const li = document.createElement('li');
    li.className = 'page-item' + (i === pagina ? ' active' : '');
    const a = document.createElement('a');
    a.className = 'page-link';
    a.href = '#';
    a.textContent = i;
    a.onclick = function(e){
      e.preventDefault();
      pagina = i;
      renderTabla();
    };
    li.appendChild(a);
    pagUl.appendChild(li);
  }

  // Next
  const nextLi = document.createElement('li');
  nextLi.className = 'page-item' + (pagina === totalPaginas ? ' disabled' : '');
  const nextA = document.createElement('a');
  nextA.className = 'page-link';
  nextA.href = '#';
  nextA.setAttribute('aria-label', 'Next');
  nextA.innerHTML = '<span aria-hidden="true">&raquo;</span>';
  nextA.onclick = function(e){
    e.preventDefault();
    if(pagina < totalPaginas) { pagina++; renderTabla(); }
  };
  nextLi.appendChild(nextA);
  pagUl.appendChild(nextLi);
}

// Filtros individuales por columna
document.querySelectorAll('.consulta-cap-input').forEach(inp=>{
  inp.addEventListener('input', e=>{
    filtros[inp.dataset.col] = inp.value;
    pagina = 1;
    renderTabla();
  });
});

// Selección individual de filas
document.getElementById('tabla').addEventListener('change', function(e){
  if(e.target.classList.contains('selectRow')){
    const idStr = String(e.target.value);
    if(e.target.checked) {
      seleccionados.add(idStr);
    } else {
      seleccionados.delete(idStr);
    }
    renderTabla();
  }
});

// Selección de todos en página
document.getElementById('selectAll').addEventListener('change', function(e){
  const filtrados = filtrarDatos();
  const inicio = (pagina-1)*porPagina;
  const fin = Math.min(inicio+porPagina, filtrados.length);
  for(let i=inicio; i<fin; i++){
    const idStr = String(filtrados[i].id);
    if(e.target.checked) seleccionados.add(idStr);
    else seleccionados.delete(idStr);
  }
  renderTabla();
});

// Limpiar filtros
document.getElementById('clearFiltersBtn').addEventListener('click', function(){
  filtros = {};
  document.querySelectorAll('.consulta-cap-input').forEach(inp=>{
    inp.value = '';
  });
  pagina = 1;
  renderTabla();
});

// Select de límite
document.getElementById('limitSelect').addEventListener('change', function(e){
  porPagina = parseInt(e.target.value,10);
  pagina = 1;
  renderTabla();
});

// Dropdown logic
const downloadBtn = document.getElementById('downloadBtn');
const menu = document.getElementById('dropdownContent');
downloadBtn.addEventListener('click',function(e){
  e.stopPropagation();
  menu.classList.toggle('open');
});
document.addEventListener('click',function(e){
  if(menu.classList.contains('open')) menu.classList.remove('open');
});
menu.addEventListener('click', function(e){
  e.stopPropagation();
});

// Ordenar columnas
function renderSortIcons() {
  document.querySelectorAll('th.sortable .icon-sort').forEach(icon => {
    icon.classList.remove('active', 'fa-sort-amount-up', 'fa-sort-amount-down', 'fa-filter');
    if (sortCol === icon.dataset.col) {
      icon.classList.add('active');
      if (sortDir === 'asc') {
        icon.classList.add('fa-sort-amount-up');
      } else {
        icon.classList.add('fa-sort-amount-down');
      }
    } else {
      icon.classList.add('fa-filter');
    }
  });
}
document.querySelectorAll('th.sortable .icon-sort').forEach(icon => {
  icon.addEventListener('click', function(e){
    const col = icon.dataset.col;
    if (sortCol === col) {
      sortDir = sortDir === 'asc' ? 'desc' : 'asc';
    } else {
      sortCol = col;
      sortDir = 'asc';
    }
    renderTabla();
  });
});

// EXPORTA A EXCEL EN EL FORMATO QUE PIDES
function descargarXLSX(tipo){
  let filas;
  if(tipo === 'all') filas = datos;
  else if(tipo === 'filtered') filas = filtrarDatos();
  else if(tipo === 'selected') filas = datos.filter(row=>seleccionados.has(String(row.id)));
  else return;

  let arr = [
    [
      'id','Capacitador','Cédula','Tema','Lugar','Actividad','Proceso','Fecha',
      'hora inicio','hora final','duracion total','observaciones','total asistentes',
      'aprovados','no aprovados','creado por','editado por'
    ]
  ];
  filas.forEach(row=>{
    arr.push([
      row.id,
      row.capacitador,
      row.cedula,
      row.tema,
      row.lugar,
      row.actividad,
      row.proceso,
      row.fecha,
      row.hora_inicio || '',
      row.hora_final || '',
      row.duracion_total || '',
      row.observaciones || '',
      row.total_asistentes || 0,
      row.aprobados || '',
      row.no_aprobados || '',
      row.creado_por_nombre || 'No disponible',
      row.editado_por_nombre || 'No editado'
    ]);
  });

  let ws = XLSX.utils.aoa_to_sheet(arr);
  let wb = XLSX.utils.book_new();
  XLSX.utils.book_append_sheet(wb, ws, "Capacitaciones");
  XLSX.writeFile(wb, `capacitaciones_${tipo}.xlsx`);
}

// Dropdown options
document.getElementById('downloadAll').addEventListener('click', function(e){
  e.preventDefault();
  descargarXLSX('all');
  menu.classList.remove('open');
});
document.getElementById('downloadFiltered').addEventListener('click', function(e){
  e.preventDefault();
  descargarXLSX('filtered');
  menu.classList.remove('open');
});
document.getElementById('downloadSelected').addEventListener('click', function(e){
  e.preventDefault();
  if(seleccionados.size===0) return;
  descargarXLSX('selected');
  menu.classList.remove('open');
});