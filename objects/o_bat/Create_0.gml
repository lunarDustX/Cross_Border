/// @description 
// Inherit the parent event
event_inherited();

enum BAT {
	wait,
	action,
	move,
	attack,
	atk_back,
}

// Attributes
hp = 1;
atk = 1;

normal_loots = [];
evil_loots = [o_heart];

bad_tile_arr = [VOID, EMPTY, RIVER];
target_arr = [o_player];

/*
// Anims
sprites_arr[PATCH_TYPE.grass] = s_normal_sheep;
sprites_arr[PATCH_TYPE.snow] = s_evil_sheep;
*/

// Convert
delta_hp = 1;
delta_atk = 1;

normal_sprite = s_bat;
evil_sprite = s_vampire;

normal_arr[PATCH_TYPE.grass] = false;
normal_arr[PATCH_TYPE.snow] = true;
normal_arr[PATCH_TYPE.desert] = false;

normal_loots = [];
evil_loots = [o_heart];

normal = true;
UpdateMonsterState();

moves = 1;
