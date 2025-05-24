x = Object1.x;
y = Object1.y;

puntos_visibles = [];

for (var i = 0; i < num_rays; i++) {
    var ang = i * angle_step;
    var x_end = x + lengthdir_x(ray_length, ang);
    var y_end = y + lengthdir_y(ray_length, ang);

    // Detectar col·lisió amb objBlock
    var col = collision_line(x, y, x_end, y_end, objBlock, false, true);
    
    if (col != noone) {
        x_end = col.x;
        y_end = col.y;
    }

    array_push(puntos_visibles, [x_end, y_end]);
}
