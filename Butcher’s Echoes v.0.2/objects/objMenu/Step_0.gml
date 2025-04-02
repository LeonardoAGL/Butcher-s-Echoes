if (keyboard_check_pressed(vk_down)) selected = (selected + 1) mod array_length(options);
if (keyboard_check_pressed(vk_up)) selected = (selected - 1 + array_length(options)) mod array_length(options);

if (keyboard_check_pressed(vk_enter)) {
    switch (selected) {
        case 0: room_goto(RoomInit); break;
        case 1: break; //Partida ja iniciada
        case 2: game_end(); break;
    }
}