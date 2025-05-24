// Variables de moviment
spd = 1.5; // velocitat suau (ajusta més tard si cal)
hsp = 0;
vsp = 0;

last_direction = "down";
sprite_index = spr_player_idle_down;

// Càmera
var cam_w = 210;
var cam_h = 150;
global.camera = camera_create_view(0, 0, cam_w, cam_h, 0, id, -1, -1, cam_w, cam_h);
view_camera[0] = global.camera;
camera_set_view_size(global.camera, cam_w, cam_h);

