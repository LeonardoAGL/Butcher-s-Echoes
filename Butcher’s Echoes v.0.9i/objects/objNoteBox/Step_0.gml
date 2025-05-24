if (visible) {
    if (keyboard_check_pressed(ord("Z"))) {
        if (!finished_text) {
            char_index = string_length(texto);
            finished_text = true;
        } else {
            visible = false;
            global.player_state = "normal";
        }
    }
}