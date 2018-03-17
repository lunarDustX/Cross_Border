if (room == r_game) {
	CameraLockAtNewPatch();
}

if (room == r_tutorial) {
	o_instructionBox.index++;	
}

global.map = false;
instance_deactivate_object(o_patch);
instance_activate_object(o_player);


//show_message("exit");