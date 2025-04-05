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