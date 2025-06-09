if (locked && distance_to_object(objPlayer) < 5) {

    // Si no hi ha diàleg actiu i el jugador està en estat normal, permet reactivar el diàleg
    if (!objDialogBox.visible && global.player_state == "normal" && input_accept()) {
        if (!mensaje_mostrado) {
            if (variable_instance_exists(id, "mensaje")) {
                start_dialog_by_array(mensaje);
                mensaje_mostrado = true;
            }
        }
    }

    // Si el diàleg s’ha tancat, podem tornar a mostrar-lo més endavant
    if (!objDialogBox.visible && mensaje_mostrado) {
        mensaje_mostrado = false;
    }
}