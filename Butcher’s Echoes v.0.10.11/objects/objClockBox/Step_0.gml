if (locked && distance_to_object(objPlayer) < 5) {
    
    if (!objDialogBox.visible && global.player_state == "normal" && input_accept()) {
        if (!mensaje_mostrado) {

            if (variable_instance_exists(id, "mensaje")) {
                start_dialog_by_array(mensaje);
                mensaje_mostrado = true;
            }
        }
    }

    if (!objDialogBox.visible && mensaje_mostrado) {
        mensaje_mostrado = false;
    }
}
