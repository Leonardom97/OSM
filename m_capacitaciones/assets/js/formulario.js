// formulario.js - versión actualizada para manejar estados únicos y mostrar etiquetas legibles

document.addEventListener('DOMContentLoaded', function() {
    cargarSelect('proceso', 'cap_proceso', 'proceso');
    cargarSelect('lugar-1', 'cap_lugar', 'lugar');
    cargarSelect('t-actividad', 'cap_tipo_actividad', 'nombre');
    cargarSelect('tema-a', 'cap_tema', 'nombre');

    window.asistentes = [];

    document.getElementById('bt-responsable').addEventListener('click', function() {
        let cedula = document.getElementById('cedula').value.trim();
        if (!cedula) return alert('Ingrese la cédula del responsable');
        fetch('assets/php/formulario_api.php?action=get_usuario&cedula=' + encodeURIComponent(cedula))
        .then(res => res.json())
        .then(usuario => {
            if (usuario && usuario.nombre1) {
                document.getElementById('nombre-r').value = `${usuario.nombre1} ${usuario.nombre2} ${usuario.apellido1} ${usuario.apellido2}`.replace(/\s+/g, ' ').trim();
            } else {
                document.getElementById('nombre-r').value = '';
                alert('Usuario no encontrado');
            }
        });
    });

    document.getElementById('bt-ag-capacitado-1').addEventListener('click', function() {
        let cedula = document.getElementById('ced-capacitado').value.trim();
        if (!cedula) return alert('Ingrese la cédula del asistente');
        fetch('assets/php/formulario_api.php?action=get_colaborador&cedula=' + encodeURIComponent(cedula))
        .then(res => res.json())
        .then(col => {
            if (col && col.ac_nombre1) {
                let nombre = [col.ac_nombre1, col.ac_nombre2, col.ac_apellido1, col.ac_apellido2].filter(Boolean).join(' ');
                document.getElementById('nom-capacitado').value = nombre;

                // Obtener relaciones (empresa, cargo, area, etc.)
                fetch('assets/php/formulario_api.php?action=get_colaborador_relations' +
                      '&ac_empresa=' + encodeURIComponent(col.ac_empresa) +
                      '&ac_id_cargo=' + encodeURIComponent(col.ac_id_cargo) +
                      '&ac_id_area=' + encodeURIComponent(col.ac_id_area) +
                      '&ac_sub_area=' + encodeURIComponent(col.ac_sub_area) +
                      '&ac_rango=' + encodeURIComponent(col.ac_rango) +
                      '&ac_id_situacion=' + encodeURIComponent(col.ac_id_situación))
                .then(r => r.json())
                .then(rel => {
                    col.empresa_nombre = rel.empresa;
                    col.cargo_nombre = rel.cargo;
                    col.area_nombre = rel.area;
                    col.sub_area_nombre = rel.sub_area;
                    col.rango_nombre = rel.rango;
                    col.situacion_nombre = rel.situacion;
                    window.colaborador_modal = col;
                });
            } else {
                document.getElementById('nom-capacitado').value = '';
                window.colaborador_modal = null;
                alert('Colaborador no encontrado');
            }
        });
    });

    document.getElementById('bt-ag-capacitado-2').addEventListener('click', function(e) {
        e.preventDefault();
        let estado = document.getElementById('s-aprobacion').value;
        let col = window.colaborador_modal;

        if (!col) return alert('Busque un colaborador antes de agregar.');
        if (!estado) return alert('Seleccione el estado de aprobación.');

        let asistente = {
            cedula: col.ac_cedula,
            nombre: [col.ac_nombre1, col.ac_nombre2, col.ac_apellido1, col.ac_apellido2].filter(Boolean).join(' '),
            estado_aprovacion: estado,
            empresa: col.empresa_nombre,
            cargo: col.cargo_nombre,
            area: col.area_nombre,
            sub_area: col.sub_area_nombre,
            rango: col.rango_nombre,
            situacion: col.situacion_nombre
        };
        if (window.asistentes.some(a => a.cedula === asistente.cedula)) {
            return alert('Este asistente ya fue agregado.');
        }
        window.asistentes.push(asistente);
        actualizarTablaAsistentes();
        document.getElementById('asistentes-c').value = window.asistentes.length;
        document.getElementById('count-asistentes').textContent = window.asistentes.length;
        document.getElementById('ced-capacitado').value = '';
        document.getElementById('nom-capacitado').value = '';
        document.getElementById('s-aprobacion').value = '';
    });

    document.getElementById('form-capacitacion').addEventListener('submit', function(e) {
        e.preventDefault();

        let campos = [
            { id: 'proceso', txt: 'Seleccione el proceso.' },
            { id: 'lugar-1', txt: 'Seleccione el lugar.' },
            { id: 'cedula', txt: 'Ingrese la cédula del responsable.' },
            { id: 'nombre-r', txt: 'Busque el responsable.' },
            { id: 't-actividad', txt: 'Seleccione el tipo de actividad.' },
            { id: 'tema-a', txt: 'Seleccione el tema.' },
            { id: 'h-inico', txt: 'Ingrese la hora de inicio.' },
            { id: 'h-final', txt: 'Ingrese la hora de finalización.' },
            { id: 'fecha', txt: 'Ingrese la fecha.' }
        ];
        for (let campo of campos) {
            let el = document.getElementById(campo.id);
            if (!el || !el.value.trim()) {
                el && el.focus();
                return alert(campo.txt);
            }
        }
        if (window.asistentes.length === 0) {
            return alert('Debe agregar al menos un asistente.');
        }

        // Validate file if present
        const fileInput = document.getElementById('archivo');
        const file = fileInput.files[0];
        
        if (file) {
            // Validate file size (2MB max)
            const maxSize = 2 * 1024 * 1024;
            if (file.size > maxSize) {
                return alert('El archivo excede el tamaño máximo de 2MB');
            }
            
            // Validate file type
            const allowedTypes = ['application/pdf', 'image/jpeg', 'image/png', 'image/gif'];
            if (!allowedTypes.includes(file.type)) {
                return alert('Tipo de archivo no permitido. Solo se aceptan PDF e imágenes');
            }
        }

        let data = {
            proceso: document.getElementById('proceso').value,
            lugar: document.getElementById('lugar-1').value,
            responsable_cedula: document.getElementById('cedula').value,
            responsable_nombre: document.getElementById('nombre-r').value,
            tipo_actividad: document.getElementById('t-actividad').value,
            tema: document.getElementById('tema-a').value,
            hora_inicio: document.getElementById('h-inico').value,
            hora_final: document.getElementById('h-final').value,
            fecha: document.getElementById('fecha').value,
            observaciones: document.getElementById('observaciones').value,
            asistentes: window.asistentes
        };

        fetch('assets/php/formulario_api.php?action=save_formulario', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
        })
        .then(res => res.json())
        .then(resp => {
            if (resp.success && resp.id_formulario) {
                // If there's a file, upload it
                if (file) {
                    uploadFile(resp.id_formulario, file, function(uploadSuccess) {
                        if (uploadSuccess) {
                            mostrarExito(resp.id_formulario);
                        } else {
                            alert('Formulario guardado pero hubo un error al subir el archivo');
                            mostrarExito(resp.id_formulario);
                        }
                    });
                } else {
                    mostrarExito(resp.id_formulario);
                }
            } else {
                alert('Error al guardar: ' + (resp.error || ''));
            }
        });
    });
});

function cargarSelect(selectId, tabla, col) {
    fetch('assets/php/formulario_api.php?action=get_select&tabla=' + tabla + '&col=' + col)
        .then(res => res.json())
        .then(opciones => {
            let select = document.getElementById(selectId);
            select.innerHTML = `<option value="">Seleccione...</option>`;
            opciones.forEach(o => {
                // o[col] puede no existir si el nombre de columna es distinto; usar fallback
                const label = o[col] ?? (o.nombre ?? '');
                select.innerHTML += `<option value="${o.id}">${label}</option>`;
            });
        });
}

// Helper para mostrar etiquetas legibles del estado
function formatEstado(val) {
    const map = {
        'aprobo': 'aprobo',
        'no_aprobo': 'no aprobo',
        'no_aplica': 'no aplica'
    };
    return map[val] || val || '';
}

function actualizarTablaAsistentes() {
    let tbody = document.querySelector('#dataTable tbody');
    if (!tbody) return;
    tbody.innerHTML = '';
    window.asistentes.forEach((a, i) => {
        tbody.innerHTML += `
            <tr>
                <td>${i+1}</td>
                <td>${a.nombre}</td>
                <td>${a.cedula}</td>
                <td>${a.empresa}</td>
                <td>${formatEstado(a.estado_aprovacion)}</td>
                <td>
                    <button class="btn btn-danger" onclick="eliminarAsistente(${i})"><i class="fas fa-trash"></i></button>
                </td>
            </tr>
        `;
    });
    document.getElementById('count-asistentes').textContent = window.asistentes.length;
}

window.eliminarAsistente = function(idx) {
    window.asistentes.splice(idx, 1);
    actualizarTablaAsistentes();
    document.getElementById('asistentes-c').value = window.asistentes.length;
}

function mostrarExito(id) {
    document.getElementById('success-message').style.display = 'block';
    document.getElementById('success-message').textContent =
        'Capacitación creada con éxito en el ID asignado: ' + id;
    document.getElementById('form-capacitacion').reset();
    window.asistentes = [];
    actualizarTablaAsistentes();
    document.getElementById('asistentes-c').value = '0';
    document.getElementById('count-asistentes').textContent = '0';
}

function uploadFile(formularioId, file, callback) {
    const formData = new FormData();
    formData.append('file', file);
    formData.append('formulario_id', formularioId);
    formData.append('action', 'upload_file');
    
    fetch('assets/php/file_upload_api.php', {
        method: 'POST',
        body: formData
    })
    .then(res => res.json())
    .then(resp => {
        if (resp.success) {
            console.log('Archivo subido:', resp.filename);
            callback(true);
        } else {
            console.error('Error al subir archivo:', resp.message);
            callback(false);
        }
    })
    .catch(err => {
        console.error('Error de red al subir archivo:', err);
        callback(false);
    });
}