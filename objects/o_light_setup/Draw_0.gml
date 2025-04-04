var light_src_pos = u_light_src_pos;

with(o_light) {
	shader_set(shd_light);
	shader_set_uniform_f(light_src_pos, x, y);
	draw_rectangle(0, 0, room_width, room_height, false);
	shader_reset();
}