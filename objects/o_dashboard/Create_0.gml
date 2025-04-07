// Inherit the parent event
event_inherited();

height = global.w_height / 8;
width = global.w_width;
color = c_black;
text_color = c_lime;
text_font = f_press_start;
text_scale = 1;

// text pos values
y_text_pos = height/2;
var x_base = width/12;
wallet_x = x_base * 1.5;
expenses_x = x_base * 4.75;
sanity_x = x_base * 8.5;
clock_x = x_base * 11;

clock = 0;
wallet = 0;
expenses = 0;
sanity = 100;

sanity_base_dmg = 0.015;
wallet_dmg = 0.0;

sleep_base_heal = 0.15;
sleep_heal = 0;

var tick_duration_secs = 0.75;
hour = game_get_speed(gamespeed_fps) * tick_duration_secs; // fps * X = X seconds
clock_counter = hour;

work_counter = hour;
work_income = 0;
work_base_dmg = 0.015;
work_dmg = 0;

var game_hours_duration = 24;
game_base_counter = hour * game_hours_duration;
game_counter = game_base_counter;
prev_game_income = 10;
game_income_range_up = 1;
game_income_range_down = game_income_range_up / 2;

win_score = 300;