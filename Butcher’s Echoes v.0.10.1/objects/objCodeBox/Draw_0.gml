if (global.codebox_data.activo) {

    var cam_x = camera_get_view_x(global.camera);
    var cam_y = camera_get_view_y(global.camera);

    var pos_x = cam_x + 83;
    var pos_y = cam_y + 32;

    draw_set_color(c_white);
    draw_sprite(spr_code, 0, pos_x, pos_y);

    var box_w = sprite_get_width(spr_code);
    var box_h = sprite_get_height(spr_code);

    draw_set_font(Font_Menu);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_text_ext_transformed(
        pos_x + box_w / 2,   // X
        pos_y + 120,          // Y
        "Introduce el código",
        0,                   // separació caràcters
        3000,                // ample màxim de línia (wrap)
        0.1, 0.1, 0        // escala de mida
    );

    //Codi
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_ext_transformed(
        pos_x + box_w / 2,
        pos_y + box_h - 142,
        global.codebox_data.input,
        4,                  // separació entre números
        3000,
        0.2, 0.2, 0
    );

    if (global.codebox_data.estado == "error") {
        draw_set_halign(fa_center);
        draw_set_valign(fa_bottom);
        draw_text_ext_transformed(
            pos_x + box_w / 2,
            pos_y + box_h - 55,
            "Código incorrecto",
            0,
            3000,
            0.08, 0.08, 0
        );
    }

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(-1);
    draw_set_color(c_white);
}
