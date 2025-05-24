var _u_pos  = u_pos;
var _u_pos2 = u_pos2;
var _vb     = vb;

// Dibuixem la llum i les ombres a partir de la posició del personatge (Object1)
with (objShadowsManager) {
    shader_set(shd_light);
    shader_set_uniform_f(_u_pos, objPlayer.x, objPlayer.y);
    draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], false);

    shader_set(shd_shadow);
    shader_set_uniform_f(_u_pos2, objPlayer.x, objPlayer.y);
    vertex_submit(_vb, pr_trianglelist, -1);

    shader_reset();
}
