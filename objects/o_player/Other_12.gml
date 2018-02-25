///@description move
// Update the yoffset
if (!moving(xnext, ynext, SPEED)) {
	global.unit_grid[# xpre div CELL_WIDTH, ypre div CELL_HEIGHT] = noone;
	global.unit_grid[# x div CELL_WIDTH, y div CELL_HEIGHT] = id;
	// reset
	yoffset = 0;
	xpre = x;
	ypre = y;
	
	// change state
	change_state(PLAYER.wait);
	// ***
		var _pn = calculate_patch_number(x, y);
		if (_pn != patch_number) {
			patch_number = _pn;
			if (ds_list_size(global.unit_list) > 0) { // active monster exists
				SpawnNewMonsterAtPatch(_pn);
			}
		} 
	// ***
	//audio_play_sound(a_land, 5, false);
} else {
	var _total_distance = point_distance(xpre, ypre, xnext, ynext);
	var _distance = point_distance(xpre, ypre, x, y,);
	yoffset = abs(sin(pi/(_total_distance/_distance)))*JUMP_HEIGHT;
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x);
}
