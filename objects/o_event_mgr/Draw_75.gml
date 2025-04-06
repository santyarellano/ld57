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

}