if (inventory_visible) {
    draw_set_font(text_inventory);

    // Variables de posicionamiento
    var _xx = screen_bord;
    var _yy = screen_bord;
    var _sep = sep;
    var _col = c_white;
    var view_x = camera_get_view_x(view_camera[0]);
    var view_y = camera_get_view_y(view_camera[0]);

    var box_width = 150;
    var box_height = 120;

    // Caja Inventario
    box_height = (_sep * array_length(inv)) + 57;

    draw_sprite_ext(
        spr_box1,
        0,
        view_x + _xx - 8,
        view_y + _yy - 8,
        box_width / sprite_width,
        box_height / sprite_height,
        0,
        c_white,
        1
    );

    for (var i = 0; i < array_length(inv); i++) {
        _col = (i == selected_item) ? c_yellow : c_white;
        draw_set_color(_col);

        // Icono
        draw_sprite(
            inv[i].sprite,
            0,
            view_x + _xx,
            view_y + _yy + _sep * i
        );

       // Nom
		draw_text_ext_transformed(
		    view_x + _xx + 25,
		    view_y + _yy + _sep * i + 2,
		    inv[i].name,
		    0,
		    3000,
		    0.09,
		    0.09,
		    0
		);

		// Descripcion
		if (selected_item != -1) {
		    draw_set_color(c_white);
		    draw_text_ext_transformed(
		        view_x + _xx + 25,
		        view_y + _yy + _sep * array_length(inv)+ 1,
		        inv[selected_item].descripcion,
		        90,
		        1000,
		        0.09,
		        0.09,
		        0
		    );
		}


    // Color
    draw_set_color(c_white);
}
}