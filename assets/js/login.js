document.addEventListener('DOMContentLoaded', function () {
    // Password visibility toggle functionality
    document.querySelectorAll('.toggle-password').forEach(icon => {
        icon.addEventListener('click', function() {
            const targetId = this.getAttribute('data-target');
            const passwordField = document.getElementById(targetId);
            
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                this.classList.remove('fa-eye');
                this.classList.add('fa-eye-slash');
            } else {
                passwordField.type = 'password';
                this.classList.remove('fa-eye-slash');
                this.classList.add('fa-eye');
            }
        });
    });

    // Login Colaborador
    const colaboradorForm = document.getElementById('registerForm');
    if (colaboradorForm) {
        colaboradorForm.addEventListener('submit', function (e) {
            e.preventDefault();
            const data = new FormData(colaboradorForm);

            fetch('php/login_colaborador.php', {
                method: 'POST',
                body: data
            })
            .then(res => res.json())
            .then(res => {
                if (res.success) {
                    window.location.href = res.redirect;
                } else if (res.concurrent_session) {
                    // Handle concurrent session warning
                    handleConcurrentSession(res, data, 'colaborador');
                } else {
                    alert(res.message || 'Error al iniciar sesión como colaborador.');
                }
            })
            .catch(err => {
                alert("Error de conexión con el servidor (colaborador).");
                console.error(err);
            });
        });
    }

    // Login Administrador
    const adminForm = document.getElementById('loginForm');
    if (adminForm) {
        adminForm.addEventListener('submit', function (e) {
            e.preventDefault();

            const data = new FormData(adminForm);
            const cedula = data.get('Ingreso_user')?.trim();
            const password = data.get('password')?.trim();

            if (!cedula || !password) {
                alert("La cédula y la contraseña son obligatorias");
                return;
            }

            fetch('php/login_admin.php', {
                method: 'POST',
                body: data
            })
            .then(res => res.json())
            .then(res => {
                if (res.success) {
                    window.location.href = res.redirect;
                } else if (res.concurrent_session) {
                    // Handle concurrent session warning
                    handleConcurrentSession(res, data, 'admin');
                } else {
                    alert(res.message || 'Error al iniciar sesión como administrador.');
                }
            })
            .catch(err => {
                alert("Error de conexión con el servidor (admin).");
                console.error(err);
            });
        });
    }
});

function handleConcurrentSession(response, formData, tipo) {
    const existingSession = response.existing_session || {};
    const host = existingSession.host || 'Desconocido';
    const ip = existingSession.ip || 'Desconocida';
    const fecha = existingSession.fecha_inicio ? new Date(existingSession.fecha_inicio).toLocaleString('es-ES') : 'Desconocida';
    
    const message = `Ya existe una sesión activa para tu cuenta.\n\n` +
                   `Host: ${host}\n` +
                   `IP: ${ip}\n` +
                   `Iniciada: ${fecha}\n\n` +
                   `¿Deseas cerrar la sesión anterior y continuar?`;
    
    if (confirm(message)) {
        // Force login by closing existing session
        formData.append('force_login', 'true');
        
        const endpoint = tipo === 'admin' ? 'php/login_admin.php' : 'php/login_colaborador.php';
        
        fetch(endpoint, {
            method: 'POST',
            body: formData
        })
        .then(res => res.json())
        .then(res => {
            if (res.success) {
                window.location.href = res.redirect;
            } else {
                alert(res.message || 'Error al forzar inicio de sesión.');
            }
        })
        .catch(err => {
            alert("Error de conexión con el servidor.");
            console.error(err);
        });
    }
}
