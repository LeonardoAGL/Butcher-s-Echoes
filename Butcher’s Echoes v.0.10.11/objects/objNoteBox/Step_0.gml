if (visible) {
    if (input_cancel()) {
        if (!finished_text) {
            char_index = string_length(texto);
            finished_text = true;
        } else {
            visible = false;
            global.player_state = "normal";
            with (objNoteInteract) mensaje_mostrado = false;
			play_sfx("snd_noteclose");
        }
    }
}
