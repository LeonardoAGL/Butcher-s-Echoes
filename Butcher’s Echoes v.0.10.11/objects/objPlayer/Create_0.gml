// Colocacion del personaje
if (variable_global_exists("spawn_x")) {
    x = global.spawn_x;
    y = global.spawn_y;
	global.spawn_x = undefined;
	global.spawn_y = undefined;
}

// Variables de movimiento
spd = 1.5;
hsp = 0;
vsp = 0;

last_direction = "right";
sprite_index = spr_player_idle_right;

step_timer = 0;
step_interval = 28; // frames entre passos, ajustable segons la velocitat

// Camara
var cam_w = 350;
var cam_h = 253;
global.camera = camera_create_view(0, 0, cam_w, cam_h, 0, id, -1, -1, cam_w, cam_h);
view_camera[0] = global.camera;
camera_set_view_size(global.camera, cam_w, cam_h);

//Retorn jugador posicio
if (global.volver_a_posicion) {
    x = global.spawn_x;
    y = global.spawn_y;
    global.volver_a_posicion = false;
}