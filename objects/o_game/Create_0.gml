/// @description
// TEST
	instance_create_layer(-1, -1, "Instances", o_test);
//
// metric
#macro CELL_SIZE 16
#macro PATCH_SIZE 6
#macro MAP_SIZE 3

#macro MAX_BRIDGE 3
// tile id
#macro VOID -1 //out of border?
#macro EMPTY 0
#macro RIVER 6

#macro TILE_UP_DIS 16
#macro BIGNUM 1001

// audio
global.audio_em = audio_emitter_create();

// unit_grid
global.unit_grid = ds_grid_create(room_width div CELL_SIZE, room_height div CELL_SIZE);
ds_grid_clear(global.unit_grid, noone);

// tile_grid
global.tile_grid = ds_grid_create(room_width div CELL_SIZE, room_height div CELL_SIZE);
ds_grid_clear(global.unit_grid, noone);

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
}

// map expand
InitializeTilesArray();
global.patch_grid = ds_grid_create(MAP_SIZE, MAP_SIZE);
ds_grid_clear(global.patch_grid, noone);
global.remap = false;
global.card_selected = noone;

// set GUI size
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(global.view_width, global.view_height);
//display_set_gui_size(view_wport[0], view_hport[0]);


//tilemap 
//var _layer_id = layer_get_id("Tiles");
//global.tilemap_id = layer_tilemap_get_id(_layer_id);
//InitializeAllPatchTemplates();


