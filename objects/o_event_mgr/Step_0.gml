global.pause = is_showing_event;

if is_showing_event {
	// press enter to continue
	if keyboard_check_pressed(vk_enter) {		
		is_showing_event = false;
		
		// do effects from event
		o_dashboard.expenses += event.expenses_mod;
		o_dashboard.wallet += event.wallet_mod;
		o_dashboard.work_income += event.income_mod;
		o_dashboard.sanity += event.sanity_mod;
	}
}