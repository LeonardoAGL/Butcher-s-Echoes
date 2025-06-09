// Afegeix això al Create del objEnemy1
unique_id = "enemy1_intro";

// Variables d’estat
activo = false;
moving = false;

trigger_distance = 50;
speed_escape = 2.0;

// Sprite per defecte
sprite_index = spr_enemy1_idle_right;

// Només apareix si no ha estat eliminat abans
if (ds_map_exists(global.items_collected, "enemy1_intro")) {
    instance_destroy(); // Ja ha desaparegut en una altra sessió
} else {
    activo = false;
    trigger_distance = 50; // Distància a la que el jugador activa la seqüència
    speed_escape = 2.0;     // Més ràpid que el jugador
}
