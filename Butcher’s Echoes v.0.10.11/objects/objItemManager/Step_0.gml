// Abrir Inventario
if (input_inventory() && global.player_state == "normal") {
    menu_abierto = true;
    inventory_visible = true;
    global.player_state = "inventario";
    selected_item = -1;
	play_sfx("snd_inventory3")
}

// Cerrar Inventario
if (input_cancel() && global.player_state == "inventario") {
    menu_abierto = false;
    inventory_visible = false;
    global.player_state = "normal";
    selected_item = -1;
	play_sfx("snd_inventory3")
}

// Només si l'inventari està obert
if (menu_abierto) {
    if (selected_item == -1) {
        if (input_down_menu()) {
            selected_item = 0;
			play_sfx("snd_inventory1")
        }
        if (input_up_menu()) {
            selected_item = array_length(inv) - 1;
			play_sfx("snd_inventory1")
        }
    } else {
        // Navegació
        if (input_up_menu()) {
			selected_item--;
			play_sfx("snd_inventory1")
		}
		
        if (input_down_menu()) {
			selected_item++;
			play_sfx("snd_inventory1")
		}

        // Limits inventari
        if (selected_item < 0) selected_item = array_length(inv) - 1;
        if (selected_item >= array_length(inv)) selected_item = 0;

        // Utilitzar item
        if (selected_item != -1 && selected_item < array_length(inv)) {
		if (input_accept()) {
			if (inv[selected_item].effect()) { // Només es fa això si retorna TRUE (èxit)
				selected_item = -1;
				menu_abierto = false;
				inventory_visible = false;
				play_sfx("snd_inventory2");
				global.player_state = "normal";
        }
    }
}

    }
}