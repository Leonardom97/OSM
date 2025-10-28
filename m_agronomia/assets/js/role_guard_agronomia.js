// Opcional: Si quieres restringir el módulo a admin+aux y ocultar para otros.
document.addEventListener('DOMContentLoaded',()=>{
  function roles(){
    const set=new Set();
    const norm=s=>String(s||'').toLowerCase().trim();
    const b=document.body||document.querySelector('body');
    if(b)(b.getAttribute('data-role')||'').split(',').map(norm).filter(Boolean).forEach(r=>set.add(r));
    const meta=document.querySelector('meta[name="user-roles"]');
    if(meta?.content) meta.content.split(',').map(norm).filter(Boolean).forEach(r=>set.add(r));
    const gr=(window.USER_ROLES||window.ROLES||window.USER_ROLE||'');
    (Array.isArray(gr)?gr:String(gr).split(',')).map(norm).filter(Boolean).forEach(r=>set.add(r));
    return Array.from(set);
  }
  const r=roles();
  const isAdmin=r.includes('administrador');
  const isAux=r.some(x=>x.includes('aux'));
  if(isAdmin||isAux) return;
  // Oculta módulo
  const bell=document.getElementById('noti-admin'); if(bell) bell.remove();
  const badge=document.getElementById('noti-badge'); if(badge) badge.remove();
  const sections=[
    'tab-content-capacitaciones','tab-content-reuniones','tab-content-asistencias',
    'tab-content-inventarios','tab-content-monitoreos-generales'
  ];
  sections.forEach(id=>{const el=document.getElementById(id); if(el) el.remove();});
});