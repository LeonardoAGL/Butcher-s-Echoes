if (distance_to_object(objPlayer) < 5) {
    if (keyboard_check_pressed(ord("Z"))) {
        if (!objDialogBox.visible && !mensaje_mostrado && global.player_state == "normal") {
            with (objDialogBox) {
                texto = other.mensaje;
                visible = true;
                char_index = 0;
                char_timer = 0;
                is_reading = true;
                finished_text = false;
            }
            global.player_state = "dialog";
            mensaje_mostrado = true;
        }
    }
} else {
    mensaje_mostrado = false;
}
