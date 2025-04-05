// Draw rectangle
draw_set_color(color);
draw_rectangle(0, 0, width, height, false);

#region draw values
// setup
draw_set_font(text_font);
draw_set_color(text_color);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// wallet
if wallet < 0 {
	draw_set_color(c_red);	
}
var wallet_text = "Wallet: $" + string(wallet);
draw_text_transformed(wallet_x, y_text_pos, wallet_text, text_scale, text_scale, 0);
draw_set_color(text_color);	

// Expenses
var expenses_text = "Expenses: $" + string(expenses);
draw_text_transformed(expenses_x, y_text_pos, expenses_text, text_scale, text_scale, 0);

// Sanity
var sanity_text = "Sanity: " + string(round(sanity)) + "%";
draw_text_transformed(sanity_x, y_text_pos, sanity_text, text_scale, text_scale, 0);
draw_set_color(text_color);

var clock_text = "Time: " + string(clock);
draw_text_transformed(clock_x, y_text_pos, clock_text, text_scale, text_scale, 0);

#endregion
