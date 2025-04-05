// Inherit the parent event
event_inherited();

enum PLAYER_STATE {
	Working,
	Gamedev,
	Sleeping,
	Walking,
	None
}

target = o_desk_spot;
target_task = PLAYER_STATE.None;
state = PLAYER_STATE.None;