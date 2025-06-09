if (menu_type == "pause") {
    width = 100;
    height = 130;
}

var _old_font = draw_get_font();
var _old_halign = draw_get_halign();
var _old_valign = draw_get_valign();
var _old_color = draw_get_color();

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

draw_set_font(texto_menu);
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
        var col = c_white;
        if (menu_type == "play" && i == 1 && !global.has_save) {
            col = make_color_rgb(100, 100, 100);
        } else if (i == selected_index) {
            col = c_yellow;
        }

        draw_set_color(col);

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

draw_set_font(_old_font);
draw_set_halign(_old_halign);
draw_set_valign(_old_valign);
draw_set_color(_old_color);
