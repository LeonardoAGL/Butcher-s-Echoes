// Al Create d'un objInit o al Game Start
global.jugador_hp = 40;
global.jugador_max_hp = 50;

global.enemy2_hp = 60;
global.enemy2_max_hp = 60;

global.volver_a_posicion = false;
global.combate_vs = "";
global.player_state = "normal";

// Volums generals
global.volumen_musica = 1; // de 0 a 1
global.volumen_sfx = 1;    // de 0 a 1


// Crear la ds_map de sons si no existeix
global.sfx = ds_map_create();
// Assignar noms a recursos de so reals
global.sfx[? "snd_inventory1"] = snd_inventory1;
global.sfx[? "snd_inventory2"] = snd_inventory2;
global.sfx[? "snd_inventory3"] = snd_inventory3;
global.sfx[? "snd_letter1"] = snd_letter1;
global.sfx[? "snd_walk"] = snd_walk;
global.sfx[? "snd_numeric"] = snd_numeric;
global.sfx[? "snd_noteopen"] = snd_noteopen;
global.sfx[? "snd_noteclose"] = snd_noteclose;
global.sfx[? "snd_enemy1"] = snd_enemy1;
global.sfx[? "snd_item1"] = snd_item1;
global.sfx[? "snd_door1"] = snd_door1;