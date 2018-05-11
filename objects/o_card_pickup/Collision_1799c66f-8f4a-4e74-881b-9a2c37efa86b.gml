/// @description 
if (other.state == PLAYER.action) { 
	if (x div CELL_WIDTH == other.x div CELL_WIDTH && y div CELL_HEIGHT == other.y div CELL_HEIGHT) {
		x += BIGNUM*2; // Hide selected Card
		EnterMapByPicking();
		
		// Destroy Extra Cards
		if (instance_number(o_card_pickup > 1)) {
			var _id = id;
			with (o_card_pickup) {
				if (id != _id) instance_destroy();
			}
		}
		//
	}
}
