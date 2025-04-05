
#region movement

var h_speed = (in_right - in_left) * walk_speed;
var v_speed = (in_down - in_up) * walk_speed;

#region check for collisions
// horizontal collision
if place_meeting(x+h_speed, y, o_entity) {
	while !place_meeting(x+sign(h_speed), y, o_entity) {
		x += sign(h_speed);	
	}
	h_speed = 0;
}

// horizontal collision
if place_meeting(x, y+v_speed, o_entity) {
	while !place_meeting(x, y+sign(v_speed), o_entity) {
		y += sign(v_speed);	
	}
	v_speed = 0;
}

#endregion

x += h_speed;
y += v_speed;

// clear input
in_down = 0;
in_up = 0;
in_left = 0;
in_right = 0;

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