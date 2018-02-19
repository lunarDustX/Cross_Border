/// @description 
//show_debug_overlay(true);
draw_set_font(f_test);

instance_create_depth(0, 0, BIGNUM, o_bg);
instance_create_layer(0, 0, "Instances", o_ui_control);
instance_create_layer(0, 0, "Instances", o_ai_control);

//global.pause = false;
randomize();

// first patch
var _firstPatch = instance_create_layer(120, 58, "Map", o_patch);
with (_firstPatch) {
	mx = 1;
	my = 1;
	patch_type = BIOME.grass;
	image_index = patch_type;
	ExpandMiniMap();
}
//instance_deactivate_layer("Map");
instance_deactivate_object(o_patch);

global.patch_grid[# 1, 1] = BIOME.grass;
CreateRandomPatch(1, 1, BIOME.grass);





/*
global.patch_grid[# 1, 2] = BIOME.snow;
CreateRandomPatch(1, 2, BIOME.snow);

global.patch_grid[# 0, 1] = BIOME.desert;
CreateRandomPatch(0, 1, BIOME.desert);
