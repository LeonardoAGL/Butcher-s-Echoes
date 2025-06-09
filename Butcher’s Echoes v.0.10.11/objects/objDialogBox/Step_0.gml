if (visible) {
    // 1. Ometre efecte lletra per lletra només amb input_cancel
    if (!finished_text && input_cancel()) {
        char_index = string_length(texto);
        finished_text = true;
    }

    // 2. Avançar text lletra per lletra
    if (!finished_text) {
        char_timer++;
        if (char_timer >= char_speed) {
            char_index++;
            char_timer = 0;
			if (string_char_at(texto, char_index) != " ") {
			play_sfx("snd_letter1");
			}
        }

        if (char_index >= string_length(texto)) {
            finished_text = true;
        }
    }
    // 3. Si el text ja està acabat i premem acceptar, avancem o tanquem
    else if (input_accept()) {
        page++;
        if (page < array_length(text_array)) {
            texto = text_array[page];
            char_index = 0;
            char_timer = 0;
            finished_text = false;
        } else {
            // Tancar el diàleg
            visible = false;
            is_reading = false;
            global.player_state = "normal";
            global.dialog_active = false; // Afegim això!

            // Reiniciar variables per si es reutilitza
            texto = "";
            text_array = [];
            page = 0;
        }
    }
}

