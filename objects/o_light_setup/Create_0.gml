u_light_src_pos = shader_get_uniform(shd_light, "u_light_src_pos");
u_shadow_light_src_pos = shader_get_uniform(shd_shadow, "u_light_src_pos");

vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();