// reset
if (room == r_tutorial) {
	o_instructionBox.index++;
}

/*
var pos = calculate_patch_pos(o_player.x, o_player.y);
global.px = pos[0];
global.py = pos[1];
*/

instance_deactivate_object(o_player);
instance_activate_object(o_patch);

global.map = true;
global.card_selected = id;
