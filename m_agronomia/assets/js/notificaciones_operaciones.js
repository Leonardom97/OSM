(function () {
  'use strict';

  // Map de nombres bonitos
  const entityPretty = {
    cosecha_fruta: 'Cosecha Fruta',
    mantenimientos: 'Mantenimientos',
    oficios_varios_palma: 'Oficios Varios Palma',
    fertilizacion_organica: 'Fertilización Orgánica',
    monitoreos_generales: 'Monitoreos Generales',
    ct_cal_sanidad: 'Calidad Sanidad',
    monitoreo_trampas: 'Monitoreo Trampas',
    nivel_freatico: 'Nivel Freático',
    ct_cal_labores: 'Calidad Labores',
    reporte_lote_monitoreo: 'Reporte Lote Monitoreo',
    ct_cal_trampas: 'Calidad Trampas',
    compactacion: 'Compactación',
    plagas: 'Plagas'
  };

  // Detecta la entidad/tab según sección visible
  const sectionToEntity = {
    'tab-content-capacitaciones': 'cosecha_fruta',
    'tab-content-reuniones': 'mantenimientos',
    'tab-content-asistencias': 'oficios_varios_palma',
    'tab-content-inventarios': 'fertilizacion_organica',
    'tab-content-monitoreos-generales': 'monitoreos_generales',
    'tab-content-ct-cal-sanidad': 'ct_cal_sanidad',
    'tab-content-monitoreo-trampas': 'monitoreo_trampas',
    'tab-content-nivel-freatico': 'nivel_freatico',
    'tab-content-ct-cal-labores': 'ct_cal_labores',
    'tab-content-reporte-lote-monitoreo': 'reporte_lote_monitoreo',
    'tab-content-ct-cal-trampas': 'ct_cal_trampas',
    'tab-content-compactacion': 'compactacion',
    'tab-content-plagas': 'plagas'
  };

  const btn = document.getElementById('noti-admin');
  const badge = document.getElementById('noti-badge');
  const modalEl = document.getElementById('modal-pendientes-mantenimientos');
  const cont = document.getElementById('pendientes-mantenimientos');
  if (!btn || !badge || !modalEl || !cont) return;
  let currentEntidad = null;

  function escapeHtml(v) {
    if (v == null) return '';
    return String(v).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
  }
  function norm(s){ return (s==null?'':String(s)).toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g,'').trim(); }

  function setModalTitle(entidad) {
    const h = modalEl.querySelector('.modal-title'); if(!h) return;
    const pretty = entityPretty[entidad] || entidad || '';
    h.innerHTML = '<i class="fas fa-bell"></i> Pendientes de aprobación' + (pretty ? ' ('+escapeHtml(pretty)+')' : '');
  }

  function idColForEntidad(entidad){
    switch((entidad||'').toLowerCase()){
      case 'mantenimientos': return 'mantenimientos_id';
      case 'monitoreos_generales': return 'monitoreos_generales_id';
      case 'oficios_varios_palma': return 'oficios_varios_palma_id';
      case 'cosecha_fruta': return 'cosecha_fruta_id';
      case 'fertilizacion_organica': return 'fertilizacion_organica_id';
      case 'ct_cal_sanidad': return 'ct_cal_sanidad_id';
      case 'monitoreo_trampas': return 'monitoreo_trampas_id';
      case 'nivel_freatico': return 'nivel_freatico_id';
      case 'ct_cal_labores': return 'ct_cal_labores_id';
      case 'reporte_lote_monitoreo': return 'reporte_lote_monitoreo_id';
      case 'ct_cal_trampas': return 'ct_cal_trampas_id';
      case 'compactacion': return 'compactacion_id';
      case 'plagas': return 'plagas_id';
      default: return (entidad||'')+'_id';
    }
  }

  function detectEntidadFromVisibleSection(){
    var centerY = window.innerHeight/2, best=null, bestDist=Infinity;
    Object.keys(sectionToEntity).forEach(id=>{
      const el=document.getElementById(id); if(!el) return;
      const style = window.getComputedStyle(el);
      if(style.display==='none'||style.visibility==='hidden'||style.opacity==='0') return;
      const r=el.getBoundingClientRect(); const mid=(r.top+r.bottom)/2; const dist=Math.abs(mid-centerY);
      if(dist<bestDist){ bestDist=dist; best=sectionToEntity[id]; }
    });
    return best || currentEntidad || 'mantenimientos';
  }

  function renderTablaDetallada(columnas, filas, entidad, fuente, idCol){
    const cols=Array.isArray(columnas)?columnas.filter(c=>norm(c)!=='acciones'):[];
    const rows=Array.isArray(filas)?filas:[];
    const showActions = true;

    if(cols.length===0 || rows.length===0){
      cont.innerHTML='<div class="alert alert-secondary mb-0">No hay registros pendientes de aprobación.</div>';
      return;
    }

    const thead='<thead class="table-light"><tr>'+
      cols.map(c=>'<th>'+escapeHtml(c)+'</th>').join('')+
      (showActions?'<th>Acciones</th>':'')+
      '</tr></thead>';

    const idKey=idCol || idColForEntidad(entidad);

    const tbody='<tbody>'+
      rows.map(r=>{
        const idVal=r && r[idKey]!=null?String(r[idKey]):'';
        const tds=cols.map(c=>'<td>'+escapeHtml(r? r[c] : '')+'</td>').join('');
        const acciones=showActions
          ? '<td style="white-space:nowrap;">'+
              '<button class="btn btn-sm btn-success btn-aprobar" data-id="'+escapeHtml(idVal)+'" data-entidad="'+escapeHtml(entidad)+'"><i class="fa fa-check"></i></button>'+
              '<button class="btn btn-sm btn-outline-danger btn-rechazar" data-id="'+escapeHtml(idVal)+'" data-entidad="'+escapeHtml(entidad)+'" style="margin-left:6px;"><i class="fa fa-times"></i></button>'+
            '</td>'
          : '';
        return '<tr>'+tds+acciones+'</tr>';
      }).join('')+
      '</tbody>';

    cont.innerHTML='<div class="table-responsive"><table class="table table-sm table-striped align-middle">'+thead+tbody+'</table>'+
      (fuente?'<div class="text-muted small mt-2">Fuente: '+escapeHtml(fuente)+'</div>':'')+'</div>';

    wireRowActions(cont, entidad);
  }

  function wireRowActions(scopeEl, entidad){
    scopeEl.querySelectorAll('.btn-aprobar').forEach(b=>{
      b.onclick=function(){
        const id=b.getAttribute('data-id');
        const url='assets/php/aprobar_'+entidad+'.php';
        if(!id||!url) return;
        b.disabled=true;
        const payload={}; payload[idColForEntidad(entidad)]=String(id);
        fetch(url, {
          method: 'POST',
          headers: { 'Content-Type':'application/json' },
          body: JSON.stringify(payload)
        })
        .then(resp=>resp.json())
        .then(r=>{
          if(r && r.success){
            loadPendientes();
            alert('Registro aprobado.');
          } else {
            alert('No se pudo aprobar. '+(r && (r.message||r.error) ? (r.message||r.error) : ''));
          }
        })
        .catch(e=>{
          alert('Error al aprobar: '+(e.message||''));
        })
        .finally(()=>{ b.disabled=false; });
      };
    });
    scopeEl.querySelectorAll('.btn-rechazar').forEach(b=>{
      b.onclick=function(){
        if(!confirm('¿Deseas rechazar este registro?')) return;
        const id=b.getAttribute('data-id');
        const url='assets/php/rechazar_'+entidad+'.php';
        if(!id||!url) return;
        b.disabled=true;
        const payload={}; payload[idColForEntidad(entidad)]=String(id);
        fetch(url, {
          method: 'POST',
          headers: { 'Content-Type':'application/json' },
          body: JSON.stringify(payload)
        })
        .then(resp=>resp.json())
        .then(r=>{
          if(r && r.success){
            loadPendientes();
            alert('Registro rechazado.');
          } else {
            alert('No se pudo rechazar. '+(r && (r.message||r.error) ? (r.message||r.error) : ''));
          }
        })
        .catch(e=>{
          alert('Error al rechazar: '+(e.message||''));
        })
        .finally(()=>{ b.disabled=false; });
      };
    });
  }

  function loadPendientes(){
    const ent = currentEntidad || detectEntidadFromVisibleSection();
    const url = 'assets/php/pendientes_operaciones.php?entidad=' + encodeURIComponent(ent) + '&page=1&pageSize=500';
    fetch(url)
      .then(r=>r.json())
      .then(j=>{
        const idCol = j.idCol || idColForEntidad(ent);
        renderTablaDetallada(j.columnas, j.datos, ent, '', idCol);
      })
      .catch(()=>{
        cont.innerHTML='<div class="alert alert-warning mb-0">No se pudieron cargar los pendientes. Intenta nuevamente.</div>';
      });
  }

  function setEntidad(entidad){
    const e=(entidad||'').toLowerCase();
    if(e===currentEntidad) return;
    currentEntidad=e;
    setModalTitle(currentEntidad);
  }

  btn.addEventListener('click', function(){
    setEntidad(detectEntidadFromVisibleSection());
    loadPendientes();
    if(modalEl && window.bootstrap && window.bootstrap.Modal){
      const modal=window.bootstrap.Modal.getOrCreateInstance(modalEl);
      modal.show();
    }
  });

})();