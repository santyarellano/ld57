// get ui from current room's manager
switch (room) {
	case r_splash:
		ui_data = get_ui_data(o_splash_mgr);
	break;
	
	case r_main_menu:
		ui_data = get_ui_data(o_main_menu_mgr);
	break;
	
	default:
		ui_data = [];
	break;
}

#region Update Transitions

switch (transition_state) {
	case TRANSITION_STATE.OFF:
	break;
	
	case TRANSITION_STATE.ON:
	break;
	
	case TRANSITION_STATE.IN:
		// fade in
		if (transition_val < 1.0) {
			transition_val += transition_speed;
		}
		
		// set to on
		else {
			transition_val = 1.0;
			transition_state = TRANSITION_STATE.ON;
		}
	break;
	
	case TRANSITION_STATE.OUT:
		// fade out
		if (transition_val > 0.0) {
			transition_val -= transition_speed;
		}
		
		// set to on
		if (transition_val <= 0.0) {
			transition_val = 0.0;
			transition_state = TRANSITION_STATE.OFF;
		}
	break;
}

#endregion