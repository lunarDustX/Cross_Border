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

hp = 1;
atk = 0;

bad_tiles_arr = [];
targets_arr = [o_player];

// Convert
delta_hp = 1;
delta_atk = 1;

normal_sprite = s_chest;
evil_sprite = s_chest;

var _pos = calculate_patch_pos(x, y);
var _x = _pos[0];
var _y = _pos[1];
myBiome = global.patch_grid[# _x, _y].patch_type;
//myTile = global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT];
