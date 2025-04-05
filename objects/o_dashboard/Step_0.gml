// Get player state
var p_state = o_player.state;

// update clock (day completed is here)
clock_counter--;
if clock_counter <= 0 {
	// reset the counter and update the clock
	clock_counter = hour;
	clock++;
	if clock > 23 {
		// a day has been completed
		clock = 0;
		
		// update wallet
		wallet -= expenses;
	}
}

// update wallet damage
if wallet < 0 {
	wallet_dmg = wallet / 1000;
} else {
	wallet_dmg = 0;	
}

// handle player states
switch(p_state) {
	case PLAYER_STATE.Sleeping:
		sleep_heal = sleep_base_heal;
	break;
	
	case PLAYER_STATE.Working:
		// damage
		work_dmg = work_base_dmg;
	
		// work clock
		work_counter--;
		if work_counter < 0 { // work session complete
			work_counter = hour;
			wallet += work_income;
		}
	break;
	
	case PLAYER_STATE.Gamedev:
		game_counter--;
		if game_counter < 0 { // launch game
			// reset game counter
			game_counter = game_base_counter;
			
			
			#region calculate game income
			
			var lower_limit = prev_game_income - prev_game_income * game_income_range_down;
			var upper_limit = prev_game_income + prev_game_income * game_income_range_up;
			var game_income = round(random_range(lower_limit, upper_limit));
			
			// update wallet
			wallet += game_income;
			
			// update prev income
			prev_game_income = game_income;
			
			// todo: report game results
			
			#endregion
		}
	break;
	
	default:
		work_dmg = 0;
		sleep_heal = 0;	
	break;
}

// update sanity
var sanity_mod = sleep_heal - sanity_base_dmg + wallet_dmg - work_dmg;
sanity += sanity_mod;
if sanity > 100 { // cap sanity at 100
	sanity = 100;	
}
//show_debug_message("sanity: " + string(sanity) + ", mod: " + string(sanity_mod));

// check if game over
if sanity <= 0 {
	// game over
	transition_goto_room(r_game_over);
}