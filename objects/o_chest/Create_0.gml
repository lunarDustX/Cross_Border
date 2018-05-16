/// @description 
// Inherit the parent event
event_inherited();

enum CHEST {
	wait,
	action,
	move,
	attack,
	atk_back,
}

active_turns = 0;

// Attributes
monsterName = "chest";
monsterID = -1; //ID_CHEST;

hp = 3;
atk = 0;

bad_tiles_arr = [];
targets_arr = [o_player];

// Convert
delta_hp = 1;
delta_atk = 1;

normal_sprite = s_chest;
evil_sprite = s_chest;

myTile = global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT];

/*
normal_arr[BIOME.grass] = true;
normal_arr[BIOME.snow] = true;
normal_arr[BIOME.desert] = true;
normal_arr[BIOME.forest] = true;
normal_arr[BIOME.grave] = true;

//normal = true;
//UpdateMonsterStateAfterMoving();