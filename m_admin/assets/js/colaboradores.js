let paginaActual = 1;
let limite = 10;
let totalRegistros = 0;
let filtroGlobal = "";

// Inicialización
document.addEventListener('DOMContentLoaded', () => {
    // Selector de cantidad
    document.querySelector('#dataTable_length select').addEventListener('change', function () {
        limite = parseInt(this.value);
        paginaActual = 1;
        cargarColaboradores();
    });

    // Filtro global (busca en todos los campos relevantes)
    document.querySelector('#dataTable_filter input').addEventListener('input', function () {
        filtroGlobal = this.value.trim();
        paginaActual = 1;
        cargarColaboradores();
    });

    // Paginador
    document.querySelector('.pagination').addEventListener('click', function (e) {
        if (e.target.classList.contains('page-link')) {
            e.preventDefault();
            if (e.target.textContent === '«' && paginaActual > 1) {
                paginaActual--;
                cargarColaboradores();
            } else if (e.target.textContent === '»' && paginaActual < Math.ceil(totalRegistros / limite)) {
                paginaActual++;
                cargarColaboradores();
            } else if (!isNaN(parseInt(e.target.textContent))) {
                paginaActual = parseInt(e.target.textContent);
                cargarColaboradores();
            }
        }
    });

    // Botones ver/cambiar contraseña
    document.querySelector('#dataTable tbody').addEventListener('click', function (e) {
        const btnVer = e.target.closest('.btn-ver');
        const btnPass = e.target.closest('.btn-pass');
        if (btnVer) abrirModalVisualizacion(btnVer.dataset.id);
        if (btnPass) abrirModalCambioPass(btnPass.dataset.id);
    });

    // Botón guardar contraseña
    document.getElementById('guardar-eru-1').addEventListener('click', function () {
        const id = document.getElementById('contraseña-a-cuc').dataset.id;
        const nueva = document.getElementById('contraseña-n-cuc').value;
        const conf = document.getElementById('contraseña-nc-cuc').value;
        if (!nueva || nueva !== conf) {
            alert('Las contraseñas no coinciden.');
            return;
        }
        cambiarPassColaborador(id, nueva);
    });

    cargarColaboradores();
});

function cargarColaboradores() {
    const params = new URLSearchParams({
        limit: limite,
        offset: (paginaActual - 1) * limite,
        search: filtroGlobal
    });
    fetch(`php/colaboradores_api.php?${params.toString()}`)
        .then(res => res.json())
        .then(json => {
            if (!json.success) return;
            const tbody = document.querySelector('#dataTable tbody');
            tbody.innerHTML = "";
            json.data.forEach(col => {
                tbody.innerHTML += `
                    <tr>
                        <td class="text-center">${col.ac_cedula}</td>
                        <td class="text-center">${col.ac_nombre1} ${col.ac_nombre2}</td>
                        <td class="text-center">${col.ac_apellido1} ${col.ac_apellido2}</td>
                        <td class="text-center">${col.situacion}</td>
                        <td class="text-center">${col.emp_nombre}</td>
                        <td class="text-center">
                            <button class="btn btn-primary btn-ver" data-id="${col.ac_id}" style="margin-left:5px;" type="button"><i class="far fa-eye"></i></button>
                            <button class="btn btn-dark btn-pass" data-id="${col.ac_id}" style="margin-left:5px;" type="button"><i class="fas fa-key"></i></button>
                        </td>
                    </tr>
                `;
            });
            totalRegistros = json.total || 0;
            renderPaginador();
            actualizarInfoTabla(json.data.length, totalRegistros);
        });
}

function renderPaginador() {
    const paginador = document.querySelector('.pagination');
    paginador.innerHTML = "";
    const totalPaginas = Math.ceil(totalRegistros / limite);
    const maxVisible = 10;

    let start = Math.max(1, paginaActual - Math.floor(maxVisible / 2));
    let end = start + maxVisible - 1;
    if (end > totalPaginas) {
        end = totalPaginas;
        start = Math.max(1, end - maxVisible + 1);
    }

    // Flecha izquierda
    paginador.innerHTML += `
        <li class="page-item ${paginaActual === 1 ? 'disabled' : ''}">
            <a class="page-link" href="#">«</a>
        </li>`;

    // Primer página (si no está visible)
    if (start > 1) {
        paginador.innerHTML += `
            <li class="page-item">
                <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item disabled"><span class="page-link">...</span></li>
        `;
    }

    // Ventana de páginas
    for (let i = start; i <= end; i++) {
        paginador.innerHTML += `
            <li class="page-item ${i === paginaActual ? 'active' : ''}">
                <a class="page-link" href="#">${i}</a>
            </li>`;
    }

    // Última página (si no está visible)
    if (end < totalPaginas) {
        paginador.innerHTML += `
            <li class="page-item disabled"><span class="page-link">...</span></li>
            <li class="page-item">
                <a class="page-link" href="#">${totalPaginas}</a>
            </li>
        `;
    }

    // Flecha derecha
    paginador.innerHTML += `
        <li class="page-item ${paginaActual === totalPaginas ? 'disabled' : ''}">
            <a class="page-link" href="#">»</a>
        </li>`;
}

function actualizarInfoTabla(mostrando, total) {
    document.getElementById('dataTable_info').textContent = `Mostrando ${(paginaActual-1)*limite+1} a ${(paginaActual-1)*limite+mostrando} de ${total}`;
}

function abrirModalVisualizacion(id) {
    fetch(`php/colaboradores_api.php?id=${id}`)
        .then(res => res.json())
        .then(json => {
            if (!json.success || !json.data) return;
            const col = json.data;
            document.getElementById('titulo-vuc').textContent = "Colaborador ID " + (col.ac_id || "##");
            document.getElementById('cedula-vuc').value = col.ac_cedula || '';
            document.getElementById('empresa-vuc').value = col.emp_nombre || '';
            document.getElementById('nombre1-vuc').value = col.ac_nombre1 || '';
            document.getElementById('nombre2-vuc').value = col.ac_nombre2 || '';
            document.getElementById('apellido1-vuc').value = col.ac_apellido1 || '';
            document.getElementById('apellido2-vuc').value = col.ac_apellido2 || '';
            document.getElementById('situacion-vuc').value = col.situacion || '';
            document.getElementById('cargo-vuc').value = col.cargo || '';
            document.getElementById('rango-vuc').value = col.rango_cargo || '';
            document.getElementById('area-vuc').value = col.area || '';
            document.getElementById('sub-area-vuc').value = col.sub_area || '';
            document.getElementById('contraseña-vuc').value = col.ac_contraseña || '';

            let modal = new bootstrap.Modal(document.getElementById('modal-vuc'));
            modal.show();
        });
}

function abrirModalCambioPass(id) {
    fetch(`php/colaboradores_api.php?id=${id}`)
        .then(res => res.json())
        .then(json => {
            if (!json.success || !json.data) return;
            document.getElementById('contraseña-a-cuc').value = json.data.ac_contraseña || '';
            document.getElementById('contraseña-a-cuc').dataset.id = id;
            let modal = new bootstrap.Modal(document.getElementById('modal-cuc'));
            modal.show();
        });
}

function cambiarPassColaborador(id, nueva) {
    const formData = new FormData();
    formData.append('id', id);
    formData.append('nueva_contraseña', nueva);
    fetch('php/colaboradores_api.php', {
        method: 'POST',
        body: formData
    })
    .then(res => res.json())
    .then(json => {
        if (json.success) {
            alert('Contraseña actualizada correctamente');
            let modal = bootstrap.Modal.getInstance(document.getElementById('modal-cuc'));
            modal.hide();
        } else {
            alert(json.error || 'Error al actualizar contraseña');
        }
    });
}