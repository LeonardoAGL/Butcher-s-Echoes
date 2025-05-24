// Obtenim les referències als uniforms dels shaders
u_pos  = shader_get_uniform(shd_light, "u_pos");
u_pos2 = shader_get_uniform(shd_shadow, "u_pos");

// Definim el format dels vertex i creem el buffer
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();
