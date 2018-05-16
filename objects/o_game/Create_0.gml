/// @description

// TEST
	instance_create_layer(-1, -1, "Instances", o_test);
	
	//window_set_cursor(cr_none);
	//cursor = noone;
//

// metric
#macro CELL_WIDTH 105	
#macro CELL_HEIGHT 100

#macro MAP_SIZE 3

#macro MAX_BRIDGE 4

// tile id
#macro VOID -1 //out of border?
#macro EMPTY 0
#macro RIVER 6

#macro TILE_UP_DIS 200
#macro BIGNUM 2002

// audio
mute = false;

// unit_grid
global.unit_grid = ds_grid_create(20, 20);
ds_grid_clear(global.unit_grid, noone);

// tile_grid
global.tile_grid = ds_grid_create(20, 20);
ds_grid_clear(global.tile_grid, noone);

// reborn 
global.RebornArr = array_create(9, 0);
//

// Active Monster List
global.unit_list = ds_list_create();
global.list_index = 0;

// Card List
InitializeCardList();
InitializeCardsArray();

// game state
enum TURN {
	player,
	computer,
}
state = TURN.player;

enum BIOME {
	empty,
	grass,
	snow,
	forest,
	grave,
	stone,
	desert,
}

InitializeTilesArray();

// map expand
global.patch_grid = ds_grid_create(MAP_SIZE, MAP_SIZE);
if (room == r_game) {
	ds_grid_clear(global.patch_grid, noone);
} else if (room == r_tutorial) {
	ds_grid_clear(global.patch_grid, 0);
	global.patch_grid[# 1, 1] = noone;
	global.patch_grid[# 2, 1] = noone;
}
global.remap = false;
global.card_selected = noone;

// set GUI size : 1600 * 1200
global.view_width = camera_get_view_width(view_camera[0]); 
global.view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(global.view_width, global.view_height);
//display_set_gui_size(view_wport[0], view_hport[0]);

CardsUsed[BIOME.grass] = 0;
CardsUsed[BIOME.forest] = 0;
CardsUsed[BIOME.grave] = 0;
CardsUsed[BIOME.snow] = 0;

