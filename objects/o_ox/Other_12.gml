/// @description move
if (!moving(xnext, ynext, SPEED)) { // after moving
	// update unit grid
	global.unit_grid[# xpre div CELL_WIDTH, ypre div CELL_HEIGHT] = noone;
	global.unit_grid[# x div CELL_WIDTH, y div CELL_HEIGHT] = id;
	// reset position vars
	yoffset = 0;
	xpre = x;
	ypre = y;
	
	// update AI Grid 
	mp_grid_add_cell(global.AIGrid, x div CELL_WIDTH, y div CELL_HEIGHT);
	
	// convert or not
	UpdateMonsterState();
	
	// change state
	next_unit();
	change_state(OX.wait);
	
} else { // moving to target position
	var _total_distance = point_distance(xpre, ypre, xnext, ynext);
	var _distance = point_distance(xpre, ypre, x, y,);
	yoffset = abs(sin(pi/(_total_distance/_distance)))*JUMP_HEIGHT;
	image_xscale = (x == xnext)? image_xscale : sign(xnext-x);
}

