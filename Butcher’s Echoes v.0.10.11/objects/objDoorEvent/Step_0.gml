if (locked && distance_to_object(objPlayer) < 5) {

    // Si no hi ha diàleg actiu i el jugador està en estat normal, permet reactivar el diàleg
    if (!objDialogBox.visible && global.player_state == "normal" && input_accept()) {
        if (!mensaje_mostrado1) {

            // Mostra el diàleg
            if (variable_instance_exists(id, "mensaje")) {
                start_dialog_by_array(mensaje);
                mensaje_mostrado1 = true;
            }

            // ACTIVAR ENEMIC
            if (!enemy_activado) {
                var ene = instance_nearest(x, y, objEnemy2);
                if (ene != noone) {
                    ene.active = true;
                    ene.visible = true;
                    ene.enabled = true; // ← AIXÒ ÉS EL QUE FA QUE FUNCIONI
                }
                enemy_activado = true;
            }
        }
    }

    // Si el diàleg s’ha tancat, podem tornar a mostrar-lo més endavant
    if (!objDialogBox.visible && mensaje_mostrado1) {
        mensaje_mostrado1 = false;
    }
}
