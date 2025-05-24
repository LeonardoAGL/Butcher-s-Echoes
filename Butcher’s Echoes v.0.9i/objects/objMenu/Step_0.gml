if (input_delay > 0) {
    input_delay--;
} else {
    if (keyboard_check_pressed(vk_up)) {
        selected_index--;
        if (selected_index < 0) selected_index = array_length(option_array) - 1;
        if (menu_type == "play" && selected_index == 1 && !global.has_save) {
            selected_index = 0;
        }
        input_delay = 5;
    }

    if (keyboard_check_pressed(vk_down)) {
        selected_index++;
        if (menu_type == "play" && selected_index == 1 && !global.has_save) {
            selected_index = 0;
        } else if (selected_index >= array_length(option_array)) {
            selected_index = 0;
        }
        input_delay = 5;
    }

    if (keyboard_check_pressed(ord("Z"))) {
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
                    case 0: break; // Volumen (futur)
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

    // Tornar enrere amb la tecla X
    if (keyboard_check_pressed(ord("X"))) {
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
