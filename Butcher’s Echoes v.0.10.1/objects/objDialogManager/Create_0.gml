// Crear map global de diàlegs
global.dialogs = ds_map_create();

// Funció constructor per crear cada diàleg
function create_dialog(_id, _text_array) constructor {
    id = _id;                 // ID del diàleg (no és obligatori però útil per debug)
    text_array = _text_array; // Array de textos que es mostraran
}

// === DEFINICIÓ DE DIÀLEGS ===

// NPC1: primeres fases
global.dialogs[? "npc1_1"] = new create_dialog("npc1_1", [
    "Heyyyy. Hola compañero, veo que tú también estás perdido",
    "Me llamo Derik, me perdí también la verdad, estaba siguiendo a mi hermano mayor...",
    "Vi una entrada por la que parece que se puede salir de aquí, pero cerrada y no sé cómo escapar...",
    "Lo vi en una serie... Si quieres ayudarme, pilla otra cuchara y hagamos el agujero"
]);

global.dialogs[? "npc1_2"] = new create_dialog("npc1_2", [
    "Ahora que te veo bien, te me haces familiar...",
    "¿Cómo te llamas? ¿Quién eres?",
    "Olvídalo...",
    "Solo avísame si consigues salir..."
]);

global.dialogs[? "npc1_3"] = new create_dialog("npc1_3", [
    "Si encuentras una forma de salir, avísame...",
    "¿Me avisarás?..",
    "Vale, aquí te espero... No me abandones porfa..."
]);

// NPC1: després de completar la quest
global.dialogs[? "npc1_4"] = new create_dialog("npc1_4", [
    "Wow... ¿Ese martillo que tienes para qué sirve? Si es para ayudarme con el agujero mejor pilla una cuchara.",
    "Oye una cosa, si ves por dónde salir, me acompañarías...",
    "¿De la mano?",
    "Era otra broma, aquí te espero..."
]);

global.dialogs[? "npc1_5"] = new create_dialog("npc1_5", [
    "Aquí te espero..."
]);
