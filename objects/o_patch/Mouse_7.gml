/// @description 
if (!global.card_selected) exit; // not selected
if (patch_type > 0) exit; // already exist

// data
patch_type = global.card_selected;
image_index = patch_type; 
global.card_selected = false;
global.patch_grid[# mx, my] = patch_type + BIGNUM;
global.remap = true;

// graphic
ExpandMiniMap();
with (o_card_selecting) {
	instance_destroy();	
}

// go back