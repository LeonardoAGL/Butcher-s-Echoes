if (distance_to_object(objPlayer) < 5) {

    // Si el diàleg no està visible i no s’ha mostrat, permet obrir-lo
    if (!objDialogBox.visible && global.player_state == "normal" && !mensaje_mostrado && input_accept()) {
        if (variable_instance_exists(id, "mensaje")) {
            start_dialog_by_array(mensaje);
            mensaje_mostrado = true;
        }
    }

    // Si el diàleg ja s’ha tancat, deixem tornar-lo a activar
    if (!objDialogBox.visible && mensaje_mostrado && !input_accept()) {
        mensaje_mostrado = false;
    }
}
