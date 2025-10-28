// ed_formulario.js - versión completa con mapeo legible de estados y mejoras mínimas

let page = 1;
let limit = 10;
let search = "";

// Helper para mostrar etiquetas legibles del estado
function formatEstado(val) {
    const map = {
        'aprobo': 'aprobo',
        'no_aprobo': 'no aprobo',
        'no_aplica': 'no aplica'
    };
    return map[val] || val || '';
}

// Cargar tabla principal con filtros y paginado
function cargarTabla() {
    fetch(`assets/php/ed_formulario_api.php?action=listar&limit=${limit}&page=${page}&search=${encodeURIComponent(search)}`)
        .then(r => r.json())
        .then(data => {
            const tbody = document.querySelector("#dataTableCapacitaciones tbody");
            tbody.innerHTML = '';
            data.rows.forEach(row => {
                tbody.innerHTML += `
                    <tr>
                        <td class="text-center">${row.id}</td>
                        <td class="text-center">${row.tema}</td>
                        <td class="text-center">${row.responsable_nombre}</td>
                        <td class="text-center">${row.responsable_cedula}</td>
                        <td class="text-center">${row.fecha}</td>
                        <td class="text-center">${row.asistentes}</td>
                        <td class="text-center">
                            <button class="btn btn-primary bt_editar" type="button" data-id="${row.id}" data-bs-toggle="modal" data-bs-target="#modal-erc"><i class="far fa-edit"></i></button>
                            <button class="btn btn-danger bt_eliminar" type="button" data-id="${row.id}"><i class="far fa-trash-alt"></i></button>
                        </td>
                    </tr>
                `;
            });

            const infoEl = document.getElementById('dataTable_info');
            if (infoEl) {
                infoEl.textContent =
                    `Mostrando ${((page-1)*limit+1)} a ${Math.min(page*limit, data.total)} de ${data.total}`;
            }
            const pag = document.querySelector('.pagination');
            pag.innerHTML = '';
            let startPage = Math.max(1, page - 4);
            let endPage = Math.min(data.pages, startPage + 9);
            for (let i = startPage; i <= endPage; i++) {
                pag.innerHTML += `
                    <li class="page-item ${i === page ? 'active' : ''}">
                        <a class="page-link" href="#">${i}</a>
                    </li>
                `;
            }
        });
}

// Paginación
document.addEventListener('click', function(e) {
    if (e.target.classList && e.target.classList.contains('page-link')) {
        const text = e.target.textContent;
        if (!isNaN(parseInt(text))) {
            page = parseInt(text);
            cargarTabla();
        }
    }
});

// Filtro cantidad
document.addEventListener('change', function(e) {
    if (e.target.matches('#dataTable_length select')) {
        limit = parseInt(e.target.value);
        page = 1;
        cargarTabla();
    }
});

// Búsqueda en tabla
document.addEventListener('input', function(e) {
    if (e.target && e.target.id === 'buscar-rc') {
        search = e.target.value;
        page = 1;
        cargarTabla();
    }
});

// Botones editar y eliminar
document.addEventListener('click', function(e) {
    if (e.target.closest && e.target.closest('.bt_editar')) {
        const id = e.target.closest('.bt_editar').dataset.id;
        cargarModal(id);
    }
    if (e.target.closest && e.target.closest('.bt_eliminar')) {
        const id = e.target.closest('.bt_eliminar').dataset.id;
        if (confirm("¿Eliminar registro y asistentes?")) {
            fetch("assets/php/ed_formulario_api.php", {
                method: "POST",
                body: new URLSearchParams({action: "eliminar", id})
            }).then(r => r.json()).then(() => cargarTabla());
        }
    }
});

cargarTabla();

// Modal: carga datos y selects dinámicos
function cargarModal(id) {
    fetch(`assets/php/ed_formulario_api.php?action=leer_formulario&id=${id}`)
        .then(r => r.json())
        .then(data => {
            document.querySelector('#modal-erc h4.mb-3').textContent = `Capacitación ID ${id}`;
            
            // Display tracking information
            const trackingDiv = document.getElementById('tracking-info');
            const creadorSpan = document.getElementById('creador-nombre');
            const editorSpan = document.getElementById('editor-nombre');
            
            let hasTracking = false;
            if (data.creador) {
                const creadorNombre = `${data.creador.nombre1 || ''} ${data.creador.apellido1 || ''}`.trim();
                creadorSpan.textContent = creadorNombre || 'No disponible';
                hasTracking = true;
            } else {
                creadorSpan.textContent = 'No disponible';
            }
            
            if (data.editor) {
                const editorNombre = `${data.editor.nombre1 || ''} ${data.editor.apellido1 || ''}`.trim();
                editorSpan.textContent = editorNombre || 'No editado';
                hasTracking = true;
            } else {
                editorSpan.textContent = 'No editado';
            }
            
            if (hasTracking) {
                trackingDiv.style.display = 'block';
            } else {
                trackingDiv.style.display = 'none';
            }
            
            fillSelect('ed-proceso', data.procesos, data.formulario.id_proceso);
            fillSelect('ed-lugar', data.lugares, data.formulario.id_lugar);
            fillSelect('edt-actividad', data.actividades, data.formulario.id_tipo_actividad);
            fillSelect('ed-tema', data.temas, data.formulario.id_tema);

            document.getElementById('ed-cedula-r').value = data.responsable?.cedula || '';
            // Si quieres guardar el ID para editar, lo guardas en data-atributo
            document.getElementById('ed-cedula-r').dataset.id_usuario = data.formulario.id_usuario;
            document.getElementById('ed-nombre-r').value = `${data.responsable?.nombre1||''} ${data.responsable?.nombre2||''} ${data.responsable?.apellido1||''} ${data.responsable?.apellido2||''}`;
            document.getElementById('ed-h-inico').value = data.formulario.hora_inicio || '';
            document.getElementById('ed-h-final').value = data.formulario.hora_final || '';
            document.getElementById('ed-fecha').value = data.formulario.fecha || '';
            document.getElementById('ed-observaciones').value = data.formulario.observaciones || '';
            
            // Handle file attachment
            window.currentFormularioId = id;
            loadAttachedFile(id);

            // Tabla asistentes
            const tbody = document.querySelector('#dataTableAsistentes tbody');
            tbody.innerHTML = '';
            data.asistentes.forEach(a => {
                tbody.innerHTML += `
                    <tr>
                        <td>${a.id}</td>
                        <td>${a.nombre}</td>
                        <td>${a.cedula}</td>
                        <td>${a.empresa}</td>
                        <td>${formatEstado(a.estado_aprovacion)}</td>
                        <td>
                            <button class="btn btn-danger bt_eliminar_asistente" type="button" data-id="${a.id}">
                                <i class="far fa-trash-alt"></i>
                            </button>
                        </td>
                    </tr>
                `;
            });

            const headerSpan = document.querySelector('.card-header .fw-bold span');
            if (headerSpan) {
                headerSpan.textContent = `Lista personal Capacitado (${data.asistentes.length})`;
            }
        });
}

// Helper para selects dinámicos
function fillSelect(selectId, options, selected) {
    const select = document.getElementById(selectId);
    if (!select) return;
    select.innerHTML = '<option value="">Seleccionar</option>';
    options.forEach(opt => {
        select.innerHTML += `<option value="${opt.id}"${opt.id == selected ? ' selected' : ''}>${opt.nombre}</option>`;
    });
}

// Buscar colaborador por cédula en el modal (solo muestra si situación es válida)
document.addEventListener('click', function(e) {
    if (e.target && e.target.id === 'bt-ag-capacitado-1') {
        const cedula = document.getElementById('ced-cap-erc').value;
        fetch(`assets/php/ed_formulario_api.php?action=buscar_colaborador&cedula=${cedula}`)
            .then(r => r.json())
            .then(data => {
                if (data.colaborador) {
                    const c = data.colaborador;
                    document.getElementById('nom-capacitado-erc').value =
                      `${c.ac_nombre1} ${c.ac_nombre2} ${c.ac_apellido1} ${c.ac_apellido2}`.replace(/\s+/g,' ').trim();
                } else {
                    alert("Colaborador no encontrado o situación inválida");
                }
            });
    }
});

// Agregar asistente al formulario (solo agrega si situación es válida y estado está seleccionado)
document.addEventListener('click', function(e) {
    if (e.target && e.target.id === 'bt-ag-capacitado-erc') {
        const modalTitle = document.querySelector('#modal-erc h4.mb-3').textContent || '';
        const parts = modalTitle.trim().split(/\s+/);
        const id_formulario = parts[parts.length-1]; // último elemento debería ser el id
        const cedula = document.getElementById('ced-cap-erc').value;
        const estado_aprovacion = document.getElementById('s-aprobacion-erc').value;
        if (!estado_aprovacion) {
            alert('Debes seleccionar estado de aprobación');
            return;
        }
        fetch("assets/php/ed_formulario_api.php", {
            method: "POST",
            body: new URLSearchParams({
                action: "agregar_asistente",
                id_formulario,
                cedula,
                estado_aprovacion
            })
        }).then(r => r.json()).then(data => {
            if (data.error) {
                alert(data.error);
            } else {
                cargarModal(id_formulario);
            }
        });
    }
});

document.addEventListener('click', function(e) {
    if (e.target && e.target.closest('.bt_eliminar_asistente')) {
        const btn = e.target.closest('.bt_eliminar_asistente');
        const id = btn.dataset.id;
        fetch("assets/php/ed_formulario_api.php", {
            method: "POST",
            body: new URLSearchParams({action: "eliminar_asistente", id})
        }).then(r => r.json()).then(() => {
            const modalTitle = document.querySelector('#modal-erc h4.mb-3').textContent || '';
            const parts = modalTitle.trim().split(/\s+/);
            const id_formulario = parts[parts.length-1];
            cargarModal(id_formulario);
        });
    }
});

// Guardar cambios del formulario principal y cerrar el modal
document.addEventListener('click', function(e) {
    if (e.target && e.target.id === 'guardar-erc') {
        const idTitle = document.querySelector('#modal-erc h4.mb-3').textContent || '';
        const parts = idTitle.trim().split(/\s+/);
        const id = parts[parts.length-1];
        const id_proceso = document.getElementById('ed-proceso').value;
        const id_lugar = document.getElementById('ed-lugar').value;
        const id_tipo_actividad = document.getElementById('edt-actividad').value;
        const id_tema = document.getElementById('ed-tema').value;
        const hora_inicio = document.getElementById('ed-h-inico').value;
        const hora_final = document.getElementById('ed-h-final').value;
        const fecha = document.getElementById('ed-fecha').value;
        const observaciones = document.getElementById('ed-observaciones').value;
        const id_usuario = document.getElementById('ed-cedula-r').dataset.id_usuario || '';

        fetch("assets/php/ed_formulario_api.php", {
            method: "POST",
            body: new URLSearchParams({
                action: "actualizar_formulario",
                id,
                id_proceso,
                id_lugar,
                id_tipo_actividad,
                id_tema,
                hora_inicio,
                hora_final,
                fecha,
                observaciones,
                id_usuario
            })
        }).then(r => r.json()).then(data => {
            if (data.ok) {
                const modalEl = document.getElementById('modal-erc');
                const modalInstance = bootstrap.Modal.getInstance(modalEl);
                if(modalInstance) modalInstance.hide();
                cargarTabla();
            } else {
                alert(data.error || 'Error al guardar');
            }
        });
    }
});

// File handling functions
function loadAttachedFile(formularioId) {
    fetch(`assets/php/file_upload_api.php?action=get_file&formulario_id=${formularioId}`)
        .then(res => res.json())
        .then(data => {
            const currentFileDiv = document.getElementById('current-file');
            const uploadFileDiv = document.getElementById('upload-file');
            
            if (data.success && data.exists) {
                // Show current file
                document.getElementById('file-name').textContent = data.filename;
                document.getElementById('file-link').href = '../' + data.filepath;
                if (currentFileDiv) currentFileDiv.style.display = 'block';
                if (uploadFileDiv) uploadFileDiv.style.display = 'none';
            } else {
                // Show upload section
                if (currentFileDiv) currentFileDiv.style.display = 'none';
                if (uploadFileDiv) uploadFileDiv.style.display = 'block';
            }
        })
        .catch(err => {
            console.error('Error loading file:', err);
            // Show upload section on error
            if (document.getElementById('current-file')) document.getElementById('current-file').style.display = 'none';
            if (document.getElementById('upload-file')) document.getElementById('upload-file').style.display = 'block';
        });
}

function uploadFileToForm() {
    const fileInput = document.getElementById('ed-archivo');
    const file = fileInput.files[0];
    
    if (!file) {
        alert('Por favor seleccione un archivo');
        return;
    }
    
    // Validate file size (2MB max)
    const maxSize = 2 * 1024 * 1024;
    if (file.size > maxSize) {
        alert('El archivo excede el tamaño máximo de 2MB');
        return;
    }
    
    // Validate file type
    const allowedTypes = ['application/pdf', 'image/jpeg', 'image/png', 'image/gif'];
    if (!allowedTypes.includes(file.type)) {
        alert('Tipo de archivo no permitido. Solo se aceptan PDF e imágenes');
        return;
    }
    
    const formData = new FormData();
    formData.append('file', file);
    formData.append('formulario_id', window.currentFormularioId);
    formData.append('action', 'upload_file');
    
    fetch('assets/php/file_upload_api.php', {
        method: 'POST',
        body: formData
    })
    .then(res => res.json())
    .then(data => {
        if (data.success) {
            alert('Archivo subido exitosamente');
            loadAttachedFile(window.currentFormularioId);
        } else {
            alert('Error: ' + data.message);
        }
    })
    .catch(err => {
        console.error('Error uploading file:', err);
        alert('Error al subir el archivo');
    });
}

function deleteAttachedFile() {
    if (!confirm('¿Está seguro que desea eliminar el archivo adjunto?')) {
        return;
    }
    
    const formData = new FormData();
    formData.append('formulario_id', window.currentFormularioId);
    formData.append('action', 'delete_file');
    
    fetch('assets/php/file_upload_api.php', {
        method: 'POST',
        body: formData
    })
    .then(res => res.json())
    .then(data => {
        if (data.success) {
            alert('Archivo eliminado exitosamente');
            loadAttachedFile(window.currentFormularioId);
        } else {
            alert('Error: ' + data.message);
        }
    })
    .catch(err => {
        console.error('Error deleting file:', err);
        alert('Error al eliminar el archivo');
    });
}