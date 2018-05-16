///@description move
if (!moving(xnext, ynext, SPEED)) {
	PlaySound(a_land);
	UpdatePlayerStateAfterMoving();
	// change state
	CheckWeb();
	CheckTileDamage();	
	change_state(PLAYER.wait);
} else {
	var _total_distance = point_distance(xpre, ypre, xnext, ynext);
	var _distance = point_distance(xpre, ypre, x, y,);
	yoffset = abs(sin(pi/(_total_distance/_distance)))*JUMP_HEIGHT;
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x);
}
