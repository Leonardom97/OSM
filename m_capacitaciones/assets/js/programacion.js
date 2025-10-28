// assets/js/programacion.js
// Manages training programming interface

(function() {
    'use strict';

    let programaciones = [];
    let cargos = [];
    let temas = [];
    let roles = [];
    let subAreas = [];
    let editingId = null;
    let importData = [];

    // Load HTML components (navbar and sidebar)
    async function includeComponent(file, selector) {
        try {
            const res = await fetch(file, { cache: 'no-store' });
            if (!res.ok) throw new Error('HTTP ' + res.status);
            const html = await res.text();
            const el = document.querySelector(selector);
            if (el) el.innerHTML = html;
        } catch (err) {
            console.error(`Error loading ${file}:`, err);
        }
    }

    document.addEventListener('DOMContentLoaded', async function() {
        try {
            // Load navbar and sidebar first
            await includeComponent('../includes/navbar.html', '#navbar');
            await includeComponent('../includes/sidebar.html', '#sidebar');
            
            // Make page visible after includes are loaded
            document.body.style.visibility = 'visible';
            
            await loadData();
            setupEventListeners();
        } catch (error) {
            console.error('Error initializing page:', error);
            showAlert('Error al cargar la página', 'danger');
        }
    });

    async function loadData() {
        try {
            // Load all required data including trainer alerts
            const [progRes, cargoRes, temaRes, rolRes, subAreaRes, alertsRes] = await Promise.all([
                fetch('assets/php/programacion_api.php?action=list'),
                fetch('assets/php/programacion_api.php?action=get_cargos'),
                fetch('assets/php/programacion_api.php?action=get_temas'),
                fetch('assets/php/programacion_api.php?action=get_roles'),
                fetch('assets/php/programacion_api.php?action=get_sub_areas'),
                fetch('assets/php/notificaciones_api.php?action=get_trainer_alerts')
            ]);

            const progData = await progRes.json();
            const cargoData = await cargoRes.json();
            const temaData = await temaRes.json();
            const rolData = await rolRes.json();
            const subAreaData = await subAreaRes.json();
            const alertsData = await alertsRes.json();

            if (progData.success) programaciones = progData.data;
            if (cargoData.success) cargos = cargoData.data;
            if (temaData.success) temas = temaData.data;
            if (rolData.success) roles = rolData.data;
            if (subAreaData.success) subAreas = subAreaData.data;
            if (alertsData.success) displayTrainerAlerts(alertsData.data);

            populateFilters();
            populateSelects();
            renderTable();
        } catch (error) {
            console.error('Error loading data:', error);
            throw error;
        }
    }

    function populateFilters() {
        const filterCargo = document.getElementById('filterCargo');
        const filterTema = document.getElementById('filterTema');
        const filterRol = document.getElementById('filterRol');

        // Populate cargo filter
        cargos.forEach(cargo => {
            const option = document.createElement('option');
            option.value = cargo.id;
            option.textContent = cargo.cargo;
            filterCargo.appendChild(option);
        });

        // Populate tema filter
        temas.forEach(tema => {
            const option = document.createElement('option');
            option.value = tema.id;
            option.textContent = tema.nombre;
            filterTema.appendChild(option);
        });

        // Populate rol filter
        roles.forEach(rol => {
            const option = document.createElement('option');
            option.value = rol.id;
            option.textContent = rol.nombre;
            filterRol.appendChild(option);
        });
    }

    function displayTrainerAlerts(alerts) {
        const alertsBox = document.getElementById('trainerAlerts');
        const alertsList = document.getElementById('alertsList');
        
        if (!alerts || alerts.length === 0) {
            alertsBox.classList.add('d-none');
            return;
        }
        
        // Determine alert color based on most urgent alert
        const mostUrgent = Math.min(...alerts.map(a => parseInt(a.dias_para_vencimiento) || 0));
        const alertClass = mostUrgent < 0 ? 'alert-danger' : mostUrgent <= 3 ? 'alert-warning' : 'alert-info';
        
        alertsBox.className = `alert alert-dismissible fade show ${alertClass}`;
        
        alertsList.innerHTML = '<ul class="mb-0">' + alerts.map(alert => {
            const dias = parseInt(alert.dias_para_vencimiento) || 0;
            const statusText = dias < 0 
                ? `<strong class="text-danger">Vencida hace ${Math.abs(dias)} días</strong>`
                : dias === 0
                ? `<strong class="text-danger">Vence HOY</strong>`
                : `<strong>Vence en ${dias} días</strong>`;
            
            const colaboradoresCount = parseInt(alert.colaboradores_pendientes) || 0;
            
            return `
                <li class="mb-2">
                    <strong>${alert.tema_nombre}</strong> - ${alert.cargo_nombre} 
                    ${alert.sub_area ? `(${alert.sub_area})` : ''}
                    <br>
                    ${statusText} - ${colaboradoresCount} colaborador(es) pendiente(s)
                    <br>
                    <small class="text-muted">Rol: ${alert.rol_capacitador_nombre}</small>
                </li>
            `;
        }).join('') + '</ul>';
        
        alertsBox.classList.remove('d-none');
    }

    function populateSelects() {
        const inputCargo = document.getElementById('inputCargo');
        const inputSubArea = document.getElementById('inputSubArea');
        const inputTema = document.getElementById('inputTema');
        const inputRol = document.getElementById('inputRolCapacitador');

        // Clear existing options
        inputCargo.innerHTML = '<option value="">Seleccione...</option>';
        inputTema.innerHTML = '<option value="">Seleccione...</option>';
        inputRol.innerHTML = '<option value="">Seleccione...</option>';

        // Populate cargo select
        cargos.forEach(cargo => {
            const option = document.createElement('option');
            option.value = cargo.id;
            option.textContent = cargo.cargo;
            inputCargo.appendChild(option);
        });

        // Populate sub area select
        if (inputSubArea) {
            inputSubArea.innerHTML = '<option value="">Seleccione...</option>';
            subAreas.forEach(sa => {
                const option = document.createElement('option');
                option.value = sa.sub_area;
                option.textContent = sa.sub_area;
                inputSubArea.appendChild(option);
            });
        }

        // Populate tema select
        temas.forEach(tema => {
            const option = document.createElement('option');
            option.value = tema.id;
            option.textContent = tema.nombre;
            inputTema.appendChild(option);
        });

        // Populate rol select
        roles.forEach(rol => {
            const option = document.createElement('option');
            option.value = rol.id;
            option.textContent = rol.nombre;
            inputRol.appendChild(option);
        });
    }

    function renderTable(filterData = null) {
        const tbody = document.querySelector('#tableProgramaciones tbody');
        const data = filterData || programaciones;

        if (data.length === 0) {
            tbody.innerHTML = '<tr><td colspan="9" class="text-center">No hay programaciones registradas</td></tr>';
            return;
        }

        tbody.innerHTML = data.map(prog => {
            const proximaFecha = prog.proxima_capacitacion ? new Date(prog.proxima_capacitacion).toLocaleDateString('es-CO') : '-';
            const diasPara = prog.dias_para_proxima !== null ? parseInt(prog.dias_para_proxima) : null;
            const pendientes = prog.colaboradores_pendientes || 0;
            
            let fechaBadge = '-';
            if (proximaFecha !== '-') {
                if (diasPara < 0) {
                    fechaBadge = `<span class="badge bg-danger">${proximaFecha}<br><small>Vencida</small></span>`;
                } else if (diasPara <= 7) {
                    fechaBadge = `<span class="badge bg-warning text-dark">${proximaFecha}<br><small>En ${diasPara} días</small></span>`;
                } else if (diasPara <= 30) {
                    fechaBadge = `<span class="badge bg-info">${proximaFecha}<br><small>En ${diasPara} días</small></span>`;
                } else {
                    fechaBadge = `<span class="badge bg-secondary">${proximaFecha}<br><small>En ${diasPara} días</small></span>`;
                }
            }
            
            let pendientesBadge = pendientes > 0 
                ? `<span class="badge bg-primary">${pendientes}</span>` 
                : '<span class="badge bg-secondary">0</span>';
            
            return `
            <tr>
                <td>${prog.id}</td>
                <td>${prog.cargo_nombre}</td>
                <td>${prog.sub_area || '-'}</td>
                <td>${prog.tema_nombre}</td>
                <td>${prog.frecuencia_meses}</td>
                <td><span class="badge bg-info">${prog.rol_capacitador_nombre}</span></td>
                <td class="text-center">${fechaBadge}</td>
                <td class="text-center">${pendientesBadge}</td>
                <td>
                    <button class="btn btn-sm btn-primary" onclick="window.editProgramacion(${prog.id})">
                        <i class="fas fa-edit"></i>
                    </button>
                    <button class="btn btn-sm btn-danger" onclick="window.deleteProgramacion(${prog.id})">
                        <i class="fas fa-trash"></i>
                    </button>
                </td>
            </tr>
        `;
        }).join('');
    }

    function setupEventListeners() {
        // New programming button
        document.getElementById('btnNuevaProgramacion').addEventListener('click', function() {
            editingId = null;
            document.getElementById('modalTitle').textContent = 'Nueva Programación';
            document.getElementById('formProgramacion').reset();
            document.getElementById('programacionId').value = '';
            
            // Re-populate sub area select in case it was modified
            populateSelects();
            
            new bootstrap.Modal(document.getElementById('modalProgramacion')).show();
        });

        // Save button
        document.getElementById('btnGuardar').addEventListener('click', saveProgramacion);

        // Filter change handlers
        document.getElementById('filterCargo').addEventListener('change', applyFilters);
        document.getElementById('filterTema').addEventListener('change', applyFilters);
        document.getElementById('filterRol').addEventListener('change', applyFilters);

        // Clear filters
        document.getElementById('btnClearFilters').addEventListener('click', function() {
            document.getElementById('filterCargo').value = '';
            document.getElementById('filterTema').value = '';
            document.getElementById('filterRol').value = '';
            renderTable();
        });

        // Import Excel button
        document.getElementById('btnImportExcel').addEventListener('click', function() {
            document.getElementById('inputExcel').value = '';
            document.getElementById('importPreview').classList.add('d-none');
            document.getElementById('importErrors').classList.add('d-none');
            document.getElementById('btnImportar').disabled = true;
            new bootstrap.Modal(document.getElementById('modalImport')).show();
        });

        // Excel file input
        document.getElementById('inputExcel').addEventListener('change', handleExcelFile);

        // Import button
        document.getElementById('btnImportar').addEventListener('click', importExcelData);
    }

    function applyFilters() {
        const cargoFilter = document.getElementById('filterCargo').value;
        const temaFilter = document.getElementById('filterTema').value;
        const rolFilter = document.getElementById('filterRol').value;

        let filtered = programaciones;

        if (cargoFilter) {
            filtered = filtered.filter(p => p.id_cargo === cargoFilter);
        }

        if (temaFilter) {
            filtered = filtered.filter(p => p.id_tema == temaFilter);
        }

        if (rolFilter) {
            filtered = filtered.filter(p => p.id_rol_capacitador == rolFilter);
        }

        renderTable(filtered);
    }

    async function saveProgramacion() {
        const form = document.getElementById('formProgramacion');
        
        if (!form.checkValidity()) {
            form.reportValidity();
            return;
        }
        
        // Additional validation for sub_area (must not be empty)
        const subAreaValue = document.getElementById('inputSubArea').value;
        if (!subAreaValue || subAreaValue.trim() === '') {
            alert('El campo Sub Área es obligatorio');
            document.getElementById('inputSubArea').focus();
            return;
        }

        const data = {
            id_cargo: document.getElementById('inputCargo').value,
            sub_area: subAreaValue.trim(),
            id_tema: document.getElementById('inputTema').value,
            frecuencia_meses: document.getElementById('inputFrecuencia').value,
            id_rol_capacitador: document.getElementById('inputRolCapacitador').value
        };

        if (editingId) {
            data.id = editingId;
        }

        try {
            const action = editingId ? 'update' : 'create';
            const res = await fetch(`assets/php/programacion_api.php?action=${action}`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(data)
            });

            const result = await res.json();

            if (result.success) {
                showAlert(result.message, 'success');
                bootstrap.Modal.getInstance(document.getElementById('modalProgramacion')).hide();
                await loadData();
            } else {
                showAlert(result.error, 'danger');
            }
        } catch (error) {
            console.error('Error saving:', error);
            showAlert('Error al guardar', 'danger');
        }
    }

    window.editProgramacion = async function(id) {
        try {
            const res = await fetch(`assets/php/programacion_api.php?action=get&id=${id}`);
            const result = await res.json();

            if (result.success && result.data) {
                const prog = result.data;
                editingId = id;

                document.getElementById('modalTitle').textContent = 'Editar Programación';
                document.getElementById('programacionId').value = id;
                document.getElementById('inputCargo').value = prog.id_cargo;
                document.getElementById('inputSubArea').value = prog.sub_area || '';
                document.getElementById('inputTema').value = prog.id_tema;
                document.getElementById('inputFrecuencia').value = prog.frecuencia_meses;
                document.getElementById('inputRolCapacitador').value = prog.id_rol_capacitador;

                new bootstrap.Modal(document.getElementById('modalProgramacion')).show();
            }
        } catch (error) {
            console.error('Error loading programming:', error);
            showAlert('Error al cargar programación', 'danger');
        }
    };

    window.deleteProgramacion = async function(id) {
        if (!confirm('¿Está seguro de eliminar esta programación?')) {
            return;
        }

        try {
            const res = await fetch(`assets/php/programacion_api.php?action=delete&id=${id}`, {
                method: 'POST'
            });

            const result = await res.json();

            if (result.success) {
                showAlert(result.message, 'success');
                await loadData();
            } else {
                showAlert(result.error, 'danger');
            }
        } catch (error) {
            console.error('Error deleting:', error);
            showAlert('Error al eliminar', 'danger');
        }
    };

    function handleExcelFile(e) {
        const file = e.target.files[0];
        if (!file) return;

        const reader = new FileReader();
        reader.onload = function(e) {
            try {
                const data = new Uint8Array(e.target.result);
                const workbook = XLSX.read(data, { type: 'array' });
                const firstSheet = workbook.Sheets[workbook.SheetNames[0]];
                const jsonData = XLSX.utils.sheet_to_json(firstSheet, { header: 1 });

                processExcelData(jsonData);
            } catch (error) {
                console.error('Error reading Excel:', error);
                showAlert('Error al leer el archivo Excel', 'danger');
            }
        };
        reader.readAsArrayBuffer(file);
    }

    function processExcelData(data) {
        importData = [];
        const errors = [];
        const preview = document.getElementById('importPreviewBody');
        preview.innerHTML = '';

        // Skip header row
        for (let i = 1; i < data.length; i++) {
            const row = data[i];
            
            if (!row || row.length < 5) continue;

            const cargo_id = row[0];
            const sub_area = row[1];
            const tema_id = row[2];
            const frecuencia = row[3];
            const rol_nombre = row[4];

            // Find rol ID by name
            const rol = roles.find(r => r.nombre.toLowerCase() === String(rol_nombre).toLowerCase());
            
            if (!rol) {
                errors.push(`Fila ${i + 1}: Rol "${rol_nombre}" no encontrado`);
                continue;
            }

            const item = {
                id_cargo: String(cargo_id),
                sub_area: sub_area || null,
                id_tema: parseInt(tema_id),
                frecuencia_meses: parseInt(frecuencia) || 12,
                id_rol_capacitador: rol.id
            };

            // Find names for preview
            const cargo = cargos.find(c => c.id === item.id_cargo);
            const tema = temas.find(t => t.id === item.id_tema);

            const tr = document.createElement('tr');
            tr.innerHTML = `
                <td>${cargo ? cargo.cargo : cargo_id}</td>
                <td>${item.sub_area || '-'}</td>
                <td>${tema ? tema.nombre : tema_id}</td>
                <td>${item.frecuencia_meses}</td>
                <td>${rol.nombre}</td>
            `;
            preview.appendChild(tr);

            importData.push(item);
        }

        document.getElementById('importPreview').classList.remove('d-none');

        if (errors.length > 0) {
            const errorList = document.getElementById('importErrorList');
            errorList.innerHTML = errors.map(e => `<li>${e}</li>`).join('');
            document.getElementById('importErrors').classList.remove('d-none');
        } else {
            document.getElementById('importErrors').classList.add('d-none');
        }

        document.getElementById('btnImportar').disabled = importData.length === 0;
    }

    async function importExcelData() {
        if (importData.length === 0) return;

        try {
            const res = await fetch('assets/php/programacion_api.php?action=bulk_import', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ items: importData })
            });

            const result = await res.json();

            if (result.success) {
                let message = result.message;
                if (result.errors && result.errors.length > 0) {
                    message += '\n\nAdvertencias:\n' + result.errors.join('\n');
                }
                alert(message);
                bootstrap.Modal.getInstance(document.getElementById('modalImport')).hide();
                await loadData();
            } else {
                showAlert(result.error, 'danger');
            }
        } catch (error) {
            console.error('Error importing:', error);
            showAlert('Error al importar datos', 'danger');
        }
    }

    function showAlert(message, type) {
        const alert = document.createElement('div');
        alert.className = `alert alert-${type} alert-dismissible fade show position-fixed top-0 end-0 m-3`;
        alert.style.zIndex = '9999';
        alert.innerHTML = `
            ${message}
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        `;
        document.body.appendChild(alert);

        setTimeout(() => {
            alert.remove();
        }, 5000);
    }
})();
