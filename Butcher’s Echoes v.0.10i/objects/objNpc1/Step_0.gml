if (!mensaje_mostrado) {
    if (keyboard_check_pressed(ord("Z")) && distance_to_object(objPlayer) < 5 && global.player_state == "normal") {

        // Canvi de fase
        if (quest_completed == true) {
            switch (dialog_phase) {
                case 3:
                    dialog_id = "npc1_4";
                    dialog_phase = 4;
                    break;
                case 4:
                    dialog_id = "npc1_5";
                    dialog_phase = 5;
                    break;
                case 5:
                    dialog_id = "npc1_6"; // un text curt que es repeteixi
                    break;
            }
        } else {
            switch (dialog_phase) {
                case 0:
                    dialog_id = "npc1_1";
                    dialog_phase = 1;
                    break;
                case 1:
                    dialog_id = "npc1_2";
                    dialog_phase = 2;
                    break;
                case 2:
                    dialog_id = "npc1_3";
                    dialog_phase = 3;
                    break;
            }
        }

        // Trobar diàleg
        var dialog = global.dialogs[? dialog_id];
        if (is_undefined(dialog) || array_length(dialog.text_array) == 0) exit;

        // Iniciar diàleg
        with (objDialogBox) {
            text_array = dialog.text_array;
            page = 0;
            texto = text_array[0];
            char_index = 0;
            char_timer = 0;
            is_reading = true;
            finished_text = false;
            visible = true;
        }

        global.player_state = "dialog";
        mensaje_mostrado = true;
    }
} else {
    if (!objDialogBox.visible) {
        mensaje_mostrado = false;
    }
}
