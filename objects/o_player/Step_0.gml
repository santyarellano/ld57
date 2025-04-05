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
			state = target_task;	
		}
	break;
	
	default:
	break;
}

// Inherit the parent event
event_inherited();

