// Movimiento en Menu Esc
if (instance_exists(objMenu)) {
    if (objMenu.menu_type == "pause") {
        exit;
    }
}

// Direccion de movimiento
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
    sprite_index = spr_player_walk_down;
	}
	else if (keyboard_check(vk_up)) {
    vsp = -spd;
    last_direction = "up";
    sprite_index = spr_player_idle_left;
	}
}

// Colisiones
if (!place_meeting(x + hsp, y, objBlock)) {
    x += hsp;
}
if (!place_meeting(x, y + vsp, objBlock)) {
    y += vsp;
}

// Sprites segun direccion
if (hsp == 0 && vsp == 0) {
    switch (last_direction) {
        case "right": sprite_index = spr_player_idle_right; break;
        case "left": sprite_index = spr_player_idle_left; break;
        case "down": sprite_index = spr_player_idle_down; break;
        case "up": sprite_index = spr_player_idle_left; break; 
    }
}

// Camara seguimiento
var camX = x - 144;
var camY = y - 104;
camera_set_view_pos(global.camera, camX, camY)

// Control de pausa con Esc
if (keyboard_check_pressed(vk_escape)) {
    if (!instance_exists(objMenu)) {
        var m = instance_create_layer(109, 40, "UILayer_1", objMenu);
		m.menu_type = "pause"; // Assignem el tipus de menú pausa
        m.update_options();    // Actualitzem les opcions que mostrarà
    }
}