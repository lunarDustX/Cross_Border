/// @description 
event_inherited();

// State
enum PLAYER {
	wait,
	action,
	move,
	attack,
	atk_back,
}
state = PLAYER.action;

// Attribute
hp = 3;
spd = 1; //move_range

target_arr = [o_sheep];

// Anims
sprites_arr[PATCH_TYPE.grass] = s_player;
sprites_arr[PATCH_TYPE.snow] = s_player;


