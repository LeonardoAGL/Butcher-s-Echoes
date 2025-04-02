// Només si estem a prop del jugador
if (distance_to_object(Object1) < 4) {
    if (keyboard_check_pressed(ord("E"))) {
        show_message(mensaje);
    }
}
