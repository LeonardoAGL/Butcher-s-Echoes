if (!visible) exit;

if (input_delay > 0) {
    input_delay--;
} else {
    // Anar cap a la dreta
    if (input_right_menu()) {
        if (selected_note == -1) {
            selected_note = 0;
        } else {
            selected_note = (selected_note + 1) mod (note_max + 1);
        }
        input_delay = 5;
    }

    // Anar cap a l'esquerra
    if (input_left_menu()) {
        if (selected_note == -1) {
            selected_note = note_max;
        } else {
            selected_note = (selected_note - 1 + (note_max + 1)) mod (note_max + 1);
        }
        input_delay = 5;
    }

    // Tancar piano amb cancel
    if (input_cancel()) {
        visible = false; // Es pot canviar per `visible = false` si vols reaprofitar l'objecte
        global.player_state = "normal";
    }
}
