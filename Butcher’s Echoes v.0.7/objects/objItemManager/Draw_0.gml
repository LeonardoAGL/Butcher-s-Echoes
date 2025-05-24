if (inventory_visible) {
    draw_set_font(global.font); // escollir la font de text items

    // Variables de posicionament
    var _xx = screen_bord;
    var _yy = screen_bord;
    var _sep = sep;
    var _col = c_white;
    var view_x = camera_get_view_x(view_camera[0]);
    var view_y = camera_get_view_y(view_camera[0]);

    var box_width = 120;
    var box_height = 100;

    // El fons s'ajusta a la quantitat d'ítems
    box_height = (_sep * array_length(inv)) + 40; // Calculam altura segons ítems

    draw_sprite_ext(
        spr_box1,
        0,
        view_x + _xx - 8, // Un petit marge esquerra
        view_y + _yy - 8, // Un petit marge superior
        box_width / sprite_width,
        box_height / sprite_height,
        0,
        c_white,
        1
    );

    // ➤ Ara dibuixem els ítems damunt el recuadro
    for (var i = 0; i < array_length(inv); i++) {
        _col = (i == selected_item) ? c_yellow : c_white;
        draw_set_color(_col);

        // Icona
        draw_sprite(
            inv[i].sprite,
            0,
            view_x + _xx,
            view_y + _yy + _sep * i
        );

        // Nom
        draw_text_ext_transformed(
            view_x + _xx + 32,
            view_y + _yy + _sep * i,
            inv[i].name,
            0,
            3000,
            0.08,
            0.08,
            0
        );
    }

    // ➤ Dibuixar descripció de l'ítem seleccionat
    if (selected_item != -1) {
        draw_set_color(c_white);
        draw_text_ext_transformed(
            view_x + _xx + 48,
            view_y + _yy + _sep * array_length(inv),
            inv[selected_item].descripcion,
            80,
            1000,
            0.08,
            0.08,
            0
        );
    }

    // ➤ Tornar color a blanc
    draw_set_color(c_white);
}
