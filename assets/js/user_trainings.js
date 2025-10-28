// assets/js/user_trainings.js
// Handles training display and progress for user profile page

(function() {
    'use strict';

    // Global variable to store all trainings data for filtering and sorting
    let allTrainingsData = [];
    let currentSortColumn = null;
    let currentSortOrder = 'asc';
    
    // Global variable to store all sessions data for filtering and sorting
    let allSessionsData = [];
    let currentSessionSortColumn = null;
    let currentSessionSortOrder = 'asc';

    document.addEventListener('DOMContentLoaded', async function() {
        try {
            await loadUserData();
            await loadTrainingProgress();
            await loadLastSessions();
            await loadLastTrainings();
            await loadPendingTrainings();
            await loadScheduledTrainings();
            await loadCompletedTrainings();
            
            // Setup event listeners
            setupModalEventListeners();
        } catch (error) {
            console.error('Error loading training data:', error);
        }
    });

    function setupModalEventListeners() {
        // Ver Más Capacitaciones button
        const btnVerMas = document.getElementById('btnVerMasCapacitaciones');
        if (btnVerMas) {
            btnVerMas.addEventListener('click', openAllTrainingsModal);
        }
        
        // Ver Más Sesiones button
        const btnVerMasSesiones = document.getElementById('btnVerMasSesiones');
        if (btnVerMasSesiones) {
            btnVerMasSesiones.addEventListener('click', openAllSessionsModal);
        }

        // Export to Excel button (only for trainings)
        const btnExport = document.getElementById('btnExportToExcel');
        if (btnExport) {
            btnExport.addEventListener('click', exportToExcel);
        }

        // Search functionality for trainings
        const searchInput = document.getElementById('searchTrainingsInput');
        if (searchInput) {
            searchInput.addEventListener('input', filterTrainingsTable);
        }
        
        // Search functionality for sessions
        const searchSessionsInput = document.getElementById('searchSessionsInput');
        if (searchSessionsInput) {
            searchSessionsInput.addEventListener('input', filterSessionsTable);
        }

        // Sorting functionality for trainings
        const sortableHeaders = document.querySelectorAll('.sortable');
        sortableHeaders.forEach(header => {
            header.addEventListener('click', function() {
                const column = this.getAttribute('data-column');
                sortTrainingsTable(column);
            });
        });
        
        // Sorting functionality for sessions
        const sortableSessionHeaders = document.querySelectorAll('.sortable-session');
        sortableSessionHeaders.forEach(header => {
            header.addEventListener('click', function() {
                const column = this.getAttribute('data-column');
                sortSessionsTable(column);
            });
        });
    }

    async function openAllTrainingsModal() {
        try {
            // Show the modal
            const modal = new bootstrap.Modal(document.getElementById('modalAllTrainings'));
            modal.show();

            // Load all trainings data
            await loadAllTrainings();
        } catch (error) {
            console.error('Error opening modal:', error);
            alert('Error al cargar los datos de capacitaciones');
        }
    }
    
    async function openAllSessionsModal() {
        try {
            // Show the modal
            const modal = new bootstrap.Modal(document.getElementById('modalAllSessions'));
            modal.show();

            // Load all sessions data
            await loadAllSessions();
        } catch (error) {
            console.error('Error opening sessions modal:', error);
            alert('Error al cargar los datos de sesiones');
        }
    }

    async function loadAllTrainings() {
        try {
            const res = await fetch('/m_capacitaciones/assets/php/progreso_api.php?action=get_full_training_history', {
                cache: 'no-store'
            });
            const result = await res.json();

            if (result.success && result.data) {
                allTrainingsData = result.data;
                renderTrainingsTable(allTrainingsData);
            } else {
                document.getElementById('allTrainingsTableBody').innerHTML = `
                    <tr>
                        <td colspan="15" class="text-center text-muted">
                            No hay capacitaciones registradas
                        </td>
                    </tr>
                `;
            }
        } catch (error) {
            console.error('Error loading all trainings:', error);
            document.getElementById('allTrainingsTableBody').innerHTML = `
                <tr>
                    <td colspan="15" class="text-center">
                        <div class="alert alert-danger mb-0">Error al cargar capacitaciones</div>
                    </td>
                </tr>
            `;
        }
    }

    function renderTrainingsTable(data) {
        const tbody = document.getElementById('allTrainingsTableBody');
        const countText = document.getElementById('trainingCountText');

        if (!data || data.length === 0) {
            tbody.innerHTML = `
                <tr>
                    <td colspan="15" class="text-center text-muted">
                        No hay registros que mostrar
                    </td>
                </tr>
            `;
            countText.textContent = 'Total: 0 registros';
            return;
        }

        tbody.innerHTML = data.map(training => `
            <tr>
                <td>${training.proceso || '-'}</td>
                <td>${training.lugar || '-'}</td>
                <td>${training.responsable_capacitacion || '-'}</td>
                <td>${training.tema || '-'}</td>
                <td>${training.tipo_actividad || '-'}</td>
                <td>${formatDateForTable(training.fecha)}</td>
                <td>${training.hora_inicio || '-'}</td>
                <td>${training.hora_fin || '-'}</td>
                <td>${formatEstadoAprobacion(training.estado_aprovacion)}</td>
                <td>${training.empresa || '-'}</td>
                <td>${training.cargo || '-'}</td>
                <td>${training.area || '-'}</td>
                <td>${training.sub_area || '-'}</td>
                <td>${training.rango || '-'}</td>
                <td>${training.situacion || '-'}</td>
            </tr>
        `).join('');

        countText.textContent = `Total: ${data.length} registros`;
    }

    function formatDateForTable(dateString) {
        if (!dateString) return '-';
        try {
            const date = new Date(dateString);
            return date.toLocaleDateString('es-CO', { 
                day: 'numeric',
                month: 'short',
                year: 'numeric'
            });
        } catch (e) {
            return dateString;
        }
    }

    function formatEstadoAprobacion(estado) {
        if (!estado) return '-';
        const estadoMap = {
            'aprobo': 'Aprobó',
            'no_aprobo': 'No Aprobó',
            'no_aplica': 'No Aplica'
        };
        return estadoMap[estado] || estado;
    }

    function filterTrainingsTable() {
        const searchTerm = document.getElementById('searchTrainingsInput').value.toLowerCase();
        
        if (!searchTerm) {
            renderTrainingsTable(allTrainingsData);
            return;
        }

        const filtered = allTrainingsData.filter(training => {
            return Object.values(training).some(value => {
                if (value === null || value === undefined) return false;
                return value.toString().toLowerCase().includes(searchTerm);
            });
        });

        renderTrainingsTable(filtered);
    }

    function sortTrainingsTable(column) {
        // Toggle sort order if clicking the same column
        if (currentSortColumn === column) {
            currentSortOrder = currentSortOrder === 'asc' ? 'desc' : 'asc';
        } else {
            currentSortColumn = column;
            currentSortOrder = 'asc';
        }

        // Update sort icons
        document.querySelectorAll('.sortable i').forEach(icon => {
            icon.className = 'fas fa-sort';
        });
        
        const activeHeader = document.querySelector(`.sortable[data-column="${column}"] i`);
        if (activeHeader) {
            activeHeader.className = currentSortOrder === 'asc' ? 'fas fa-sort-up' : 'fas fa-sort-down';
        }

        // Sort the data
        const sortedData = [...allTrainingsData].sort((a, b) => {
            let aVal = a[column];
            let bVal = b[column];

            // Handle null/undefined values
            if (aVal === null || aVal === undefined) aVal = '';
            if (bVal === null || bVal === undefined) bVal = '';

            // Convert to strings for comparison
            aVal = aVal.toString().toLowerCase();
            bVal = bVal.toString().toLowerCase();

            if (currentSortOrder === 'asc') {
                return aVal > bVal ? 1 : aVal < bVal ? -1 : 0;
            } else {
                return aVal < bVal ? 1 : aVal > bVal ? -1 : 0;
            }
        });

        renderTrainingsTable(sortedData);
    }

    function exportToExcel() {
        if (!allTrainingsData || allTrainingsData.length === 0) {
            alert('No hay datos para exportar');
            return;
        }

        try {
            // Prepare data for Excel export
            const excelData = allTrainingsData.map(training => ({
                'Proceso': training.proceso || '',
                'Lugar': training.lugar || '',
                'Responsable Capacitación': training.responsable_capacitacion || '',
                'Tema': training.tema || '',
                'Tipo de Actividad': training.tipo_actividad || '',
                'Fecha': formatDateForTable(training.fecha),
                'Hora Inicio': training.hora_inicio || '',
                'Hora Fin': training.hora_fin || '',
                'Estado Aprobación': formatEstadoAprobacion(training.estado_aprovacion),
                'Empresa': training.empresa || '',
                'Cargo': training.cargo || '',
                'Área': training.area || '',
                'Sub-Área': training.sub_area || '',
                'Rango': training.rango || '',
                'Situación': training.situacion || ''
            }));

            // Create workbook and worksheet
            const ws = XLSX.utils.json_to_sheet(excelData);
            const wb = XLSX.utils.book_new();
            XLSX.utils.book_append_sheet(wb, ws, 'Capacitaciones');

            // Auto-size columns
            const maxWidth = 50;
            const colWidths = Object.keys(excelData[0]).map(key => {
                const maxLen = Math.max(
                    key.length,
                    ...excelData.map(row => (row[key] ? row[key].toString().length : 0))
                );
                return { wch: Math.min(maxLen + 2, maxWidth) };
            });
            ws['!cols'] = colWidths;

            // Generate filename with current date
            const cedula = sessionStorage.getItem('user_cedula') || 'usuario';
            const date = new Date().toISOString().split('T')[0];
            const filename = `Capacitaciones_${cedula}_${date}.xlsx`;

            // Download file
            XLSX.writeFile(wb, filename);
        } catch (error) {
            console.error('Error exporting to Excel:', error);
            alert('Error al exportar a Excel. Por favor, intente nuevamente.');
        }
    }

    // ===== SESSIONS FUNCTIONS =====
    
    // Debounce timer for search
    let searchSessionsTimer = null;
    
    async function loadAllSessions() {
        try {
            const res = await fetch('/php/session_management_api.php?action=get_my_sessions&limit=100', {
                cache: 'no-store'
            });
            const result = await res.json();

            if (result.success && result.sessions) {
                allSessionsData = result.sessions;
                renderSessionsTable(allSessionsData);
            } else {
                document.getElementById('allSessionsTableBody').innerHTML = `
                    <tr>
                        <td colspan="6" class="text-center text-muted">
                            No hay sesiones registradas
                        </td>
                    </tr>
                `;
            }
        } catch (error) {
            console.error('Error loading all sessions:', error);
            document.getElementById('allSessionsTableBody').innerHTML = `
                <tr>
                    <td colspan="6" class="text-center">
                        <div class="alert alert-danger mb-0">Error al cargar sesiones</div>
                    </td>
                </tr>
            `;
        }
    }

    function renderSessionsTable(data) {
        const tbody = document.getElementById('allSessionsTableBody');
        const countText = document.getElementById('sessionCountText');

        if (!data || data.length === 0) {
            tbody.innerHTML = `
                <tr>
                    <td colspan="6" class="text-center text-muted">
                        No hay registros que mostrar
                    </td>
                </tr>
            `;
            countText.textContent = 'Total: 0 registros';
            return;
        }

        tbody.innerHTML = data.map(session => {
            const isActive = session.activa;
            const statusBadge = isActive ? 
                '<span class="badge bg-success">Activa</span>' : 
                '<span class="badge bg-secondary">Cerrada</span>';
            const duration = calculateDuration(session.fecha_inicio, session.fecha_cierre, isActive);
            
            return `
                <tr>
                    <td>${formatDateTime(session.fecha_inicio)}</td>
                    <td>${session.fecha_cierre ? formatDateTime(session.fecha_cierre) : '-'}</td>
                    <td><code class="small">${session.ip_address || '-'}</code></td>
                    <td><small>${session.host_name || '-'}</small></td>
                    <td>${statusBadge}</td>
                    <td><small>${duration}</small></td>
                </tr>
            `;
        }).join('');

        countText.textContent = `Total: ${data.length} registros`;
    }

    function calculateDuration(startDate, endDate, isActive) {
        if (!startDate) return '-';
        
        try {
            const start = new Date(startDate);
            const end = endDate ? new Date(endDate) : new Date();
            const diffMs = end - start;
            
            if (diffMs < 0) return '-';
            
            const hours = Math.floor(diffMs / (1000 * 60 * 60));
            const minutes = Math.floor((diffMs % (1000 * 60 * 60)) / (1000 * 60));
            
            if (hours > 0) {
                return `${hours}h ${minutes}m${isActive ? ' (en curso)' : ''}`;
            } else {
                return `${minutes}m${isActive ? ' (en curso)' : ''}`;
            }
        } catch (e) {
            return '-';
        }
    }

    function filterSessionsTable() {
        // Clear previous timer
        if (searchSessionsTimer) {
            clearTimeout(searchSessionsTimer);
        }
        
        // Debounce search to improve performance
        searchSessionsTimer = setTimeout(() => {
            const searchTerm = document.getElementById('searchSessionsInput').value.toLowerCase();
            
            if (!searchTerm) {
                renderSessionsTable(allSessionsData);
                return;
            }

            // Filter only searchable fields for better performance
            const filtered = allSessionsData.filter(session => {
                // Check specific searchable fields
                return (
                    (session.ip_address && session.ip_address.toLowerCase().includes(searchTerm)) ||
                    (session.host_name && session.host_name.toLowerCase().includes(searchTerm)) ||
                    (session.fecha_inicio && session.fecha_inicio.toString().toLowerCase().includes(searchTerm)) ||
                    (session.fecha_cierre && session.fecha_cierre.toString().toLowerCase().includes(searchTerm)) ||
                    (session.activa && 'activa'.includes(searchTerm)) ||
                    (!session.activa && 'cerrada'.includes(searchTerm))
                );
            });

            renderSessionsTable(filtered);
        }, 300); // Wait 300ms after user stops typing
    }

    function sortSessionsTable(column) {
        // Toggle sort order if clicking the same column
        if (currentSessionSortColumn === column) {
            currentSessionSortOrder = currentSessionSortOrder === 'asc' ? 'desc' : 'asc';
        } else {
            currentSessionSortColumn = column;
            currentSessionSortOrder = 'asc';
        }

        // Update sort icons
        document.querySelectorAll('.sortable-session i').forEach(icon => {
            icon.className = 'fas fa-sort';
        });
        
        const activeHeader = document.querySelector(`.sortable-session[data-column="${column}"] i`);
        if (activeHeader) {
            activeHeader.className = currentSessionSortOrder === 'asc' ? 'fas fa-sort-up' : 'fas fa-sort-down';
        }

        // Calculate current time once for efficiency when sorting active sessions
        const now = new Date();

        // Sort the data
        const sortedData = [...allSessionsData].sort((a, b) => {
            let aVal = a[column];
            let bVal = b[column];

            // Handle null/undefined values
            if (aVal === null || aVal === undefined) aVal = '';
            if (bVal === null || bVal === undefined) bVal = '';

            // Special handling for boolean 'activa' field
            if (column === 'activa') {
                aVal = aVal ? 1 : 0;
                bVal = bVal ? 1 : 0;
            } else if (column === 'duracion') {
                // Calculate duration for sorting - use current time for active sessions
                const aStart = a.fecha_inicio ? new Date(a.fecha_inicio) : null;
                const aEnd = a.fecha_cierre ? new Date(a.fecha_cierre) : (a.activa ? now : null);
                const bStart = b.fecha_inicio ? new Date(b.fecha_inicio) : null;
                const bEnd = b.fecha_cierre ? new Date(b.fecha_cierre) : (b.activa ? now : null);
                
                aVal = (aStart && aEnd) ? (aEnd - aStart) : 0;
                bVal = (bStart && bEnd) ? (bEnd - bStart) : 0;
            } else {
                // Convert to strings for comparison
                aVal = aVal.toString().toLowerCase();
                bVal = bVal.toString().toLowerCase();
            }

            if (currentSessionSortOrder === 'asc') {
                return aVal > bVal ? 1 : aVal < bVal ? -1 : 0;
            } else {
                return aVal < bVal ? 1 : aVal > bVal ? -1 : 0;
            }
        });

        renderSessionsTable(sortedData);
    }

    async function loadLastSessions() {
        try {
            const res = await fetch('/php/session_management_api.php?action=get_my_sessions&limit=5', {
                cache: 'no-store'
            });
            const result = await res.json();

            const container = document.getElementById('lastSessionsContainer');
            if (!container) return;

            if (result.success && result.sessions && result.sessions.length > 0) {
                container.innerHTML = result.sessions.map(session => {
                    const isActive = session.activa;
                    const statusBadge = isActive ? 
                        '<span class="badge bg-success">Activa</span>' : 
                        '<span class="badge bg-secondary">Cerrada</span>';
                    
                    return `
                        <div class="mb-3 pb-2 border-bottom">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <h6 class="mb-1">
                                        <i class="fas fa-desktop text-muted"></i> 
                                        ${session.host_name || 'Dispositivo desconocido'}
                                    </h6>
                                    <small class="text-muted">
                                        <i class="fas fa-calendar"></i> ${formatDateTime(session.fecha_inicio)}
                                        ${session.ip_address ? `<br><i class="fas fa-network-wired"></i> ${session.ip_address}` : ''}
                                    </small>
                                </div>
                                ${statusBadge}
                            </div>
                        </div>
                    `;
                }).join('');
            } else {
                container.innerHTML = `
                    <div class="text-center text-muted">
                        <i class="fas fa-info-circle"></i>
                        <p class="mb-0">No hay sesiones registradas</p>
                    </div>
                `;
            }
        } catch (error) {
            console.error('Error loading last sessions:', error);
            const container = document.getElementById('lastSessionsContainer');
            if (container) {
                container.innerHTML = '<div class="alert alert-danger">Error al cargar sesiones</div>';
            }
        }
    }

    async function loadUserData() {
        try {
            const res = await fetch('/php/verificar_sesion.php', { cache: 'no-store' });
            const data = await res.json();

            if (data.success) {
                // Populate common user fields
                if (document.getElementById('usuario_txt')) {
                    document.getElementById('usuario_txt').value = data.usuario || '';
                }
                if (document.getElementById('nombre_usr')) {
                    document.getElementById('nombre_usr').value = data.nombre || '';
                }
                if (document.getElementById('apellido_usr')) {
                    document.getElementById('apellido_usr').value = data.apellido || '';
                }
                if (document.getElementById('cedula_usr')) {
                    document.getElementById('cedula_usr').value = data.cedula || '';
                }
                if (document.getElementById('id_u')) {
                    document.getElementById('id_u').value = data.usuario_id || '';
                }
                if (document.getElementById('rol_txt')) {
                    document.getElementById('rol_txt').value = data.rol || '';
                }

                // Store cedula in session storage for later use
                if (data.cedula) {
                    sessionStorage.setItem('user_cedula', data.cedula);
                }

                // Show collaborator section if user is a collaborator
                if (data.tipo_usuario === 'colaborador' && data.colaborador_info) {
                    const colabSection = document.getElementById('colaborador-section');
                    if (colabSection) {
                        colabSection.style.display = 'block';
                        
                        // Populate collaborator-specific fields
                        if (document.getElementById('empresa_txt')) {
                            document.getElementById('empresa_txt').value = data.colaborador_info.empresa || '';
                        }
                        if (document.getElementById('cargo_txt')) {
                            document.getElementById('cargo_txt').value = data.colaborador_info.cargo || '';
                        }
                        if (document.getElementById('rango_txt')) {
                            document.getElementById('rango_txt').value = data.colaborador_info.rango_cargo || '';
                        }
                        if (document.getElementById('area_txt')) {
                            document.getElementById('area_txt').value = data.colaborador_info.area || '';
                        }
                        if (document.getElementById('sub_area_txt')) {
                            document.getElementById('sub_area_txt').value = data.colaborador_info.sub_area || '';
                        }
                        if (document.getElementById('situacion_txt')) {
                            document.getElementById('situacion_txt').value = data.colaborador_info.situacion || '';
                        }
                    }
                }
            }
        } catch (error) {
            console.error('Error loading user data:', error);
        }
    }

    async function loadTrainingProgress() {
        try {
            const res = await fetch('/m_capacitaciones/assets/php/progreso_api.php?action=get_my_progress', {
                cache: 'no-store'
            });
            const result = await res.json();

            if (result.success && result.data) {
                const progress = result.data;
                const percentage = Math.round(progress.porcentaje_completado || 0);
                
                // Update progress bar
                const progressBar = document.getElementById('progressBar');
                const progressPercentage = document.getElementById('progressPercentage');
                
                if (progressBar) {
                    progressBar.style.width = percentage + '%';
                    progressBar.setAttribute('aria-valuenow', percentage);
                    progressBar.querySelector('.visually-hidden').textContent = percentage + '%';
                }
                
                if (progressPercentage) {
                    progressPercentage.textContent = percentage + '%';
                }

                // Update counts
                const completedCount = document.getElementById('completedCount');
                const totalCount = document.getElementById('totalCount');
                
                if (completedCount) {
                    completedCount.textContent = progress.capacitaciones_realizadas || 0;
                }
                if (totalCount) {
                    totalCount.textContent = progress.capacitaciones_programadas || 0;
                }
            }
        } catch (error) {
            console.error('Error loading progress:', error);
        }
    }

    async function loadLastTrainings() {
        try {
            const res = await fetch('/m_capacitaciones/assets/php/progreso_api.php?action=get_last_trainings&limit=5', {
                cache: 'no-store'
            });
            const result = await res.json();

            const container = document.getElementById('lastTrainingsContainer');
            if (!container) return;

            if (result.success && result.data && result.data.length > 0) {
                container.innerHTML = result.data.map(training => `
                    <div class="mb-3 pb-2 border-bottom">
                        <div class="d-flex justify-content-between align-items-start">
                            <div>
                                <h6 class="mb-1">${training.tema}</h6>
                                <small class="text-muted">
                                    ${training.lugar ? training.lugar + ' - ' : ''}
                                    ${formatDate(training.fecha)}
                                </small>
                            </div>
                            <span class="badge bg-success">Completada</span>
                        </div>
                    </div>
                `).join('');
            } else {
                container.innerHTML = `
                    <div class="text-center text-muted">
                        <i class="fas fa-info-circle"></i>
                        <p class="mb-0">No hay capacitaciones registradas</p>
                    </div>
                `;
            }
        } catch (error) {
            console.error('Error loading last trainings:', error);
            const container = document.getElementById('lastTrainingsContainer');
            if (container) {
                container.innerHTML = '<div class="alert alert-danger">Error al cargar capacitaciones</div>';
            }
        }
    }

    async function loadPendingTrainings() {
        try {
            const res = await fetch('/m_capacitaciones/assets/php/progreso_api.php?action=get_pending_trainings', {
                cache: 'no-store'
            });
            const result = await res.json();

            const container = document.getElementById('pendingTrainingsContainer');
            if (!container) return;

            if (result.success && result.data && result.data.length > 0) {
                container.innerHTML = `
                    <div class="table-responsive">
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th>Tema</th>
                                    <th>Fecha Próxima</th>
                                    <th>Estado</th>
                                    <th>Responsable</th>
                                </tr>
                            </thead>
                            <tbody>
                                ${result.data.map(training => {
                                    const badgeClass = training.estado === 'vencida' ? 'bg-danger' : 
                                                      training.estado === 'proximo_vencer' ? 'bg-warning' : 'bg-info';
                                    const estadoText = training.estado === 'vencida' ? 'Vencida' : 
                                                      training.estado === 'proximo_vencer' ? 'Próxima a vencer' : 'Pendiente';
                                    
                                    return `
                                        <tr>
                                            <td>${training.tema}</td>
                                            <td>${formatDate(training.fecha_proxima)}</td>
                                            <td><span class="badge ${badgeClass}">${estadoText}</span></td>
                                            <td><small>${training.responsable}</small></td>
                                        </tr>
                                    `;
                                }).join('')}
                            </tbody>
                        </table>
                    </div>
                `;
            } else {
                container.innerHTML = `
                    <div class="text-center text-muted py-3">
                        <i class="fas fa-check-circle fa-2x mb-2"></i>
                        <p class="mb-0">No hay capacitaciones pendientes</p>
                    </div>
                `;
            }
        } catch (error) {
            console.error('Error loading pending trainings:', error);
            const container = document.getElementById('pendingTrainingsContainer');
            if (container) {
                container.innerHTML = '<div class="alert alert-danger">Error al cargar capacitaciones pendientes</div>';
            }
        }
    }

    async function loadScheduledTrainings() {
        try {
            const res = await fetch('/m_capacitaciones/assets/php/progreso_api.php?action=get_scheduled_trainings', {
                cache: 'no-store'
            });
            const result = await res.json();

            const container = document.getElementById('scheduledTrainingsContainer');
            if (!container) return;

            if (result.success && result.data && result.data.length > 0) {
                container.innerHTML = `
                    <div class="table-responsive">
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th>Tema</th>
                                    <th>Última Capacitación</th>
                                    <th>Próxima Fecha</th>
                                    <th>Frecuencia</th>
                                    <th>Estado</th>
                                    <th>Responsable</th>
                                </tr>
                            </thead>
                            <tbody>
                                ${result.data.map(training => {
                                    const estadoText = training.estado === 'vencida' ? 'Vencida' : 
                                                      training.estado === 'proximo_vencer' ? 'Próxima a vencer' : 
                                                      training.estado === 'vigente' ? 'Vigente' : 'Pendiente';
                                    
                                    return `
                                        <tr>
                                            <td>
                                                <strong>${training.tema}</strong>
                                                ${training.sub_area ? `<br><small class="text-muted">${training.sub_area}</small>` : ''}
                                            </td>
                                            <td>${training.fecha_ultima_capacitacion ? formatDate(training.fecha_ultima_capacitacion) : 'Sin registro'}</td>
                                            <td>${formatDate(training.fecha_proxima)}</td>
                                            <td>Cada ${training.frecuencia_meses} mes${training.frecuencia_meses > 1 ? 'es' : ''}</td>
                                            <td><span class="badge bg-${training.badge_class}">${estadoText}</span></td>
                                            <td><small>${training.responsable}</small></td>
                                        </tr>
                                    `;
                                }).join('')}
                            </tbody>
                        </table>
                    </div>
                `;
            } else {
                container.innerHTML = `
                    <div class="text-center text-muted py-3">
                        <i class="fas fa-calendar-alt fa-2x mb-2"></i>
                        <p class="mb-0">No hay capacitaciones programadas</p>
                    </div>
                `;
            }
        } catch (error) {
            console.error('Error loading scheduled trainings:', error);
            const container = document.getElementById('scheduledTrainingsContainer');
            if (container) {
                container.innerHTML = '<div class="alert alert-danger">Error al cargar capacitaciones programadas</div>';
            }
        }
    }

    async function loadCompletedTrainings() {
        try {
            const res = await fetch('/m_capacitaciones/assets/php/progreso_api.php?action=get_completed_trainings_details', {
                cache: 'no-store'
            });
            const result = await res.json();

            const container = document.getElementById('completedTrainingsContainer');
            if (!container) return;

            if (result.success && result.data && result.data.length > 0) {
                const trainings = result.data;
                container.innerHTML = `
                    <div class="table-responsive">
                        <table class="table table-sm table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>Tema</th>
                                    <th>Tipo de Actividad</th>
                                    <th>Proceso</th>
                                    <th>Fecha</th>
                                    <th>Responsable</th>
                                </tr>
                            </thead>
                            <tbody>
                                ${trainings.map(training => `
                                    <tr>
                                        <td><strong>${training.tema}</strong></td>
                                        <td>${training.tipo_actividad || '-'}</td>
                                        <td>${training.proceso || '-'}</td>
                                        <td>${formatDate(training.fecha)}</td>
                                        <td><small>${training.responsable || '-'}</small></td>
                                    </tr>
                                `).join('')}
                            </tbody>
                        </table>
                    </div>
                    ${trainings.length > 0 ? `<div class="text-center mt-2"><small class="text-muted">Total: ${trainings.length} capacitaciones realizadas</small></div>` : ''}
                `;
            } else {
                container.innerHTML = `
                    <div class="text-center text-muted py-3">
                        <i class="fas fa-info-circle fa-2x mb-2"></i>
                        <p class="mb-0">No hay capacitaciones realizadas</p>
                    </div>
                `;
            }
        } catch (error) {
            console.error('Error loading completed trainings:', error);
            const container = document.getElementById('completedTrainingsContainer');
            if (container) {
                container.innerHTML = '<div class="alert alert-danger">Error al cargar capacitaciones realizadas</div>';
            }
        }
    }

    function formatDate(dateString) {
        if (!dateString) return '-';
        const date = new Date(dateString);
        return date.toLocaleDateString('es-CO', { 
            year: 'numeric', 
            month: 'short', 
            day: 'numeric' 
        });
    }

    function formatDateTime(dateString) {
        if (!dateString) return '-';
        try {
            const date = new Date(dateString);
            return date.toLocaleString('es-CO', {
                year: 'numeric',
                month: '2-digit',
                day: '2-digit',
                hour: '2-digit',
                minute: '2-digit'
            });
        } catch (e) {
            return dateString;
        }
    }
})();
