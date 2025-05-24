if (visible) {
    if (keyboard_check_pressed(ord("Z"))) {
        if (!finished_text) {
            char_index = string_length(texto);
            finished_text = true;
        } else {
            visible = false;
            is_reading = false;
            global.player_state = "normal";
        }
    }

    if (!finished_text) {
        char_timer++;
        if (char_timer >= char_speed) {
            char_index++;
            char_timer = 0;
            if (char_index >= string_length(texto)) {
                finished_text = true;
            }
        }
    }
}