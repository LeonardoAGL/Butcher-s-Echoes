if (visible) {
    var pos_x = camera_get_view_x(view_camera[0]) + 66;
    var pos_y = camera_get_view_y(view_camera[0]) + 100;

    draw_set_font(font_nota);
    draw_set_color(c_white);

    draw_sprite(spr_note, 0, pos_x - 8, pos_y - 88);

    draw_text_ext_transformed(
        camera_get_view_x(view_camera[0]) + 70,
        camera_get_view_y(view_camera[0]) + 25,
        texto,
		140,
		2150,
        0.07, 
        0.07,
        0
    );
}