/// @description 
// Inherit the parent event
event_inherited();

enum SNOWMAN {
	wait,
	action,
	move,
	attack,
	atk_back,
}

// Attributes
bad_tiles_arr = [o_waterTile];
targets_arr = [o_player];

// Convert
monsterName = "snow-snowman";
monsterID = ID_SNOWMAN_BIG;

hp = 3;
atk = 1;
moves = 1;

delta_hp = -1;
delta_atk = 0;
delta_moves = 1;

normal_sprite = s_snowman_big;
evil_sprite = s_snowman_small;

normal_arr[BIOME.grass] = false;
normal_arr[BIOME.snow] = true;
normal_arr[BIOME.desert] = false;
normal_arr[BIOME.forest] = false;
normal_arr[BIOME.grave] = false;

normal = true;
UpdateMonsterStateAfterMoving();