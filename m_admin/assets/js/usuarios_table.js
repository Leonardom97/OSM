// URL base para la API de usuarios
const API_URL = 'php/usuarios_api.php';

// Variables de paginación y búsqueda
let currentPage = 1;
let perPage = 10;
let search = '';

// Al cargar el DOM, inicializar la tabla y los eventos
document.addEventListener('DOMContentLoaded', () => {
    cargarTabla();
    cargarRoles();

    // Cambiar registros por página
    document.getElementById('registros-por-pagina').addEventListener('change', e => {
        perPage = +e.target.value;
        currentPage = 1;
        cargarTabla();
    });

    // Buscar usuarios
    document.getElementById('filtro-busqueda').addEventListener('input', e => {
        search = e.target.value.trim();
        currentPage = 1;
        cargarTabla();
    });

    // Botón para abrir modal de registro
    document.getElementById('btn_ru').addEventListener('click', () => {
        fetch(`${API_URL}?next_id=1`)
            .then(res => res.json())
            .then(data => {
                document.getElementById('usuario-nuevo-id-text').textContent = `Usuario Nuevo ID ${data.next_id}`;
            });

        fetch(`${API_URL}?roles=1`)
            .then(res => res.json())
            .then(roles => {
                const optionsList = document.getElementById('optionsList-ru');
                optionsList.innerHTML = '';
                roles.forEach(rol => {
                    optionsList.innerHTML += `<label style="margin-right:8px;"><input type="checkbox" value="${rol.id}"> ${rol.nombre}</label>`;
                });
                document.getElementById('multiSelect-ru').removeAttribute('data-initialized');
                if (typeof initMultiselect === 'function') initMultiselect('-ru');
            });

        document.getElementById('form-ru').reset();
        setTimeout(() => {
            document.querySelectorAll('#optionsList-ru input[type="checkbox"]').forEach(input => input.checked = false);
            if (typeof initMultiselect === "function") {
                document.getElementById('multiSelect-ru').removeAttribute('data-initialized');
                initMultiselect('-ru');
            }
        }, 200);
    });

    // Registrar usuario desde modal
    document.getElementById('form-ru').addEventListener('submit', function(evt) {
        evt.preventDefault();
        const body = {
            cedula: document.getElementById('cedula-ru').value,
            nombre1: document.getElementById('nombre1-ru').value,
            nombre2: document.getElementById('nombre2-ru').value,
            apellido1: document.getElementById('apellido1-ru').value,
            apellido2: document.getElementById('apellido2-ru').value,
            contraseña: document.getElementById('contrasena1-ru').value,
            roles: Array.from(document.querySelectorAll('#optionsList-ru input:checked')).map(i => i.value),
            estado_us: "1",
            tipo: "registrar"
        };

        if (document.getElementById('contrasena1-ru').value !== document.getElementById('contrasena2-ru').value) {
            alert("Las contraseñas no coinciden");
            return;
        }

        fetch(API_URL, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(body)
        })
        .then(res => res.json())
        .then(resp => {
            if (resp.success) {
                cargarTabla();
                bootstrap.Modal.getInstance(document.getElementById('modal-ru')).hide();
                alert(resp.message || "Usuario registrado exitosamente");
            } else {
                alert(resp.message || "Error al registrar usuario");
            }
        })
        .catch(err => {
            console.error("Error en registro:", err);
            alert("Error de red o conexión");
        });
    });
});

// Cargar tabla de usuarios
function cargarTabla() {
    fetch(`${API_URL}?page=${currentPage}&per_page=${perPage}&search=${encodeURIComponent(search)}`)
        .then(res => res.json())
        .then(data => {
            pintarTabla(data.usuarios);
            actualizarInfo(data.usuarios.length, data.total);
            pintarPaginacion(data.total);
        });
}

// Pintar filas en la tabla
function pintarTabla(usuarios) {
    const tbody = document.querySelector('#dataTable tbody');
    tbody.innerHTML = '';
    usuarios.forEach(u => {
        const estadoBtn = u.estado_us === "0"
            ? `<button class="btn btn-secondary btn-activar" data-id="${u.id}" title="Activar"><i class="fas fa-user-check"></i></button>`
            : `<button class="btn btn-danger btn-desactivar" data-id="${u.id}" title="Desactivar"><i class="fas fa-user-times"></i></button>`;
        const tr = document.createElement('tr');
        tr.innerHTML = `
            <td class="text-center">${u.id}</td>
            <td class="text-center">${u.nombre1} ${u.nombre2}</td>
            <td class="text-center">${u.apellido1} ${u.apellido2}</td>
            <td class="text-center">${u.cedula}</td>
            <td class="text-center">${u.roles}</td>
            <td class="text-center">
                <button class="btn btn-primary btn-editar" data-id="${u.id}"><i class="far fa-edit"></i></button>
                ${estadoBtn}
            </td>
        `;
        tbody.appendChild(tr);
    });

    // Eventos para editar y activar/desactivar
    tbody.querySelectorAll('.btn-editar').forEach(btn => {
        btn.onclick = () => abrirModalEditar(btn.dataset.id);
    });
    tbody.querySelectorAll('.btn-desactivar').forEach(btn => {
        btn.onclick = () => cambiarEstado(btn.dataset.id, "0");
    });
    tbody.querySelectorAll('.btn-activar').forEach(btn => {
        btn.onclick = () => cambiarEstado(btn.dataset.id, "1");
    });
}

// Cargar roles para edición
function cargarRoles() {
    fetch(`${API_URL}?roles=1`)
        .then(res => res.json())
        .then(roles => {
            const optionsList = document.getElementById('optionsList-eru');
            optionsList.innerHTML = '';
            roles.forEach(rol => {
                optionsList.innerHTML += `<label style="margin-right:8px;"><input type="checkbox" value="${rol.id}"> ${rol.nombre}</label>`;
            });
            document.getElementById('multiSelect-eru').removeAttribute('data-initialized');
            if (typeof initMultiselect === 'function') initMultiselect('-eru');
        });
}

// Actualizar info de la tabla
function actualizarInfo(mostrando, total) {
    document.getElementById('dataTable_info').textContent = `Mostrando ${mostrando} de ${total}`;
}

// Pintar paginación
function pintarPaginacion(total) {
    const totalPages = Math.ceil(total / perPage);
    const paginacion = document.querySelector('.pagination');
    paginacion.innerHTML = '';
    for (let i = 1; i <= totalPages; i++) {
        paginacion.innerHTML += `<li class="page-item${i === currentPage ? ' active' : ''}">
            <a class="page-link" href="#">${i}</a></li>`;
    }
    paginacion.querySelectorAll('.page-link').forEach((a, idx) => {
        a.onclick = (e) => {
            e.preventDefault();
            currentPage = idx + 1;
            cargarTabla();
        };
    });
}

// Abrir modal de edición de usuario
function abrirModalEditar(id) {
    fetch(`${API_URL}?page=1&per_page=1&search=&id=${id}`)
        .then(res => res.json())
        .then(data => {
            const u = data.usuarios[0];
            document.getElementById('usuario-id-text').textContent = `Usuario ID ${u.id}`;
            document.getElementById('cedula-eru').value = u.cedula;
            document.getElementById('nombre1-eru').value = u.nombre1;
            document.getElementById('nombre2-eru').value = u.nombre2;
            document.getElementById('apellido1-eru').value = u.apellido1;
            document.getElementById('apellido2-eru').value = u.apellido2;
            document.getElementById('guardar-eru').setAttribute('data-id', u.id);
            
            // Clear password fields
            document.getElementById('ed-nombre-r-1').value = '';
            document.getElementById('ed-nombre-r-2').value = '';

            fetch(`${API_URL}?roles=1`)
                .then(res => res.json())
                .then(roles => {
                    const optionsList = document.getElementById('optionsList-eru');
                    optionsList.innerHTML = '';
                    roles.forEach(rol => {
                        optionsList.innerHTML += `<label style="margin-right:8px;"><input type="checkbox" value="${rol.id}"> ${rol.nombre}</label>`;
                    });

                    // Marcar roles seleccionados
                    const selectedRoleNames = u.roles.split(',').map(r => r.trim());
                    document.querySelectorAll('#optionsList-eru input').forEach(input => {
                        const labelText = input.parentElement.textContent.trim();
                        input.checked = selectedRoleNames.includes(labelText);
                    });

                    document.getElementById('multiSelect-eru').removeAttribute('data-initialized');
                    if (typeof initMultiselect === 'function') initMultiselect('-eru');
                });

            new bootstrap.Modal(document.getElementById('modal-eru')).show();
        });
}

// Guardar edición de usuario
document.getElementById('guardar-eru').onclick = function () {
    const id = this.getAttribute('data-id');
    const password1 = document.getElementById('ed-nombre-r-1').value.trim();
    const password2 = document.getElementById('ed-nombre-r-2').value.trim();
    
    // Validate password if provided
    if (password1 || password2) {
        if (password1 !== password2) {
            alert("Las contraseñas no coinciden");
            return;
        }
        if (password1.length < 1) {
            alert("La contraseña no puede estar vacía");
            return;
        }
    }
    
    const body = {
        id,
        cedula: document.getElementById('cedula-eru').value,
        nombre1: document.getElementById('nombre1-eru').value,
        nombre2: document.getElementById('nombre2-eru').value,
        apellido1: document.getElementById('apellido1-eru').value,
        apellido2: document.getElementById('apellido2-eru').value,
        estado_us: "1",
        roles: Array.from(document.querySelectorAll('#optionsList-eru input:checked')).map(i => i.value)
    };
    
    // Only include password if it was provided
    if (password1) {
        body.contraseña = password1;
    }
    
    fetch(API_URL, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body)
    })
    .then(res => res.json())
    .then(resp => {
        if (resp.success) {
            cargarTabla();
            bootstrap.Modal.getInstance(document.getElementById('modal-eru')).hide();
            alert(resp.message || "Usuario actualizado exitosamente");
        } else {
            alert(resp.message || "Error al actualizar usuario");
        }
    });
};

// Cambiar estado de usuario (activar/desactivar)
function cambiarEstado(id, estado) {
    fetch(API_URL, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({id, estado})
    })
    .then(res => res.json())
    .then(() => cargarTabla());
}