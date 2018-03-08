/// @description
//show_message("patch clicked.");
if (global.card_selected == noone) exit; // not selected
if (patch_type > 0) exit; // already exist
if (global.remap) exit;

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

// for cameraLock
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
//alarm[11] = seconds_to_steps(1.0);