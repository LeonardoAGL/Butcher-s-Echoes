// Configuració
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Font_Menu);

var cx = room_width / 2;

// Títol - mida gran
draw_set_color(c_white);
draw_text_transformed(cx, 100, string_copy(text_title, 1, title_index), 0.2, 0.2, 0);

// Subtítol - més petit
if (title_index >= string_length(text_title)) {
    draw_text_transformed(cx, 140, string_copy(text_subtitle, 1, subtitle_index), 0.1, 0.1, 0);
}

// Opcions - lletra per lletra, apareixen després
if (subtitle_index >= string_length(text_subtitle)) {
    var spacing = 40;
    for (var i = 0; i < array_length(options); i++) {
        if (i == selected_option && text_finished) draw_set_color(c_yellow);
        else draw_set_color(c_white);

        var opt_text = string_copy(options[i], 1, options_index);
        draw_text_transformed(cx, 200 + spacing * i, opt_text, 0.1, 0.1, 0);

    }
}
