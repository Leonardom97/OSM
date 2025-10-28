/**
 * Web Main Manager
 * JavaScript for managing web configuration interface
 */

(function() {
    'use strict';
    
    let currentConfig = null;
    
    // Load sidebar and navbar components
    async function includeComponent(file, selector) {
        try {
            const res = await fetch(file);
            const html = await res.text();
            const el = document.querySelector(selector);
            if (el) el.innerHTML = html;
        } catch (err) {
            console.error(`Error al cargar ${file}:`, err);
        }
    }
    
    // Initialize when DOM is ready
    document.addEventListener('DOMContentLoaded', async function() {
        // Load navbar and sidebar first
        await includeComponent("/includes/navbar.html", "#navbar");
        await includeComponent("/includes/sidebar.html", "#sidebar");
        
        // Then initialize the rest
        initializeEventListeners();
        loadCurrentConfig();
        loadAllThemes();
    });
    
    /**
     * Initialize event listeners
     */
    function initializeEventListeners() {
        // Form submit
        document.getElementById('configForm').addEventListener('submit', handleFormSubmit);
        
        // Color picker sync
        document.getElementById('primaryColor').addEventListener('input', function(e) {
            document.getElementById('primaryColorHex').value = e.target.value.toUpperCase();
        });
        
        document.getElementById('primaryColorHex').addEventListener('input', function(e) {
            const value = e.target.value;
            if (/^#[0-9A-Fa-f]{6}$/.test(value)) {
                document.getElementById('primaryColor').value = value;
            }
        });
        
        // File uploads
        document.getElementById('uploadFavicon').addEventListener('click', function() {
            uploadFile('favicon');
        });
        
        document.getElementById('uploadLoginImage').addEventListener('click', function() {
            uploadFile('login_image');
        });
        
        // Preview uploaded files
        document.getElementById('faviconFile').addEventListener('change', function(e) {
            previewImage(e.target.files[0], 'faviconPreview');
        });
        
        document.getElementById('loginImageFile').addEventListener('change', function(e) {
            previewImage(e.target.files[0], 'loginImagePreview');
        });
        
        // Reset form
        document.getElementById('resetForm').addEventListener('click', function() {
            loadCurrentConfig();
        });
        
        // Save as new theme
        document.getElementById('saveAsNewTheme').addEventListener('click', handleSaveAsNewTheme);
    }
    
    /**
     * Load current active configuration
     */
    async function loadCurrentConfig() {
        try {
            const response = await fetch('/php/web_main_api.php?action=get_active');
            const result = await response.json();
            
            if (result.success && result.data) {
                currentConfig = result.data;
                populateForm(currentConfig);
            } else {
                showAlert('No se pudo cargar la configuración actual', 'warning');
            }
        } catch (error) {
            console.error('Error loading config:', error);
            showAlert('Error al cargar la configuración', 'danger');
        }
    }
    
    /**
     * Populate form with configuration data
     */
    function populateForm(config) {
        document.getElementById('configId').value = config.id || '';
        document.getElementById('siteTitle').value = config.site_title || 'OSM';
        document.getElementById('footerText').value = config.footer_text || '© OSM 2025';
        document.getElementById('primaryColor').value = config.primary_color || '#772e22';
        document.getElementById('primaryColorHex').value = config.primary_color || '#772e22';
        document.getElementById('themeName').value = config.theme_name || '';
        document.getElementById('faviconPath').value = config.favicon_path || '';
        document.getElementById('loginImagePath').value = config.login_image_path || '';
        
        // Show image previews if paths exist
        if (config.favicon_path) {
            showImagePreview(config.favicon_path, 'faviconPreview');
        }
        if (config.login_image_path) {
            showImagePreview(config.login_image_path, 'loginImagePreview');
        }
    }
    
    /**
     * Handle form submission
     */
    async function handleFormSubmit(e) {
        e.preventDefault();
        
        const formData = {
            id: document.getElementById('configId').value,
            site_title: document.getElementById('siteTitle').value,
            footer_text: document.getElementById('footerText').value,
            primary_color: document.getElementById('primaryColor').value,
            theme_name: document.getElementById('themeName').value || 'Default',
            favicon_path: document.getElementById('faviconPath').value,
            login_image_path: document.getElementById('loginImagePath').value,
            is_active: true
        };
        
        try {
            const response = await fetch('/php/web_main_api.php', {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(formData)
            });
            
            const result = await response.json();
            
            if (result.success) {
                showAlert('Configuración guardada exitosamente', 'success');
                
                // Reload configuration and apply changes
                await loadCurrentConfig();
                await loadAllThemes();
                
                // Apply changes immediately
                if (window.WebConfig) {
                    window.WebConfig.apply(formData);
                }
                
                // Reload page after 1 second to show all changes
                setTimeout(() => {
                    window.location.reload();
                }, 1000);
            } else {
                showAlert(result.message || 'Error al guardar configuración', 'danger');
            }
        } catch (error) {
            console.error('Error saving config:', error);
            showAlert('Error al guardar la configuración', 'danger');
        }
    }
    
    /**
     * Handle save as new theme
     */
    async function handleSaveAsNewTheme() {
        const themeName = prompt('Ingrese un nombre para el nuevo tema:');
        if (!themeName) {
            return;
        }
        
        const formData = {
            site_title: document.getElementById('siteTitle').value,
            footer_text: document.getElementById('footerText').value,
            primary_color: document.getElementById('primaryColor').value,
            theme_name: themeName,
            favicon_path: document.getElementById('faviconPath').value,
            login_image_path: document.getElementById('loginImagePath').value,
            is_active: false
        };
        
        try {
            const response = await fetch('/php/web_main_api.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(formData)
            });
            
            const result = await response.json();
            
            if (result.success) {
                showAlert('Tema guardado exitosamente', 'success');
                loadAllThemes();
            } else {
                showAlert(result.message || 'Error al guardar tema', 'danger');
            }
        } catch (error) {
            console.error('Error saving theme:', error);
            showAlert('Error al guardar el tema', 'danger');
        }
    }
    
    /**
     * Upload file
     */
    async function uploadFile(type) {
        const fileInput = document.getElementById(type === 'favicon' ? 'faviconFile' : 'loginImageFile');
        const file = fileInput.files[0];
        
        if (!file) {
            showAlert('Por favor seleccione un archivo', 'warning');
            return;
        }
        
        const formData = new FormData();
        formData.append('file', file);
        formData.append('upload_type', type);
        
        try {
            const response = await fetch('/php/web_main_upload.php', {
                method: 'POST',
                body: formData
            });
            
            const result = await response.json();
            
            if (result.success) {
                showAlert('Archivo subido exitosamente', 'success');
                
                // Update path in form
                const pathInput = document.getElementById(type === 'favicon' ? 'faviconPath' : 'loginImagePath');
                pathInput.value = result.path;
                
                // Show preview
                showImagePreview(result.path, type === 'favicon' ? 'faviconPreview' : 'loginImagePreview');
            } else {
                showAlert(result.message || 'Error al subir archivo', 'danger');
            }
        } catch (error) {
            console.error('Error uploading file:', error);
            showAlert('Error al subir el archivo', 'danger');
        }
    }
    
    /**
     * Preview image from file
     */
    function previewImage(file, previewId) {
        if (!file) return;
        
        const reader = new FileReader();
        reader.onload = function(e) {
            const preview = document.getElementById(previewId);
            preview.src = e.target.result;
            preview.style.display = 'block';
        };
        reader.readAsDataURL(file);
    }
    
    /**
     * Show image preview from path
     */
    function showImagePreview(path, previewId) {
        const preview = document.getElementById(previewId);
        preview.src = '/' + path;
        preview.style.display = 'block';
    }
    
    /**
     * Load all saved themes
     */
    async function loadAllThemes() {
        try {
            const response = await fetch('/php/web_main_api.php?action=get_all');
            const result = await response.json();
            
            if (result.success && result.data) {
                displayThemes(result.data);
            }
        } catch (error) {
            console.error('Error loading themes:', error);
        }
    }
    
    /**
     * Display themes
     */
    function displayThemes(themes) {
        const container = document.getElementById('themesContainer');
        
        if (!themes || themes.length === 0) {
            container.innerHTML = '<div class="col-12 text-center text-muted py-4">No hay temas guardados</div>';
            return;
        }
        
        container.innerHTML = '';
        
        themes.forEach(theme => {
            const col = document.createElement('div');
            col.className = 'col-md-4 mb-3';
            
            const card = document.createElement('div');
            card.className = 'card theme-card h-100' + (theme.is_active ? ' active' : '');
            
            card.innerHTML = `
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h5 class="card-title mb-0">${theme.theme_name || 'Sin nombre'}</h5>
                        <div class="color-preview" style="background-color: ${theme.primary_color}"></div>
                    </div>
                    <p class="card-text">
                        <small class="text-muted">
                            <i class="fas fa-heading"></i> ${theme.site_title}<br>
                            <i class="fas fa-align-center"></i> ${theme.footer_text}<br>
                            <i class="fas fa-palette"></i> ${theme.primary_color}
                        </small>
                    </p>
                    ${theme.is_active ? '<span class="badge bg-success">Activo</span>' : ''}
                </div>
                <div class="card-footer">
                    <button class="btn btn-sm btn-primary" onclick="applyTheme(${theme.id})">
                        <i class="fas fa-check"></i> Aplicar
                    </button>
                </div>
            `;
            
            col.appendChild(card);
            container.appendChild(col);
        });
    }
    
    /**
     * Apply theme
     */
    window.applyTheme = async function(themeId) {
        try {
            const response = await fetch(`/php/web_main_api.php?action=get_by_id&id=${themeId}`);
            const result = await response.json();
            
            if (result.success && result.data) {
                const theme = result.data;
                theme.is_active = true;
                
                const updateResponse = await fetch('/php/web_main_api.php', {
                    method: 'PUT',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(theme)
                });
                
                const updateResult = await updateResponse.json();
                
                if (updateResult.success) {
                    showAlert('Tema aplicado exitosamente', 'success');
                    loadCurrentConfig();
                    loadAllThemes();
                    
                    // Reload page to apply theme
                    setTimeout(() => {
                        window.location.reload();
                    }, 1000);
                } else {
                    showAlert('Error al aplicar tema', 'danger');
                }
            }
        } catch (error) {
            console.error('Error applying theme:', error);
            showAlert('Error al aplicar el tema', 'danger');
        }
    };
    
    /**
     * Show alert message
     */
    function showAlert(message, type = 'info') {
        const container = document.getElementById('alertContainer');
        const alert = document.createElement('div');
        alert.className = `alert alert-${type} alert-dismissible fade show`;
        alert.innerHTML = `
            ${message}
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        `;
        container.appendChild(alert);
        
        // Auto-dismiss after 5 seconds
        setTimeout(() => {
            alert.remove();
        }, 5000);
    }
})();
