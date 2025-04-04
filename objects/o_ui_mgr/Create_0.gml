enum UI_TYPE {
	Text,
	Sprite
}

enum TRANSITION_STATE {
	OFF,	// not visible
	IN,		// fade in
	ON,		// visible 100%
	OUT		// fade out
}

// UI Data
ui_data = [];

// Transition data
transition_state = TRANSITION_STATE.OFF;
transition_val = 0;
transition_speed = 0.02;
transition_color = c_black;