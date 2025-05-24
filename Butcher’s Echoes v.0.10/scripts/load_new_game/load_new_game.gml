function load_new_game() {
    // Carreguem el fitxer JSON des de Included Files
    var file = "newgame.json";

    // Llegim el fitxer en buffer de text
    var buffer = buffer_load(file);
    var json_string = buffer_read(buffer, buffer_text);
    buffer_delete(buffer);

    // Convertim a dades
    var data = json_parse(json_string);

    // Assignem a globals
    global.spawn_x = data[? "spawn_x"];
    global.spawn_y = data[? "spawn_y"];
    global.items_collected = data[? "items_collected"];
    global.item_list = data[? "inventory"];
    global.selected_item = data[? "selected_item"];
}
