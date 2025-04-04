// check if transition ui is ready for us to switch rooms
if (is_waiting_transition && o_ui_mgr.transition_state == TRANSITION_STATE.ON) {
	// do the transition and clear transition values
	is_waiting_transition = false;
	room_goto(room_to_go);
	start_fade_out();
}