 // Obrir/tancar inventari
if (keyboard_check_pressed(ord("C"))) {
    menu_abierto = !menu_abierto;
    inventory_visible = menu_abierto;

    if (menu_abierto) {
        global.player_state = "inventario";
        selected_item = -1;
    } else {
        global.player_state = "normal";
        selected_item = -1;
    }
}

// Només si l'inventari està obert
if (menu_abierto) {
    if (selected_item == -1) {
        if (keyboard_check_pressed(vk_down)) {
            selected_item = 0;
        }
        if (keyboard_check_pressed(vk_up)) {
            selected_item = array_length(inv) - 1;
        }
    } else {
        // Navegació
        if (keyboard_check_pressed(vk_up)) selected_item--;
        if (keyboard_check_pressed(vk_down)) selected_item++;

        // Limits inventari
        if (selected_item < 0) selected_item = array_length(inv) - 1;
        if (selected_item >= array_length(inv)) selected_item = 0;

        // Utilitzar item
        if (selected_item != -1 && selected_item < array_length(inv)) {
		if (keyboard_check_pressed(ord("Z"))) {
			if (inv[selected_item].effect()) { // Només es fa això si retorna TRUE (èxit)
				selected_item = -1;
				menu_abierto = false;
				inventory_visible = false;
				global.player_state = "normal";
        }
    }
}

    }
}