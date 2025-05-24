// Dades inicials
if (!variable_global_exists("codebox_data")) {
    global.codebox_data = {
        activo: false,
        codigo_correcto: "",
        input: "",
        estado: "",
        puerta_id: noone
    };
}

char_index = 0;
reset_timer = -1;
