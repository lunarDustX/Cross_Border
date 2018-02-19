/// @description move
if (!moving(xnext, ynext, SPEED)) { // after moving
	// update unit grid
	global.unit_grid[# xpre div CELL_SIZE, ypre div CELL_SIZE] = noone;
	global.unit_grid[# x div CELL_SIZE, y div CELL_SIZE] = id;
	// reset position vars
	yoffset = 0;
	xpre = x;
	ypre = y;
	
	// update AI Grid 
	mp_grid_add_cell(global.AIGrid, x div CELL_SIZE, y div CELL_SIZE);
	// fly
	if (sprite_index == s_bat) {
		for (var j = 0; j < 20; j++) {
			for (var i = 0; i < 20; i++) {
				if ((i+1) % (PATCH_SIZE+1) == 0 or (j+1) % (PATCH_SIZE+1) == 0) {
					if (global.tile_grid[# i, j] == noone) {
						//show_message(string(i) + " " + string(j)+ " " + string(global.tile_grid[# i, j]));
						mp_grid_add_cell(global.AIGrid, i, j);
					}
				}
			}
		}
	}
	
	// convert or not
	UpdateMonsterState();
	
	// change state
	moves--;
	if (moves > 0 && sprite_index == s_bat) {
		change_state(BAT.action);
	} else {
		next_unit();
		change_state(BAT.wait);
	}
	
} else { // moving to target position
	var _total_distance = point_distance(xpre, ypre, xnext, ynext);
	var _distance = point_distance(xpre, ypre, x, y,);
	yoffset = abs(sin(pi/(_total_distance/_distance)))*JUMP_HEIGHT;
	image_xscale = (x == xnext)? image_xscale : sign(xnext-x)*(-1);
}

