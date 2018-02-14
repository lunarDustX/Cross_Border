/// @description 
//show_debug_overlay(true);

instance_create_depth(0, 0, BIGNUM, o_bg);
instance_create_layer(0, 0, "Instances", o_ui_control);

randomize();

global.patch_grid[# 1, 1] = PATCH_TYPE.grass;
CreateRandomPatch(1, 1, PATCH_TYPE.grass);




/*
global.patch_grid[# 1, 2] = PATCH_TYPE.snow;
CreateRandomPatch(1, 2, PATCH_TYPE.snow);

global.patch_grid[# 0, 1] = PATCH_TYPE.desert;
CreateRandomPatch(0, 1, PATCH_TYPE.desert);
