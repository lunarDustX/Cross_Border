// reset
if (room == r_tutorial) {
	o_instructionBox.index++;
}

instance_deactivate_object(o_player);
instance_activate_object(o_patch);

global.map = true;
global.card_selected = id;
