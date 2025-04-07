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
	
	// play sound
	audio_play_sound(fx_game_complete, 5, false);
}

function day_event() {
	var has_event = choose(true, false);
	if has_event {
		// choose event
		var list = o_event_mgr.random_events;
		var list_len = array_length(list);
		var event_idx = irandom(list_len-1);
		var event = list[event_idx];
		
		// use it
		o_event_mgr.is_showing_event = true;
		o_event_mgr.event = event;
		
		// play sound
		audio_play_sound(fx_event, 5, false);
	}
}