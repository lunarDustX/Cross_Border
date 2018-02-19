/// @description
//show_message("patch clicked.");
if (global.card_selected == noone) exit; // not selected
if (patch_type > 0) exit; // already exist
if (instance_number(o_card) < 2) exit; // already patch one

// update Patch Grid
patch_type = global.card_selected.biome; 
image_index = patch_type; 
global.patch_grid[# mx, my] = patch_type + BIGNUM;
global.remap = true;

// graphic
ExpandMiniMap();
// 
with (o_card) {
	if (id == global.card_selected) { // hide the card
		ui_y = BIGNUM;	
	} else {
		instance_destroy();	// destroy extra cards
	}
}

// go back
// Press ESC key