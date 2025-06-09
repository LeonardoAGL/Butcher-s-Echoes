// Evitar combat si encara no s'ha activat per la porta
if (!enabled) exit;

// Guardem posició i room
global.volver_a_posicion = true;
global.volver_room = room;
global.volver_x = objPlayer.x;
global.volver_y = objPlayer.y;

// Definim combat VS
global.combate_vs = "enemy2";

// Enviem a la sala de combat
global.player_state = "combat";
room_goto(RoomCombat);
