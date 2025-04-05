var light_src_pos = u_light_src_pos;
var shadow_light_pos = u_shadow_light_src_pos
var _vb = vb;

with(o_light) {
	shader_set(shd_light);
	shader_set_uniform_f(light_src_pos, x, y);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	
	shader_set(shd_shadow);
	shader_set_uniform_f(shadow_light_pos, x, y);
	vertex_submit(_vb, pr_trianglelist, -1);
}
shader_reset();