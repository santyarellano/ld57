function round_to_nearest_05(val) {
	var base = 0.05;
	
	// how many 0.05 fit
	var num_05s = val / base;
	
	// round 
	var rounded = round(num_05s);
	
	// multiply
	var mult = rounded * base;
	
	return mult;
}

function finished_game(wallet_mod) {
	o_event_mgr.is_showing_event = true;
	var event = o_event_mgr.game_finished_event;
	event.wallet_mod = wallet_mod;
	o_event_mgr.event = event;
}

function day_event() {
	
}