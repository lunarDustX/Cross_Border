if (room == r_game) {
	CameraLockAtNewPatch();
}

global.map = false;
instance_deactivate_object(o_patch);
instance_activate_object(o_player);


//show_message("exit");