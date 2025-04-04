#region input

in_left = keyboard_check(vk_left);
in_right = keyboard_check(vk_right);
in_up = keyboard_check(vk_up);
in_down = keyboard_check(vk_down);

#endregion

#region movement

var h_speed = (in_right - in_left) * walk_speed;
var v_speed = (in_down - in_up) * walk_speed;
x += h_speed;
y += v_speed;

#endregion

#region animations

// flip sprite if needed
var h_sign = sign(h_speed);
var x_scale = sign(image_xscale);
if h_sign != 0 && x_scale != h_sign {
	image_xscale = h_sign; 
}

// switch between idle and walk
if h_speed == 0 && v_speed == 0 && sprite_index != s_idle { // idle
	sprite_index = s_idle;	
}
else if (h_speed != 0 || v_speed != 0) && sprite_index != s_walk { // walk
	sprite_index = s_walk;
}

#endregion