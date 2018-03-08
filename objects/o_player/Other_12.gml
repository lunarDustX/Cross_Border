///@description move
if (!moving(xnext, ynext, SPEED)) {
	UpdatePlayerStateAfterMoving();
	// change state
	change_state(PLAYER.wait);
	
	//audio_play_sound(a_land, 5, false);
} else {
	var _total_distance = point_distance(xpre, ypre, xnext, ynext);
	var _distance = point_distance(xpre, ypre, x, y,);
	yoffset = abs(sin(pi/(_total_distance/_distance)))*JUMP_HEIGHT;
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x);
}
