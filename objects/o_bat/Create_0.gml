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
sprites_arr[BIOME.grass] = s_normal_sheep;
sprites_arr[BIOME.snow] = s_evil_sheep;
*/

// Convert
delta_hp = 1;
delta_atk = 1;
delta_move = -1;

hp = 2;
atk = 1;
moves = 2;

normal_sprite = s_bat;
evil_sprite = s_vampire;

normal_arr[BIOME.grass] = false;
normal_arr[BIOME.snow] = false;
normal_arr[BIOME.desert] = false;
normal_arr[BIOME.forest] = true;
normal_arr[BIOME.grave] = false;

normal_loots = [];
evil_loots = [o_heart];

normal = true;
UpdateMonsterState();


