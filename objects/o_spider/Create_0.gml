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

hp = 2;
atk = 1;

miss_rate = 0;

// loots
lootChance = 0.4;
normal_loots = [o_web];
evil_loots = [];

bad_tiles_arr = [];
targets_arr = [o_player];


// --- Convert Part ---
delta_hp = 1;
delta_atk = 1;

normal_sprite = s_spider;
evil_sprite = s_spider;

normal_arr[BIOME.grass] = true;
normal_arr[BIOME.snow] = true;
normal_arr[BIOME.desert] = true;
normal_arr[BIOME.forest] = true;
normal_arr[BIOME.grave] = true;

normal = true;
UpdateMonsterStateAfterMoving();