function start_fade_in() {
	o_ui_mgr.transition_state = TRANSITION_STATE.IN;
	o_ui_mgr.transition_val = 0.0;
}

function start_fade_out() {
	o_ui_mgr.transition_state = TRANSITION_STATE.OUT;
	o_ui_mgr.transition_val = 1.0;
}

function transition_goto_room(room_target){
	// set ui values
	start_fade_in();
	
	// set logic values
	o_room_transitions.is_waiting_transition = true;
	o_room_transitions.room_to_go = room_target;
}