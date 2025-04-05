
// update clock
clock_counter--;
if clock_counter <= 0 {
	// reset the counter and update the clock
	clock_counter = clock_base;
	clock++;
	if clock > 23 {
		// a day has been completed
		clock = 0; 
	}
}

// update sanity
sanity -= sanity_base_dmg;
