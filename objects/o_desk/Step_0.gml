
// choose state
switch(o_player.state) {
	case PLAYER_STATE.Gamedev:
		state = DESK_STATUS.GameDev;
	break;
	
	case PLAYER_STATE.Working:
		state = DESK_STATUS.Job;
	break;
	
	default:
		state = DESK_STATUS.Off;
	break;
}

// choose sprite index
image_index = state;