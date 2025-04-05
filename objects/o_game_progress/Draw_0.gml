draw_self();

// calculate progress
var game_target = o_dashboard.game_base_counter;
var current = game_target - o_dashboard.game_counter;
var progress = current / game_target;

var x_offset = 3;

// calculate width
var bar_width = 140;
var bar_height = 4;

// round progress
show_debug_message("normal progress: " + string(progress));
progress = round_to_nearest_05(progress);
show_debug_message("rounded progress: " + string(round_to_nearest_05(progress)));

// draw progres
if progress >= 0.05{
	
	var x0 = x + x_offset;
	var y0 = y - bar_height/2;
	var x1 = x0 + bar_width * progress;
	var y1 = y + bar_height/2;
	draw_set_color(c_green);
	draw_set_alpha(1.0);
	draw_rectangle(x0, y0, x1, y1, false);
	draw_set_alpha(1.0);
	
	show_debug_message("x0: " + string(x0) + ", x1: "+ string(x1));
}

