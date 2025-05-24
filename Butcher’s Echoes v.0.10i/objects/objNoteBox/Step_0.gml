if (visible) {
    if (keyboard_check_pressed(ord("X"))) {
        if (!finished_text) {
            char_index = string_length(texto);
            finished_text = true;
        } else {
            visible = false;
            global.player_state = "normal";
            with (objNoteInteract) mensaje_mostrado = false;
        }
    }
}
