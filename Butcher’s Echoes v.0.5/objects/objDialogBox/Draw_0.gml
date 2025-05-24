if (visible) {
    var pos_x = camera_get_view_x(view_camera[0]) + 16;
    var pos_y = camera_get_view_y(view_camera[0]) + 145;

    draw_set_font(font_dialog);
    draw_set_color(c_white);

    draw_sprite(spr_textbox, 0, pos_x - 8, pos_y - 8);

    draw_text_ext_transformed(
        pos_x,
        pos_y,
        texto,
		80,
		3000,
        0.08, 0.08, 0
    );
}
