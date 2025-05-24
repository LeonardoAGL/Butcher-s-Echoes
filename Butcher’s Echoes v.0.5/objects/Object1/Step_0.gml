// Detectem direcció del moviment
hsp = 0;
vsp = 0;

if (global.player_state == "normal") {
	if (keyboard_check(vk_right)) {
    hsp = spd;
    last_direction = "right";
    sprite_index = spr_player_walk_right;
	}
	else if (keyboard_check(vk_left)) {
    hsp = -spd;
    last_direction = "left";
    sprite_index = spr_player_walk_left;
	}

	if (keyboard_check(vk_down)) {
    vsp = spd;
    last_direction = "down";
    sprite_index = spr_player_idle_down;
	}
	else if (keyboard_check(vk_up)) {
    vsp = -spd;
    last_direction = "up";
    sprite_index = spr_player_idle_left;
	}
}

// Col·lisions
if (!place_meeting(x + hsp, y, objBlock)) {
    x += hsp;
}
if (!place_meeting(x, y + vsp, objBlock)) {
    y += vsp;
}

// Sprite idle si no hi ha moviment
if (hsp == 0 && vsp == 0) {
    switch (last_direction) {
        case "right": sprite_index = spr_player_idle_right; break;
        case "left": sprite_index = spr_player_idle_left; break;
        case "down": sprite_index = spr_player_idle_down; break;
        case "up": sprite_index = spr_player_idle_left; break; 
    }
}

// Càmera segueix el jugador
var camX = x - 144;
var camY = y - 104;
camera_set_view_pos(global.camera, camX, camY)