function update_options() {
    switch (menu_type) {
        case "title":
            if (global.has_save) {
                option_array = option_title_continue;
            } else {
                option_array = option_title;
            }
            break;
        case "settings":
            option_array = option_settings;
            break;
        case "fullscreen":
            option_array = option_fullscreen;
            break;
		case "pause":
            option_array = option_pause;
            break;
    }
    selected_index = 0; // Reset de selecció quan canviem menú
}

 // No hi ha partida al principi
if (!variable_global_exists("has_save")) {
    global.has_save = false;
}

// Inicialitzar variables de menú
menu_type = "title";

option_title = ["Nueva Partida", "Ajustes", "Salir"];
option_title_continue = ["Continuar", "Nueva Partida", "Ajustes", "Salir"];
option_settings = ["Volumen", "Pantalla", "Controles", "Creditos"];
option_fullscreen = ["Pantalla Completa", "Ventana"];
option_pause = ["Continuar", "Ajustes", "Volver al Menu"];
option_pause_settings = ["Volumen", "Pantalla", "Controles"]
option_pause_fullsreen = ["Pantalla Completa,", "Ventana"]


// Actualizar array
update_options();

// Datos visuales
width = 120;
height = 90;
op_border = 8;
op_space = 20;
font_scale = 0.12;

// Control de seleccion
selected_index = 0;
input_delay = 0;

texto_menu = Font_Menu