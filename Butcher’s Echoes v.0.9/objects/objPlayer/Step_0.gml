// MENU PAUSA
if (global.player_state == "normal") {
    if (keyboard_check_pressed(vk_escape)) {
        if (!instance_exists(objMenu)) {
            var m = instance_create_layer(109, 40, "UILayer_1", objMenu);
            m.menu_type = "pause";
            m.update_options();
            global.player_state = "pause"; // bloquegem inputs
        }
    }
}

// MOVIMIENTO
if (global.player_state == "normal") {

    // Direccion teclado
    hsp = (keyboard_check(vk_right) - keyboard_check(vk_left)) * spd;
    vsp = (keyboard_check(vk_down) - keyboard_check(vk_up)) * spd;

    // Ultima direccion para idle
    if (hsp > 0) last_direction = "right";
    else if (hsp < 0) last_direction = "left";
    else if (vsp > 0) last_direction = "down";
    else if (vsp < 0) last_direction = "up";

    // 3. Col·lisions bàsiques amb objBlock
    if (!place_meeting(x + hsp, y, objBlock)) {
        x += hsp;
    }
    if (!place_meeting(x, y + vsp, objBlock)) {
        y += vsp;
    }

    // Sprites segun movimiento
    if (hsp != 0 || vsp != 0) {  //Caminando
        switch (last_direction) {
            case "right": sprite_index = spr_player_walk_right; break;
            case "left": sprite_index = spr_player_walk_left; break;
            case "down": sprite_index = spr_player_walk_down; break;
            case "up": sprite_index = spr_player_idle_left; break; // placeholder
        }
    } else {  //Quieto
        switch (last_direction) {
            case "right": sprite_index = spr_player_idle_right; break;
            case "left": sprite_index = spr_player_idle_left; break;
            case "down": sprite_index = spr_player_idle_down; break;
            case "up": sprite_index = spr_player_idle_left; break; // placeholder
        }
    }
}

// CAMARA
var cam_obj_x = x - 175;
var cam_obj_y = y - 126;

var cam_actual_x = camera_get_view_x(global.camera);
var cam_actual_y = camera_get_view_y(global.camera);

var cam_final_x = lerp(cam_actual_x, cam_obj_x, 0.1);
var cam_final_y = lerp(cam_actual_y, cam_obj_y, 0.1);

camera_set_view_pos(global.camera, (cam_final_x), (cam_final_y));