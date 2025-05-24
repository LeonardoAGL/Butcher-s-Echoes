if (distance_to_object(objPlayer) < 5) {
    if (keyboard_check_pressed(ord("Z"))) {
        if (!objNoteBox.visible && !mensaje_mostrado && global.player_state == "normal") {
            with (objNoteBox) {
                texto = other.mensaje1;
                visible = true;
                char_index = 0;
                finished_text = true;
            }
            global.player_state = "dialog";
            mensaje_mostrado = true;
        }
    }
} else {
    mensaje_mostrado = false;
}