if (locked && distance_to_object(objPlayer) < 4) {
    if (keyboard_check_pressed(ord("Z"))) {
        if (!objDialogBox.visible && !mensaje_mostrado && global.player_state == "normal") {
            with (objDialogBox) {
                texto = other.mensaje;
                char_index = 0;
                char_timer = 0;
                is_reading = true;
                finished_text = false;
                visible = true;
            }
				global.player_state = "dialog";
				mensaje_mostrado = true;
        }
		
    } else {
		if (!objDialogBox.visible) {
        mensaje_mostrado = false;
    }
}
}
