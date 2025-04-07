if room == r_level && music_state == MUSIC_STATE.Off {
	audio_play_sound(sndtrack_intro, 1, false);
	music_state = MUSIC_STATE.Intro;
}

if music_state == MUSIC_STATE.Intro {
	if !audio_is_playing(sndtrack_intro) {
		audio_play_sound(sndtrack_loop, 1, true);
		music_state = MUSIC_STATE.Loop;	
	}
}