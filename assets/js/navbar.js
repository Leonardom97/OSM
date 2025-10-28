// assets/js/navbar.js
// Manages navbar functionality including user display and logout

(function () {
  'use strict';

  let notificationCheckInterval;

  document.addEventListener('DOMContentLoaded', async function() {
    try {
      // Fetch and display user information
      const res = await fetch('/php/verificar_sesion.php', { cache: 'no-store' });
      const data = await res.json();

      if (!data.success) {
        // Session not valid, redirect to login
        window.location.href = '/index.html';
        return;
      }

      // Display user name in navbar
      const nombreEl = document.getElementById('usuarioNombre');
      if (nombreEl && data.nombre) {
        nombreEl.textContent = data.nombre;
      }

      // Setup notifications
      setupNotifications();

      // Setup logout button
      const logoutBtn = document.getElementById('logoutBtn');
      if (logoutBtn) {
        logoutBtn.addEventListener('click', async function(e) {
          e.preventDefault();
          
          // Clear notification interval
          if (notificationCheckInterval) {
            clearInterval(notificationCheckInterval);
          }
          
          try {
            // Call logout endpoint
            const logoutRes = await fetch('/php/logout.php', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
                'X-Requested-With': 'XMLHttpRequest'
              },
              cache: 'no-store'
            });

            const logoutData = await logoutRes.json();

            if (logoutData.success) {
              // Clear any client-side storage
              if (window.sessionStorage) {
                sessionStorage.clear();
              }
              if (window.localStorage) {
                // Only clear session-related items, preserve other settings
                const keysToRemove = [];
                for (let i = 0; i < localStorage.length; i++) {
                  const key = localStorage.key(i);
                  if (key && (key.includes('session') || key.includes('user') || key.includes('token'))) {
                    keysToRemove.push(key);
                  }
                }
                keysToRemove.forEach(key => localStorage.removeItem(key));
              }

              // Redirect to login page
              window.location.href = '/index.html';
            } else {
              console.error('Logout failed:', logoutData.message);
              alert('Error al cerrar sesión. Por favor, intenta nuevamente.');
            }
          } catch (error) {
            console.error('Error during logout:', error);
            // Force redirect even if logout fails
            window.location.href = '/index.html';
          }
        });
      }

    } catch (error) {
      console.error('Error initializing navbar:', error);
    }
  });

  async function setupNotifications() {
    // Load notifications on page load
    await loadNotifications();

    // Check for notifications every 5 minutes
    notificationCheckInterval = setInterval(loadNotifications, 5 * 60 * 1000);

    // Reload notifications when dropdown is opened
    const notificationBell = document.getElementById('notificationBell');
    if (notificationBell) {
      notificationBell.addEventListener('click', async function(e) {
        await loadNotifications();
      });
    }
  }

  async function loadNotifications() {
    try {
      const res = await fetch('/m_capacitaciones/assets/php/notificaciones_api.php?action=get_my_notifications', {
        cache: 'no-store'
      });
      const data = await res.json();

      if (data.success && data.data) {
        updateNotificationUI(data.data);
      }
    } catch (error) {
      console.error('Error loading notifications:', error);
    }
  }

  function updateNotificationUI(notifications) {
    const badge = document.getElementById('notificationBadge');
    const notificationList = document.getElementById('notificationList');

    if (!badge || !notificationList) return;

    // Filter unread notifications
    const unread = notifications.filter(n => !n.leida);
    
    // Update badge
    if (unread.length > 0) {
      badge.textContent = unread.length > 99 ? '99+' : unread.length;
      badge.style.display = 'inline-block';
    } else {
      badge.style.display = 'none';
    }

    // Update notification list
    if (notifications.length === 0) {
      notificationList.innerHTML = `
        <div class="text-center p-3 text-muted">
          <i class="fas fa-check-circle fa-2x mb-2"></i>
          <p class="mb-0">No hay capacitaciones pendientes</p>
        </div>
      `;
      return;
    }

    notificationList.innerHTML = notifications.slice(0, 5).map(notif => {
      const bgClass = notif.estado === 'vencida' ? 'bg-danger' : 
                      notif.estado === 'proximo_vencer' ? 'bg-warning' : 'bg-info';
      const icon = notif.estado === 'vencida' ? 'fa-exclamation-triangle' : 
                   notif.estado === 'proximo_vencer' ? 'fa-clock' : 'fa-calendar-alt';
      
      const daysText = notif.dias_para_vencimiento < 0 ? 
        `Vencida hace ${Math.abs(notif.dias_para_vencimiento)} días` :
        `Faltan ${notif.dias_para_vencimiento} días`;

      return `
        <a class="dropdown-item d-flex align-items-center ${notif.leida ? 'text-muted' : ''}" 
           href="/Usuarios.html" 
           onclick="markAsRead(${notif.id})">
          <div class="me-3">
            <div class="${bgClass} icon-circle">
              <i class="fas ${icon} text-white"></i>
            </div>
          </div>
          <div style="flex: 1;">
            <div class="small text-gray-500">${notif.tema_nombre}</div>
            <span class="fw-bold">${daysText}</span>
          </div>
        </a>
      `;
    }).join('');

    if (notifications.length > 5) {
      notificationList.innerHTML += `
        <div class="text-center small text-gray-500 p-2">
          ... y ${notifications.length - 5} más
        </div>
      `;
    }
  }

  window.markAsRead = async function(id) {
    try {
      await fetch(`/m_capacitaciones/assets/php/notificaciones_api.php?action=mark_as_read&id=${id}`, {
        method: 'POST'
      });
    } catch (error) {
      console.error('Error marking notification as read:', error);
    }
  };
})();
