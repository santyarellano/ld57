

#region Draw UI items
for (var i=0; i<array_length(ui_data); i++) {
	draw_ui_data(ui_data[i]);
}
#endregion

#region Draw transitions

if (transition_state != TRANSITION_STATE.OFF) {
	// Draw rectangle with alpha = to val
	draw_set_color(transition_color);
	draw_set_alpha(transition_val);
	draw_rectangle(0, 0, global.w_width, global.w_height, false);
}

#endregion

#region Reset draw values

draw_set_alpha(1.0);

#endregion