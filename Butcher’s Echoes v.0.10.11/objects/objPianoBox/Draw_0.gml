if (!visible) exit;

// Posició centrada segons la teva càmera
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);

var pos_x = cx + cw / 2;
var pos_y = cy + ch / 2;

// Dibuixa el sprite segons la tecla seleccionada
if (selected_note == -1) {
    draw_sprite(spr_uipiano, 0, pos_x, pos_y);
} else {
    draw_sprite(spr_uipiano_note[selected_note], 0, pos_x, pos_y);
}
