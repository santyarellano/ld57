
// UI data
ui_data = [
	{
		type: UI_TYPE.Text,
		text_val: global.GAME_TITLE,
		font: f_press_start,
		scale: 3,
		h_align: fa_center,
		v_align: fa_middle,
		color: c_white,
		pos_x: global.w_width/2,
		pos_y: global.w_height/2  - global.w_height/10
	},
	{
		type: UI_TYPE.Text,
		text_val: "Press Enter to Play!",
		font: f_press_start,
		scale: 1.5,
		h_align: fa_center,
		v_align: fa_middle,
		color: c_white,
		pos_x: global.w_width/2,
		pos_y: global.w_height/2 + global.w_height/20
	},
];

selected_alpha = 1.0;
min_alpha = 0.5;
fade_speed = 0.6;