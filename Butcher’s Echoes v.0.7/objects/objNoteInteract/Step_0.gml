if (distance_to_object(objPlayer) < 4) {
    if (keyboard_check_pressed(ord("Z"))) {

        // Busca el objDialogBox i li passa el text
        with (objDialogBox) {
            texto = other.mensaje1;
            visible = true;
        }
    }
}