/// @description 
if (other.state == PLAYER.action) {
	if (x div CELL_SIZE == other.x div CELL_SIZE && y div CELL_SIZE == other.y div CELL_SIZE) {
		x = BIGNUM; // hide card
		EnterMapByPicking();
	}
}
