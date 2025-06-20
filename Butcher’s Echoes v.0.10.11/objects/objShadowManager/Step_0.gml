function Quad(_vb, _x1, _y1, _x2, _y2) {
    vertex_position_3d(_vb, _x1, _y1, 0);
    vertex_position_3d(_vb, _x1, _y1, 1);
    vertex_position_3d(_vb, _x2, _y2, 0);
    vertex_position_3d(_vb, _x2, _y2, 0);
    vertex_position_3d(_vb, _x1, _y1, 1);
    vertex_position_3d(_vb, _x2, _y2, 1);
}

vertex_begin(vb, vf);
var _vb = vb;

with (objWallShadow) {
    Quad(_vb, x, y, x + sprite_width, y + sprite_height);
    Quad(_vb, x + sprite_width, y, x, y + sprite_height);
}

vertex_end(vb);
