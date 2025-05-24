shader_set(shd_shadow);
shader_set_uniform_f(u_pos2, objPlayer.x, objPlayer.y);
vertex_submit(vb, pr_trianglelist, -1);
shader_reset();

