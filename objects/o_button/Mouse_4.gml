image_index = 1;

if o_player.target_task != target_task {
	o_player.target_task = target_task;
	o_player.state = PLAYER_STATE.Walking;
}