if (!activo) {
    if (point_distance(x, y, objPlayer.x, objPlayer.y) < trigger_distance) {
        path_start(EnemyPasillo, speed_escape, path_action_stop, false);
        activo = true;
        moving = true;
		play_sfx("snd_enemy1");
    }
} else {
    // Detectem si ha acabat el path
    if (path_index == -1) {
        ds_map_add(global.items_collected, "enemy1_intro", true);
        instance_destroy();
    }
}

// Actualització del sprite segons si es mou
if (moving) {
    sprite_index = spr_enemy1_walk_right;
} else {
    sprite_index = spr_enemy1_idle_right;
}
