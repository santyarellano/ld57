if !global.pause {

	// set target
	if target_task == PLAYER_STATE.Sleeping {
		target = o_bed_spot;
	}
	else if target_task == PLAYER_STATE.Working || target_task == PLAYER_STATE.Gamedev {
		target = o_desk_spot;	
	}

	// add input if walking
	switch state {
		case PLAYER_STATE.Walking:
			// first vertical move
			if y < target.y {
				in_down = 1;
			}
			else if y > target.y {
				in_up = 1;	
			}
			// horizontal move
			else if x > target.x {
				in_left = 1;	
			}
			else if x < target.x {
				in_right = 1;	
			}
			else {
				// arrived to target
				state = target_task;
			}
		break;
	
		default:
		break;
	}

	// reposition if was sleeping
	if state != PLAYER_STATE.Sleeping {
		if x == o_sleep_spot.x && y == o_sleep_spot.y {
			x = o_bed_spot.x;
			y = o_bed_spot.y;
		}
	}

	// Inherit the parent event
	event_inherited();

	// override animation if sleeping
	if state == PLAYER_STATE.Sleeping {
		sprite_index = s_burt_sleep;
		x = o_sleep_spot.x;
		y = o_sleep_spot.y;
	}

}