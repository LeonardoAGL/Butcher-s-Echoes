if (distance_to_object(objPlayer) < 5) {
    if (input_accept()) {
        if (!objNoteBox.visible && !mensaje_mostrado && global.player_state == "normal") {
            with (objNoteBox) {
                texto = other.mensaje;
				sprite_nota = other.sprite_nota;
                visible = true;
                char_index = 0;
                finished_text = true;
				play_sfx("snd_noteopen");
            }
            global.player_state = "dialog";
            mensaje_mostrado = true;
        }
    }
} else {
    mensaje_mostrado = false;
}