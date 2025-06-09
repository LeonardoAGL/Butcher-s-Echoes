if (combat_state == "jugador") {
    // Navegació amb dreta/esquerra
    if (input_left_menu()) {
        option_selected = (option_selected - 1 + array_length(combat_options)) mod array_length(combat_options);
    }
    if (input_right_menu()) {
        option_selected = (option_selected + 1) mod array_length(combat_options);
    }

    // Confirmar accio
    if (input_accept()) {
        var accion = combat_options[option_selected];

        switch (accion) {
            case "Atacar":
                var damage = irandom_range(10, 20);
                enemigo_hp -= damage;
                global.enemy2_hp = enemigo_hp;
                combat_state = "enemigo";
                alarm[0] = 30; // temps abans del torn enemic
                break;

			case "Defender":
			    is_defending = true; // Activem defensa
			    combat_state = "enemigo";
			    alarm[0] = 30;
			    break;

            case "Huir":
			    global.player_state = "normal";

		    // Retorn a sala anterior
		    room_goto_previous();

		    // Activem cooldown a l’enemic
		    with (objEnemy2) {
		        cooldown_timer = room_speed * 2; // ❗ Sense cap if
		    }
		    instance_destroy(); // tanquem combat manager
		    break;

        }
    }
}
