/// @description 
// Inherit the parent event
event_inherited();

enum FLOWER {
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

hp = 1;
atk = 1;

bad_tiles_arr = [];
targets_arr = [o_player];

// Convert
delta_hp = 1;
delta_atk = 1;

normal_sprite = s_chest;
evil_sprite = s_chest;

//parentTile = noone;
//appearing = true;
parentTile = global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT];
with (parentTile) {
	uh = true;
	sprite_index = s_flowerTile;
	image_index = 0; // for now
}