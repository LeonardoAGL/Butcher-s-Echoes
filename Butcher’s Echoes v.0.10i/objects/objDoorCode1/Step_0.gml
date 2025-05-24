if (!codigo_aceptado && global.player_state == "normal") {
    if (keyboard_check_pressed(ord("Z"))) {
        var dist = point_distance(x, y, objPlayer.x, objPlayer.y);
        if (dist < 48) {
            // Bloqueja altres accions
            global.player_state = "codigo";

            // Prepara dades per objCodeBox
            global.codebox_data = {
                activo: true,
                codigo_correcto: codi_porta,
                input: "",
                estado: "input", // "input", "error", "correcto"
                puerta_id: id_own
            };
        }
    }
}
