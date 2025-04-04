// UI data
ui_data = [
	{
		type: UI_TYPE.Text,
		text_val: global.STUDIO_NAME,
		font: f_press_start,
		scale: 3,
		h_align: fa_center,
		v_align: fa_middle,
		color: c_white,
		pos_x: global.w_width/2,
		pos_y: global.w_height/2
	}
];

var duration_secs = 2;
alarm[0] = game_get_speed(gamespeed_fps) * duration_secs;
start_fade_out();