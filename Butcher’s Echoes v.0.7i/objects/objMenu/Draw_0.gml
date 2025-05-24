if (menu_type == "pause") {
	width = 100;
	height = 130;
}

draw_sprite_ext(
    sprite_index,
    image_index,
    x,
    y,
    width / sprite_width,
    height / sprite_height,
    0,
    c_white,
    1
);

draw_set_font(global.font);
draw_set_valign(fa_top);

var margen = op_border;
var opciones = array_length(option_array);

if (menu_type == "pause") {
    draw_set_halign(fa_left);
    for (var i = 0; i < opciones; i++) {
        if (i == selected_index) draw_set_color(c_yellow);
        else draw_set_color(c_white);
        draw_text_ext_transformed(
            x + margen,
            y + margen + (op_space * i),
            option_array[i],
            0,
            3000,
            font_scale,
            font_scale,
            0
        );
    }
	
} else {
    draw_set_halign(fa_center);
    var espacio = (height - (2 * margen)) / (opciones + 2);
    for (var i = 0; i < opciones; i++) {
        if (i == selected_index) draw_set_color(c_yellow);
        else draw_set_color(c_white);

        draw_text_ext_transformed(
            x + width / 2,
            y + margen + (espacio * (i + 1)),
            option_array[i],
            0,
            3000,
            font_scale,
            font_scale,
            0
        );
    }
}

draw_set_color(c_white);