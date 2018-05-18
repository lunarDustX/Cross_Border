/// @description 
// Inherit the parent event
event_inherited();

enum GHOST {
	wait,
	action,
	move,
	attack,
	atk_back,
}

// Attributes
monsterName = "ghost";
monsterID = ID_GHOST;

hp = 1;
atk = 1;

miss_rate = 0.35;

// loots
lootChance = 0.4;
normal_loots = [o_heart];
evil_loots = [];

bad_tiles_arr = [];
targets_arr = [o_player];

// Convert
delta_hp = 1;
delta_atk = 1;

normal_sprite = s_ghost;
evil_sprite = s_minotaur;

normal_arr[BIOME.grass] = true;
normal_arr[BIOME.snow] = true;
normal_arr[BIOME.desert] = true;
normal_arr[BIOME.forest] = true;
normal_arr[BIOME.grave] = true;

normal = true;
UpdateMonsterStateAfterMoving();