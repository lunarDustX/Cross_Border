/// @description move
if (!moving(xnext, ynext, SPEED)) { // after moving
	PlaySound(a_land);
	
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
	var _convert = UpdateMonsterStateAfterMoving();
	if (_convert) exit;
	
	//
	CheckTileDamage();
	
	// change state
	if (position_meeting(x+CELL_WIDTH/2, y+CELL_HEIGHT/2, o_web)) { // EXTRA move on WEB
		change_state(SPIDER.action);
	} else {
		next_unit();
		change_state(SPIDER.wait);
	}
	
} else { // moving to target position
	var _total_distance = point_distance(xpre, ypre, xnext, ynext);
	var _distance = point_distance(xpre, ypre, x, y,);
	yoffset = abs(sin(pi/(_total_distance/_distance)))*JUMP_HEIGHT;
	image_xscale = (x == xnext)? image_xscale : sign(xnext-x);
}

