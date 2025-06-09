function start_dialog(_id) {
    if (!objDialogBox.visible && global.player_state == "normal") {
        if (ds_map_exists(global.dialogs, _id)) {
            var dialog_array = global.dialogs[? _id];

            with (objDialogBox) {
                text_array = dialog_array;
                texto = text_array[0];
                page = 0;
                char_index = 0;
                char_timer = 0;
                finished_text = false;
                is_reading = true;
                visible = true;
            }

            global.dialog_active = true;
            global.player_state = "dialog";
        }
    }
}
