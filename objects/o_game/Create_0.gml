/// @description
// metric
#macro CELL_SIZE 16
#macro PATCH_SIZE 6
#macro MAP_SIZE 3

// tile id
#macro VOID -1 //out of border?
#macro EMPTY 0
#macro RIVER 6

// unit_grid & monster list
global.unit_grid = ds_grid_create(room_width div CELL_SIZE, room_height div CELL_SIZE);
ds_grid_clear(global.unit_grid, noone);

global.unit_list = ds_list_create();
global.list_index = 0;

// 
enum TURN {
	player,
	computer,
}
state = TURN.player;

enum PATCH_TYPE {
	empty,
	grass,
	snow,
}

// Map 
var _layer_id = layer_get_id("Tiles");
global.tilemap_id = layer_tilemap_get_id(_layer_id);
global.remap = false;

InitializeAllPatchTemplates();

global.patch_grid = ds_grid_create(MAP_SIZE, MAP_SIZE);
ds_grid_clear(global.patch_grid, noone);
global.patch_grid[# 1, 1] = PATCH_TYPE.grass;
//

// Set the gui size
//display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
display_set_gui_size(view_wport[0], view_hport[0]);
