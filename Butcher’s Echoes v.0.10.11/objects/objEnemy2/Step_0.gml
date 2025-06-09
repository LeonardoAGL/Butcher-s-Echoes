// Si no està actiu, desactivem col·lisió i sortim
if (!enabled) {
    mask_index = -1;         // ← Desactiva màscara de col·lisió
    solid = false;           // ← També evitem col·lisió si és sòlid
    exit;                    // ← Ara sí, sortim
} else {
    mask_index = spr_enemy2_walk_; // ← Reactivem màscara quan estigui actiu
    solid = true;
}

// COOL DOWN: reduïm temporitzador si n’hi ha
if (cooldown_timer > 0) {
    cooldown_timer--;
}

// Referència al jugador
var player = instance_nearest(x, y, objPlayer);
var dist = point_distance(x, y, player.x, player.y);

// Si encara no ha començat la persecució i el jugador és a prop
if (!ya_empezado && dist < distancia_activacion) {
    ya_empezado = true;
}

// Si ja ha començat...
if (ya_empezado) {
    if (!path_following) {
        if (mp_grid_path(global.grid, path, x, y, player.x, player.y, true)) {
            path_start(path, path_speed, path_action_stop, false);
            path_following = true;
        }
    }

    if (path_index == -1) {
        path_following = false;
    }
}
