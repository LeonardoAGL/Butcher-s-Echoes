if (global.player_state == "combat") {
    draw_set_font(Font_Menu); // o la que tinguis
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    var base_x = 175;
    var spacing = 100;

    for (var i = 0; i < array_length(combat_options); i++) {
        var opt_x = base_x + (i - 1) * spacing;
        if (i == option_selected) {
            draw_set_color(c_yellow);
        } else {
            draw_set_color(c_white);
        }
        draw_text_transformed(opt_x, 200, combat_options[i], 0.09, 0.09, 0);

    }

	// Mostrar vida
	draw_set_halign(fa_left);
	draw_set_color(c_white);

	draw_text_transformed(10, 10, "Jugador: " + string(jugador_hp) + "/" + string(jugador_max_hp), 0.09, 0.09, 0);
	draw_text_transformed(10, 30, "Enemigo: " + string(enemigo_hp) + "/" + string(enemigo_max_hp), 0.09, 0.09, 0);

	}
