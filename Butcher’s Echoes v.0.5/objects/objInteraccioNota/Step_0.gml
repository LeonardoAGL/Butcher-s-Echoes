if (distance_to_object(Object1) < 4) {
    if (keyboard_check_pressed(ord("E"))) {

        // Busca el objDialogBox i li passa el text
        with (objDialogBox) {
            texto = other.mensaje1;
            visible = true;
        }
    }
}