var base_x = 150;
var base_y = 130;
var spacing = 25;

// Establim la font personalitzada
draw_set_font(global.font_menu);

for (var i = 0; i < array_length(options); i++) {
    var str = options[i];
    var col = (i == selected) ? c_yellow : c_white;
    draw_set_color(col);
    
    draw_text(base_x, base_y + i * spacing, str);
}
