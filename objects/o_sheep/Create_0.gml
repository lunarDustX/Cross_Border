/// @description 
// Inherit the parent event
event_inherited();

enum SHEEP {
	wait,
	action,
	move,
	attack,
	atk_back,
}

// Attributes
hp = 2;
atk = 1;



loots = [o_heart];
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

normal_sprite = s_normal_sheep;
evil_sprite = s_evil_sheep;

normal_arr[PATCH_TYPE.grass] = true;
normal_arr[PATCH_TYPE.snow] = false;

normal = is_normal(x, y);