function round_to_nearest_05(val) {
	var base = 0.05;
	
	// how many 0.05 fit
	var num_05s = val / base;
	show_debug_message("num_05s: " + string(num_05s));
	
	// round 
	var rounded = round(num_05s);
	show_debug_message("rounded: " + string(rounded));
	
	// multiply
	var mult = num_05s * base;
	show_debug_message("mult: " + string(mult));
	
	return mult;
}