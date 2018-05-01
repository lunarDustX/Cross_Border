/// @description 
if (other.state == PLAYER.action) { //&& onGround) {
	if (x div CELL_WIDTH == other.x div CELL_WIDTH && y div CELL_HEIGHT == other.y div CELL_HEIGHT) {
		x += BIGNUM; // hide card
		EnterMapByPicking();
	}
}
