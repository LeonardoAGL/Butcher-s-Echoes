active = false;
visible = false;
enabled = false; // ← Nou control d'activació

path = path_add();
path_speed = 2.0;
path_following = false;

ya_empezado = false;
distancia_activacion = 120;

cooldown_timer = 0;

global.grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
mp_grid_add_instances(global.grid, objBlock, false);
