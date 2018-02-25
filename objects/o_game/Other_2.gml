/// @description 
//show_debug_overlay(true);
draw_set_font(f_test);

instance_create_depth(0, 0, BIGNUM, o_bg);
instance_create_layer(0, 0, "Instances", o_ui_control);
instance_create_layer(0, 0, "Instances", o_ai_control);

randomize();

// create first patch
var _mx = irandom(MAP_SIZE-1);
var _my = irandom(MAP_SIZE-1);
var _margin = 4;
var _firstPatch = instance_create_layer(120 + (_mx - 1) *((sprite_get_width(s_patch))+_margin), 
										90 + (_my -1) *((sprite_get_height(s_patch))+_margin), 
										"Map", 
										o_patch);
with (_firstPatch) {
	mx = _mx;
	my = _my;
	patch_type = BIOME.grass; // NEXT: random card
	image_index = patch_type;
	ExpandMiniMap();
} 
global.newPatch = _mx + _my * MAP_SIZE;
instance_deactivate_object(o_patch);

global.patch_grid[# _mx, _my] = BIOME.grass;
CreateRandomPatch(_mx, _my, BIOME.grass);

// PlayerSpawn
var _x = _mx * CELL_WIDTH * (PATCH_SIZE+1) + 2 *CELL_WIDTH;
var _y = _my * CELL_HEIGHT * (PATCH_SIZE+1) + 2 *CELL_HEIGHT;
instance_create_layer(_x,  _y, "Instances", o_player);
instance_create_layer(0, 0, "Instances", o_camera);


