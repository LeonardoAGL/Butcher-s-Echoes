global.dialogs = ds_map_create();

if (!variable_global_exists("dialog_active")) global.dialog_active = false;
if (!variable_global_exists("player_state")) global.player_state = "normal";

// Funció per crear diàlegs
function create_dialog(_id, _text_array) {
    if (!ds_map_exists(global.dialogs, _id)) {
        global.dialogs[? _id] = _text_array;
    }
}

create_dialog("npc1_1", [
    "Hola... ¿estás perdido?",
    "Hace días que no veo a nadie...",
    "Ten cuidado si sigues adelante."
]);

create_dialog("npc1_2", [
    "Uumm...",
    "En ocasiones se escuchan gritos.",
    "Ten cuidado si sigues adelante."
]);

create_dialog("npc1_3", [
    "No te dejes alcanzar por esa cosa.",
"Más adelante hay un camino que esta sellado."
]);

create_dialog("npc1_4", [
    "Quizás puedas abrir el camino sellado...",
"Pero necesitas un martillo",
    "Creo haber visto uno por aqui"
]);

create_dialog("npc1_5", [
    "Lo siento no recuerdo donde esta.",
"Solo se que sin el no se puede avanzar."
]);

create_dialog("npc1_6", [
    "Suerte, te hará falta."
]);