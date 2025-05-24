// Uniform per a les ombres
u_pos2 = shader_get_uniform(shd_shadow, "u_pos");

// Setup del vertex buffer
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();
