/// Draws UI text
function draw_ui_text(ui_text) {
	draw_set_font(ui_text.font);
	draw_set_color(ui_text.color);
	
	draw_set_halign(ui_text.h_align);
	draw_set_valign(ui_text.v_align);
	
	// check for alpha
	if variable_struct_exists(ui_text, "alpha") {
		draw_set_alpha(ui_text.alpha);	
	}
	
	draw_text_transformed(ui_text.pos_x, ui_text.pos_y, ui_text.text_val, ui_text.scale, ui_text.scale, 0);
}

/// Draw UI data
function draw_ui_data(ui_data) {
	switch (ui_data.type) {
		case UI_TYPE.Text:
			draw_ui_text(ui_data);
		break;
		
		case UI_TYPE.Sprite:
			// implement later...
		break;
		
		default:
		break;
	}
}

/// Get UI data from obj
function get_ui_data(obj) {
	if instance_exists(obj) {
		return obj.ui_data;
	}
	
	return [];
}