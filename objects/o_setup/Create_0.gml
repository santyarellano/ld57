// Initialize game settings
global.GAME_TITLE = "Work-life Balance";
global.STUDIO_NAME = "<Untitled>\nGames";

// Window dimensions
global.w_width = window_get_width();
global.w_height = window_get_height();

// Misc
global.pause = false;
randomize();

// Music
enum MUSIC_STATE {
	Off,
	Intro,
	Loop
}

music_state = MUSIC_STATE.Off;