// Inherit the parent event
event_inherited();

height = global.w_height / 8;
width = global.w_width;
color = c_black;
text_color = c_lime;
text_font = f_bytesized;
text_scale = 2;

// text pos values
y_text_pos = height/2;
var x_base = width/12;
wallet_x = x_base * 1.5;
expenses_x = x_base * 4.75;
sanity_x = x_base * 8.5;
clock_x = x_base * 11;

clock = 0;
wallet = 0;
expenses = 100;
sanity = 100;

sanity_base_dmg = 0.015;

var tick_duration_secs = 1.5;
clock_base = game_get_speed(gamespeed_fps) * tick_duration_secs; // fps * X = X seconds
clock_counter = clock_base;