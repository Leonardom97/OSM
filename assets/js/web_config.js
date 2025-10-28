/**
 * Web Configuration Loader
 * Dynamically loads and applies website configuration from database
 * This script should be included in all HTML pages to apply centralized settings
 */

(function() {
    'use strict';
    
    // Cache for configuration
    let webConfig = null;
    
    /**
     * Load web configuration from API
     */
    async function loadWebConfig() {
        try {
            const response = await fetch('/php/web_main_api.php?action=get_active');
            const result = await response.json();
            
            if (result.success && result.data) {
                webConfig = result.data;
                applyWebConfig(webConfig);
            } else {
                console.warn('No se pudo cargar la configuración web, usando valores por defecto');
                applyDefaultConfig();
            }
        } catch (error) {
            console.error('Error al cargar configuración web:', error);
            applyDefaultConfig();
        }
    }
    
    /**
     * Apply web configuration to the page
     */
    function applyWebConfig(config) {
        // Update page title
        if (config.site_title) {
            document.title = config.site_title;
        }
        
        // Update favicon
        if (config.favicon_path) {
            updateFavicon(config.favicon_path);
        }
        
        // Update footer text
        if (config.footer_text) {
            updateFooterText(config.footer_text);
        }
        
        // Update login image (only on login page)
        if (config.login_image_path && document.querySelector('.bg-login-image')) {
            updateLoginImage(config.login_image_path);
        }
        
        // Update primary color
        if (config.primary_color) {
            updatePrimaryColor(config.primary_color);
        }
        
        // Make body visible after applying configuration
        document.body.style.visibility = 'visible';
    }
    
    /**
     * Apply default configuration
     */
    function applyDefaultConfig() {
        const defaultConfig = {
            site_title: 'OSM',
            footer_text: '© OSM 2025',
            favicon_path: 'assets/img/Sin título-2.png',
            login_image_path: 'assets/img/ico.jpg',
            primary_color: '#772e22'
        };
        applyWebConfig(defaultConfig);
        // Ensure body is visible even with defaults
        document.body.style.visibility = 'visible';
    }
    
    /**
     * Update favicon
     */
    function updateFavicon(path) {
        // Remove existing favicon links
        const existingLinks = document.querySelectorAll('link[rel="icon"]');
        existingLinks.forEach(link => link.remove());
        
        // Add new favicon
        const link = document.createElement('link');
        link.rel = 'icon';
        link.type = 'image/png';
        link.href = getAbsolutePath(path);
        document.head.appendChild(link);
    }
    
    /**
     * Update footer text
     */
    function updateFooterText(text) {
        // Find all footer copyright elements - check multiple selectors
        const selectors = [
            '.copyright span',
            'footer .copyright span',
            '.sticky-footer .copyright span',
            '.copyright',
            'footer .copyright',
            '.sticky-footer .copyright'
        ];
        
        let updated = false;
        selectors.forEach(selector => {
            const elements = document.querySelectorAll(selector);
            elements.forEach(element => {
                if (element.tagName === 'SPAN') {
                    element.textContent = text;
                    updated = true;
                } else if (element.tagName === 'DIV' && element.querySelector('span')) {
                    element.querySelector('span').textContent = text;
                    updated = true;
                } else if (element.tagName === 'DIV') {
                    // If no span, update the div directly
                    element.textContent = text;
                    updated = true;
                }
            });
        });
        
        if (!updated) {
            console.warn('No se encontraron elementos de footer para actualizar');
        }
    }
    
    /**
     * Update login image
     */
    function updateLoginImage(path) {
        const loginImageDiv = document.querySelector('.bg-login-image');
        if (loginImageDiv) {
            const absolutePath = getAbsolutePath(path);
            loginImageDiv.style.background = `url('${absolutePath}') round`;
            loginImageDiv.style.backgroundSize = 'contain';
        }
    }
    
    /**
     * Update primary color
     */
    function updatePrimaryColor(color) {
        // Calculate derived colors
        const rgb = hexToRgb(color);
        const rgbString = `${rgb.r},${rgb.g},${rgb.b}`;
        
        // Create or update style element for dynamic colors
        let styleElement = document.getElementById('dynamic-theme-colors');
        if (!styleElement) {
            styleElement = document.createElement('style');
            styleElement.id = 'dynamic-theme-colors';
            document.head.appendChild(styleElement);
        }
        
        // Calculate hover and active colors (slightly darker)
        const hoverColor = adjustBrightness(color, -10);
        const activeColor = adjustBrightness(color, -20);
        
        // Update CSS variables
        styleElement.textContent = `
            :root, [data-bs-theme=light] {
                --bs-primary: ${color};
                --bs-primary-rgb: ${rgbString};
                --bs-primary-text-emphasis: ${adjustBrightness(color, -40)};
                --bs-primary-bg-subtle: ${adjustBrightness(color, 60)};
                --bs-primary-border-subtle: ${adjustBrightness(color, 40)};
                --bs-link-color: ${color};
                --bs-link-color-rgb: ${rgbString};
                --bs-link-hover-color: ${color};
                --bs-link-hover-color-rgb: ${rgbString};
                --bs-focus-ring-color: rgba(${rgbString}, 0.25);
            }
            
            .btn-primary {
                --bs-btn-bg: ${color};
                --bs-btn-border-color: ${color};
                --bs-btn-hover-bg: ${hoverColor};
                --bs-btn-hover-border-color: ${hoverColor};
                --bs-btn-active-bg: ${activeColor};
                --bs-btn-active-border-color: ${activeColor};
                --bs-btn-disabled-bg: ${color};
                --bs-btn-disabled-border-color: ${color};
            }
            
            .btn-outline-primary {
                --bs-btn-color: ${color};
                --bs-btn-border-color: ${color};
                --bs-btn-hover-bg: ${color};
                --bs-btn-hover-border-color: ${color};
                --bs-btn-active-bg: ${color};
                --bs-btn-active-border-color: ${color};
                --bs-btn-disabled-color: ${color};
                --bs-btn-disabled-border-color: ${color};
            }
            
            .sidebar, #sidebar-container, nav.sidebar, .navbar.sidebar {
                background: ${color} !important;
            }
            
            .nav-tabs .nav-link.active {
                background-color: ${color};
            }
            
            .btn:focus,
            .form-select:focus,
            .form-control:focus {
                border-color: ${color};
                box-shadow: 0 0 0 0.25rem rgba(${rgbString}, 0.25);
            }
            
            .page-link:focus {
                border-color: ${color};
                box-shadow: 0 0 0 0.25rem rgba(${rgbString}, 0.25);
            }
            
            .active > .page-link, .page-link.active {
                background-color: ${color};
                border-color: ${color};
            }
            
            .dropdown-menu {
                --bs-dropdown-link-hover-bg: rgba(${rgbString}, 0.6);
                --bs-dropdown-link-active-bg: ${color};
            }
            
            .dropdown-item.dropdown-logout {
                color: ${color} !important;
            }
            
            .dropdown-item.dropdown-logout:hover {
                background-color: rgba(${rgbString}, 0.11);
            }
            
            .dropdown-item.dropdown-logout:active {
                background-color: ${color} !important;
            }
            
            .dropdown .dropdown-list .dropdown-header {
                background-color: ${color};
                border: 1px solid ${color};
            }
            
            .bg-gradient-primary {
                background: ${color} !important;
            }
            
            .text-primary {
                color: ${color} !important;
            }
            
            h1.text-primary, h2.text-primary, h3.text-primary, h4.text-primary, h5.text-primary, h6.text-primary {
                color: ${color} !important;
            }
            
            /* Consulta-cap module dynamic colors */
            .consulta-cap-toolbar {
                background: ${color} !important;
            }
            
            .consulta-cap-btn {
                color: ${color} !important;
            }
            
            .consulta-cap-btn.accent {
                background: ${color} !important;
            }
            
            .consulta-cap-select {
                border-color: ${color} !important;
            }
            
            .consulta-cap-table thead th {
                color: ${color} !important;
            }
            
            .consulta-cap-input:focus {
                border-color: ${color} !important;
            }
            
            .icon-sort:hover {
                color: ${color} !important;
            }
            
            #selectAll {
                accent-color: ${color} !important;
            }
            
            .consulta-cap-pagination .page-item .page-link {
                color: ${color} !important;
            }
            
            .consulta-cap-pagination .page-item .page-link:hover {
                background: ${color} !important;
            }
            
            .consulta-cap-pagination .active .page-link {
                background: ${adjustBrightness(color, -30)} !important;
            }
            
            .consulta-cap-footer {
                color: ${color} !important;
            }
            
            .consulta-cap-download-item {
                color: ${color} !important;
            }
        `;
    }
    
    /**
     * Convert hex color to RGB
     */
    function hexToRgb(hex) {
        const result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
        return result ? {
            r: parseInt(result[1], 16),
            g: parseInt(result[2], 16),
            b: parseInt(result[3], 16)
        } : { r: 119, g: 46, b: 34 }; // Default color
    }
    
    /**
     * Adjust color brightness
     */
    function adjustBrightness(hex, percent) {
        const rgb = hexToRgb(hex);
        const adjust = (value) => {
            const adjusted = Math.round(value + (value * percent / 100));
            return Math.max(0, Math.min(255, adjusted));
        };
        
        const r = adjust(rgb.r).toString(16).padStart(2, '0');
        const g = adjust(rgb.g).toString(16).padStart(2, '0');
        const b = adjust(rgb.b).toString(16).padStart(2, '0');
        
        return `#${r}${g}${b}`;
    }
    
    /**
     * Get absolute path for assets
     */
    function getAbsolutePath(path) {
        // If path already starts with /, it's absolute
        if (path.startsWith('/')) {
            return path;
        }
        
        // Get current page depth
        const currentPath = window.location.pathname;
        const depth = (currentPath.match(/\//g) || []).length - 1;
        
        // If we're in root or path already includes ../, return as is
        if (depth === 0 || path.includes('../')) {
            return path;
        }
        
        // Add ../ prefix based on depth
        const prefix = '../'.repeat(depth);
        return prefix + path;
    }
    
    /**
     * Get current configuration
     */
    function getWebConfig() {
        return webConfig;
    }
    
    // Expose public API
    window.WebConfig = {
        load: loadWebConfig,
        get: getWebConfig,
        apply: applyWebConfig
    };
    
    // Auto-load configuration when DOM is ready
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', loadWebConfig);
    } else {
        loadWebConfig();
    }
})();
