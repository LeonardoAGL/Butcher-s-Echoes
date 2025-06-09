function update_options() {
    switch (menu_type) {
        case "title":
            option_array = option_title;
            break;
        case "play":
            option_array = option_play;
            break;
        case "settings":
            option_array = option_settings;
            break;
        case "fullscreen":
            option_array = option_fullscreen;
            break;
		case "volume":
			option_array = option_volume;
			break;
        case "pause":
            option_array = option_pause;
            break;
    }
    selected_index = 0;
}

in_volume_menu = false;
volumen_max = 10;


if (!variable_global_exists("has_save")) {
    global.has_save = false;
}

menu_type = "title";

option_title = ["Jugar", "Ajustes", "Salir"];
option_play = ["Nueva Partida", "Continuar"];
option_settings = ["Volumen", "Pantalla", "Controles", "Créditos"];
option_fullscreen = ["Pantalla Completa", "Ventana"];
option_volume = [
    "Volumen Música: " + string(round(global.volumen_musica * 5)),
    "Volumen Efectos: " + string(round(global.volumen_sfx * 5))
];
option_pause = ["Continuar", "Ajustes", "Volver al Menú"];

option_pause_settings = ["Volumen", "Pantalla", "Controles"];
option_pause_fullscreen = ["Pantalla Completa", "Ventana"];

update_options();

width = 120;
height = 90;
op_border = 8;
op_space = 20;
font_scale = 0.12;

selected_index = 0;
input_delay = 0;

texto_menu = Font_Menu;