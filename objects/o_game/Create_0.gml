/// @description
// TEST
	instance_create_layer(-1, -1, "Instances", o_test);
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
global.audio_em = audio_emitter_create();

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
	desert,
	forest,
	grave,
}

// map expand
InitializeTilesArray();
global.patch_grid = ds_grid_create(MAP_SIZE, MAP_SIZE);
ds_grid_clear(global.patch_grid, noone);
global.remap = false;
global.card_selected = noone;

// set GUI size : 1600 * 1200
global.view_width = camera_get_view_width(view_camera[0]); 
global.view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(global.view_width, global.view_height);
//display_set_gui_size(view_wport[0], view_hport[0]);


//tilemap 
//var _layer_id = layer_get_id("Tiles");
//global.tilemap_id = layer_tilemap_get_id(_layer_id);
//InitializeAllPatchTemplates();


