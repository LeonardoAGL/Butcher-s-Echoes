// Funció per dibuixar una quad (2 triangles per rectangle)
function Quad(_vb, _x1, _y1, _x2, _y2) {
    vertex_position_3d(_vb, _x1, _y1, 0);
    vertex_position_3d(_vb, _x1, _y1, 1);
    vertex_position_3d(_vb, _x2, _y2, 0);

    vertex_position_3d(_vb, _x2, _y2, 0);
    vertex_position_3d(_vb, _x1, _y1, 1);
    vertex_position_3d(_vb, _x2, _y2, 1);
}

// Comencem a construir els vertex a partir dels blocs
vertex_begin(vb, vf);
var _vb = vb;

// Agafem tots els blocs sòlids del joc (en el teu cas objBlock)
with (objBlock) {
    Quad(_vb, x, y, x + sprite_width, y + sprite_height);
    Quad(_vb, x + sprite_width, y, x, y + sprite_height);
}

vertex_end(vb);
