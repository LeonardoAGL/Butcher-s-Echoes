if (distance_to_object(objPlayer) < 20 && !global.dialog_active && global.player_state == "normal") {
    if (keyboard_check_pressed(ord("Z"))) {

        if (dialog_phase <= 5) {
            if (dialog_phase == 0) {
                dialog_id = "npc1_1";
            }
            else if (dialog_phase == 1) {
                dialog_id = "npc1_2";
            }
            else if (dialog_phase == 2) {
                dialog_id = "npc1_3";
            }
            else if (dialog_phase == 3) {
                dialog_id = "npc1_4";
            }
            else if (dialog_phase == 4) {
                dialog_id = "npc1_5";
            }
            else if (dialog_phase == 5) {
                dialog_id = "npc1_6";
            }

            start_dialog(dialog_id);
            dialog_phase++;
        }
    }
}