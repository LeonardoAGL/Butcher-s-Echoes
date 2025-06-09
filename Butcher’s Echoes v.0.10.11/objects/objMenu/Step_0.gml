if (input_delay > 0) {
    input_delay--;
} else {
    if (input_up_menu()) {
        selected_index--;
        if (selected_index < 0) selected_index = array_length(option_array) - 1;
        if (menu_type == "play" && selected_index == 1 && !global.has_save) {
            selected_index = 0;
        }
        input_delay = 5;
    }

    if (input_down_menu()) {
        selected_index++;
        if (menu_type == "play" && selected_index == 1 && !global.has_save) {
            selected_index = 0;
        } else if (selected_index >= array_length(option_array)) {
            selected_index = 0;
        }
        input_delay = 5;
    }

    if (input_accept()) {
        switch (menu_type) {
            case "title":
                switch (selected_index) {
                    case 0:
                        menu_type = "play";
                        update_options();
                        break;
                    case 1:
                        menu_type = "settings";
                        update_options();
                        break;
                    case 2:
                        game_end();
                        break;
                }
                break;

            case "play":
                switch (selected_index) {
                    case 0:
                        global.has_save = false;
						global.player_state = "normal"
                        room_goto(RoomInit);
                        break;
                    case 1:
                        if (global.has_save) {
                            room_goto(RoomInit); // Canvia-ho per la room de la partida guardada
                        }
                        break;
                }
                break;

            case "settings":
                switch (selected_index) {
                    case 0:
						menu_type = "volume";
						in_volume_menu = true;
						break;
                    case 1:
                        menu_type = "fullscreen";
                        update_options();
                        break;
                    case 2: break; // Controles
                    case 3:
                        menu_type = "title";
                        update_options();
                        break;
                }
                break;

            case "fullscreen":
                switch (selected_index) {
                    case 0: window_set_fullscreen(true); break;
                    case 1: window_set_fullscreen(false); break;
                }
                break;
			
			case "volume":
			    switch (selected_index) {
			        case 0:
			            global.volumen_musica += 0.2;
			            if (global.volumen_musica > 1) global.volumen_musica = 0;
			            break;
			        case 1:
			            global.volumen_sfx += 0.2;
			            if (global.volumen_sfx > 1) global.volumen_sfx = 0;
			            break;
			    }
			    // Refrescar text
			    option_volume[0] = "Volumen Música: " + string(round(global.volumen_musica * 5));
			    option_volume[1] = "Volumen Efectos: " + string(round(global.volumen_sfx * 5));
			    update_options();
			    input_delay = 10;
			    break;


            case "pause":
                switch (selected_index) {
                    case 0: // Continuar
                        instance_destroy();
                        global.player_state = "normal";
                        break;
                    case 1: // Ajustes (per ara no fa res)
                        break;
                    case 2: // Tornar al menú principal
                        if (instance_exists(objMenu)) {
                            if (objMenu.menu_type == "pause") {
                                instance_destroy(objMenu);
                            }
                        }
                        room_goto(RoomTitleScreen); // Substitueix amb la teva room del títol
                        break;
                }
                break;
        }
    }


    if (input_cancel()) {
        switch (menu_type) {
            case "fullscreen":
                menu_type = "settings";
                update_options();
                break;
            case "settings":
            case "play":
                menu_type = "title";
                update_options();
                break;
        }
    }
}
if (in_volume_menu) {
    
    if (input_left_menu()) {
        global.volumen_sfx = max(0, global.volumen_sfx - 1);
    }

    if (input_right_menu()) {
        global.volumen_sfx = min(volumen_max, global.volumen_sfx + 1);
    }

    if (input_cancel()) {
        in_volume_menu = false;
    }
}
