if (array_length(puntos_visibles) > 0) {
    draw_set_blend_mode(bm_add);
    draw_set_colour(c_white);

    draw_primitive_begin(pr_trianglefan);
    draw_vertex(x, y);

    for (var i = 0; i < array_length(puntos_visibles); i++) {
        var p = puntos_visibles[i];
        draw_vertex(p[0], p[1]);
    }

    draw_vertex(puntos_visibles[0][0], puntos_visibles[0][1]);

    draw_primitive_end();
    draw_set_blend_mode(bm_normal);
}
