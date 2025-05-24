if (distance_to_object(Object1) < 4) {
    if (keyboard_check_pressed(ord("E"))) {

        with (objDialogBox) {
            texto = other.mensaje;
            visible = true;
        }
    }
}
