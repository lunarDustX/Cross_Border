/// @description
//show_message("patch clicked.");
if (global.card_selected == noone) exit; // not selected
if (patch_type > 0) exit; // already exist
if (global.remap) exit;
//if (instance_number(o_card) < 2) exit; // already patch one



// update Patch Grid
patch_type = global.card_selected.biome; 
image_index = patch_type;  // alpha = 1;
global.patch_grid[# mx, my] = patch_type + BIGNUM;
global.remap = true;

// reset RebornArr
var _pn = mx + my *MAP_SIZE;
for (var i = 0; i < array_length_1d(global.RebornArr); i++) {
	global.RebornArr[i] = 1;	
}
global.RebornArr[_pn] = 0;

//
global.newPatch = _pn;

// graphic
ExpandMiniMap();

/* 
with (o_card) {
	if (id == global.card_selected) { // hide the card
		ui_y = BIGNUM;	
	} else {
		ds_list_add(global.card_list, object_index); 
		instance_destroy();	// destroy extra cards
	}
}
*/

// go back
show_debug_message("Instruction: Press ESC to go back.");