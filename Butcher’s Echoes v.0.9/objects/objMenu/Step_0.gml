if (input_delay > 0) {
    input_delay--;
} else {
    // Navegar opciones
    if (keyboard_check_pressed(vk_up)) {
        selected_index--;
        if (selected_index < 0) selected_index = array_length(option_array) - 1;
        input_delay = 5;
    }

    if (keyboard_check_pressed(vk_down)) {
        selected_index++;
        if (selected_index >= array_length(option_array)) selected_index = 0;
        input_delay = 5;
    }

    // Confirmar opció
    if (keyboard_check_pressed(ord("Z"))) {
        switch (menu_type) {
			case "title":
			    switch (selected_index) {
			        case 0:
			            if (global.has_save) {
			                // Continuar (Save)
			            } else {
			                // Nueva Partida (No save)
			                room_goto(RoomInit);
			            }
			            break;
			        case 1:
			            if (global.has_save) {
			                // Nueva Partida
			                global.has_save = false;
							// Esborrem la partida anterior
			                room_goto(RoomInit);
			            } else {
			                //Ajustes
			                menu_type = "settings";
			                update_options();
			            }
			            break;
			        case 2:
			            if (global.has_save) {
			                // Ajustes (Save)
			                menu_type = "settings";
			                update_options();
			            } else {
			                // Salir (No save)
			                game_end();
			            }
			            break;
			        case 3:
			            // Salir (Save)
			            game_end();
			            break;
			    }
			    break;


            case "settings":
                switch (selected_index) {
                    case 0: // Volumen
                        // (Encara no implementat)
                        break;
                    case 1: // Pantalla
                        menu_type = "fullscreen";
                        update_options();
                        break;
                    case 2: // Créditos
                        // (Encara no implementat)
                        break;
                    case 3: // Volver a Inicio
                        menu_type = "title";
                        update_options();
                        break;
                }
                break;

            case "fullscreen":
                switch (selected_index) {
                    case 0: // Pantalla Completa
                        window_set_fullscreen(true);
                        break;
                    case 1: // Ventana
                        window_set_fullscreen(false);
                        break;
                }
                break;
				
			case "pause": // Pausa
            switch (selected_index) {
                case 0: // Continuar
                    instance_destroy(); // Esborrem el menú i tornem a jugar
					global.player_state = "normal";
                    break;
				case 1: // Ajustes
                    break;
                case 2: // Volver al menu
					 if (instance_exists(objMenu)) {
				         if (objMenu.menu_type == "pause") {
				            instance_destroy(objMenu);
				         }
				     }
                    room_goto(RoomTitleScreen);
                    break;
            }
            break;
        }
    }
	
	// Volver atras
	if (keyboard_check_pressed(ord("X"))) {
	    switch (menu_type) {
	        case "fullscreen":
	            menu_type = "settings";
	            update_options();
	            break;
	        case "settings":
	            menu_type = "title";
	            update_options();
	            break;
	    }
	}

}
