// Avanç lletra per lletra
text_timer++;
if (text_timer >= text_speed) {
    text_timer = 0;

    if (title_index < string_length(text_title)) {
        title_index++;
    } else if (subtitle_index < string_length(text_subtitle)) {
        subtitle_index++;
    } else if (options_index < string_length(options[0]) || options_index < string_length(options[1])) {
        options_index++;
    } else {
        text_finished = true;
    }
}

// Només si s'ha acabat tot el text, permetem navegar
if (text_finished) {
    if (input_up_menu()) {
        selected_option = (selected_option - 1 + array_length(options)) mod array_length(options);
    }
    if (input_down_menu()) {
        selected_option = (selected_option + 1) mod array_length(options);
    }

    if (input_accept()) {
        switch (selected_option) {
            case 0:
                // De moment no fa res
                break;
            case 1:
                global.player_state = "normal";
                room_goto(RoomTitleScreen);
                break;
        }
    }
}
