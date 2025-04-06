if is_showing_event {

	#region Draw rectangle
	
	var padding = 0.875
	var window_w = global.w_width * padding;
	var window_h = global.w_height * padding;
	var x0 = global.w_width/2 - window_w/2;
	var y0 = global.w_height/2 - window_h/2;
	var x1 = x0 + window_w;
	var y1 = y0 + window_h;
	draw_set_color(window_color);
	draw_rectangle(x0, y0, x1, y1, false);
	
	#endregion
	
	#region blue borders
	var default_border = 7;
	draw_set_color(c_border_blue);
	
	// top
	var top_height = window_w * 0.05;
	draw_rectangle(x0, y0, x1, y0+top_height, false);
	
	draw_rectangle(x1-default_border, y0, x1, y1, false); // right
	draw_rectangle(x0, y1-default_border, x1, y1, false); // bottom
	draw_rectangle(x0, y0, x0+default_border, y1, false); // left
	
	#endregion
	
	#region red box
	
	var close_margin = 9;
	var close_size = 28;
	draw_set_color(c_red);
	draw_rectangle(x1-close_margin-close_size, y0+close_margin, x1-close_margin, y0+close_margin+close_size, false);
	draw_set_color(c_white);
	draw_rectangle(x1-close_margin-close_size, y0+close_margin, x1-close_margin, y0+close_margin+close_size, true);
	
	#endregion
	
	#region black border
	
	draw_set_color(c_black);
	draw_rectangle(x0, y0, x1, y1, true);
	
	#endregion
	
	#region Draw title
	
	var window_padding = 20;
	var title_x = x0 + default_border + window_padding;
	var title_y = y0 + top_height + window_padding;
	var title_scale = 2;
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_set_font(f_press_start);
	draw_text_transformed(title_x, title_y, event.title, title_scale, title_scale, 0);
	
	#endregion
	
	#region Draw text
	
	var text_x = x0 + default_border + window_padding;
	var f_size = font_get_size(f_press_start)
	var text_y = y0 + top_height + window_padding + f_size * title_scale + 40;
	var text_scale = 1;
	var text_area_w = window_w - window_padding * 2 - default_border * 2 - 20;
	draw_text_ext_transformed(text_x, text_y, event.text, f_size + 8, text_area_w, text_scale, text_scale, 0);
	
	#endregion

	#region Draw effects
	
	var effect_x = x0 + default_border + window_padding;
	var effect_y_start = y1 - window_padding - default_border - 200;
	var effect_jump = f_size + 20;
	
	// sanity mod
	var exhaustion_val = -event.sanity_mod;  
	draw_event(true, exhaustion_val, "Exhaustion", effect_x, effect_y_start, text_scale);
	
	// wallet mod
	draw_event(false, event.wallet_mod, "Wallet", effect_x, effect_y_start + effect_jump, text_scale);
	
	// income mod
	draw_event(false, event.income_mod, "Job Salary", effect_x, effect_y_start + effect_jump * 2, text_scale);
	
	// expenses mod
	draw_event(true, event.expenses_mod, "Daily Expenses", effect_x, effect_y_start + effect_jump * 3, text_scale);
	
	// reset color
	draw_set_color(c_black);
	
	#endregion

	#region draw Press Enter to Continue...
	
	var enter_x = x0 + default_border + window_padding;
	var enter_y = y1 - window_padding - default_border - 20;
	draw_text_transformed(enter_x, enter_y, "[Press Enter to continue.]", text_scale, text_scale, 0);
	
	#endregion

}