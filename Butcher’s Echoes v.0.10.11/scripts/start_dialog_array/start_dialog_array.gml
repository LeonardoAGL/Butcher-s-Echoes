function start_dialog_by_array(_array) {
    if (!objDialogBox.visible && global.player_state == "normal") {
        with (objDialogBox) {
            text_array = _array;
            texto = text_array[0];
            page = 0;
            char_index = 0;
            char_timer = 0;
            finished_text = false;
            is_reading = true;
            visible = true;
        }
        global.player_state = "dialog";
    }
}
