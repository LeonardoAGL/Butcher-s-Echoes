// Mode de joc
global.player_state = "normal";

if (variable_global_exists("spawn_x")) {
    x = global.spawn_x;
    y = global.spawn_y;

    global.spawn_x = undefined;
    global.spawn_y = undefined;
}

// Variables de moviment
spd = 2; // velocitat suau
hsp = 0;
vsp = 0;

last_direction = "right";
sprite_index = spr_player_idle_right;

// Càmera
var cam_w = 288;
var cam_h = 208;
global.camera = camera_create_view(0, 0, cam_w, cam_h, 0, id, -1, -1, cam_w, cam_h);
view_camera[0] = global.camera;
camera_set_view_size(global.camera, cam_w, cam_h);