if (distance_to_object(objPlayer) < 4) {
    if (keyboard_check_pressed(ord("Z"))) {

        with (objDialogBox) {
            texto = other.mensaje;
            visible = true;
        }
    }
}
