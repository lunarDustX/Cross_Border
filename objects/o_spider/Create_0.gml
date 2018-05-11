/// @description 
// Inherit the parent event
event_inherited();

enum SPIDER {
	wait,
	action,
	move,
	attack,
	atk_back,
}

// Attributes
monsterName = "spider";
monsterID = ID_SPIDER;

hp = 1;
atk = 1;

miss_rate = 0;

// loots
lootChance = 0.4;
normal_loots = [o_web];
evil_loots = [];

bad_tiles_arr = [];
targets_arr = [o_player];

// Convert
delta_hp = 1;
delta_atk = 1;

normal_sprite = s_ghost;
evil_sprite = s_minotaur;

normal_arr[BIOME.grass] = true;
normal_arr[BIOME.snow] = false;
normal_arr[BIOME.desert] = false;
normal_arr[BIOME.forest] = false;
normal_arr[BIOME.grave] = false;

normal = true;
UpdateMonsterStateAfterMoving();