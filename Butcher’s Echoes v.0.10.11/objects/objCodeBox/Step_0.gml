if (global.codebox_data.activo) {
    var data = global.codebox_data;

    // Cancelar
    if (input_cancel()) {
        global.codebox_data.activo = false;
        global.player_state = "normal";
        char_index = 0;
        reset_timer = -1;
    }

    // Si estem esperant reinici d'error
    if (data.estado == "error") {
        reset_timer--;
        if (reset_timer <= 0) {
            global.codebox_data.input = "";
            char_index = 0;
            global.codebox_data.estado = "input";
        }
    }

    // Entrada de codi
    else if (data.estado == "input") {
        for (var i = 0; i <= 9; i++) {
            if (keyboard_check_pressed(ord(string(i))) && string_length(data.input) < 6) {
                global.codebox_data.input += string(i);
                char_index++;
				play_sfx("snd_numeric");

                // Verificació automàtica
                if (string_length(global.codebox_data.input) == 6) {
                    if (global.codebox_data.input == global.codebox_data.codigo_correcto) {
                        // Codi correcte
                        global.codebox_data.estado = "correcto";
                        global.player_state = "normal";

                        // Si existeix la porta, canviem sprite i col·lisió
                        if (instance_exists(global.codebox_data.puerta_id)) {
                            with (global.codebox_data.puerta_id) {
                                sprite_index = sprite_open;
                                mask_index = noone;
                                codigo_aceptado = true; // per evitar noves interaccions
								play_sfx("snd_door1");
                            }
                        }

                        // Tanca la caixa de codi
                        global.codebox_data.activo = false;

                    } else {
                        // Error
                        global.codebox_data.estado = "error";
                        reset_timer = room_speed;
                    }
                }
            }
        }
    }
}
