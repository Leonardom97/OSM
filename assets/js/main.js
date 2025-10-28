document.addEventListener("DOMContentLoaded", async () => {
    // Cargar navbar y sidebar
    await includeComponent("includes/navbar.html", "#navbar");
    await includeComponent("includes/sidebar.html", "#sidebar");

    // Verificar sesión
    try {
        const res = await fetch("php/verificar_sesion.php");
        const data = await res.json();

        if (!data.success) {
            window.location.href = "index.html";
            return;
        }

        // Mostrar/ocultar enlaces según roles
        const roles = Array.isArray(data.roles) ? data.roles : [data.rol]; // compatibilidad
        if (roles.includes("admin")) {
            document.querySelectorAll(".menu-admin").forEach(e => e.classList.remove("d-none"));
        }
        if (roles.includes("editor")) {
            document.querySelectorAll(".menu-editor").forEach(e => e.classList.remove("d-none"));
        }
        if (roles.includes("capacitador")) {
            document.querySelectorAll(".menu-capacitador").forEach(e => e.classList.remove("d-none"));
        }

        // Note: Logout button is now handled by navbar.js
    } catch (error) {
        console.error("Error al verificar sesión:", error);
        window.location.href = "index.html";
    }
});

async function includeComponent(file, selector) {
    try {
        const res = await fetch(file);
        const html = await res.text();
        document.querySelector(selector).innerHTML = html;
    } catch (err) {
        console.error(`Error al incluir ${file}:`, err);
    }
}
