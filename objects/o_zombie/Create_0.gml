/// @description 
// Inherit the parent event
event_inherited();

enum ZOMBIE {
	wait,
	action,
	move,
	attack,
	atk_back,
}

// Attributes
hp = 2;
atk = 1;

normal_loots = [o_heart];
evil_loots = [];

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

normal_sprite = s_zombie;
evil_sprite = s_evil_sheep;

normal_arr[BIOME.grass] = false;
normal_arr[BIOME.snow] = false;
normal_arr[BIOME.desert] = false;
normal_arr[BIOME.forest] = false;
normal_arr[BIOME.grave] = true;

normal = true;
UpdateMonsterState();