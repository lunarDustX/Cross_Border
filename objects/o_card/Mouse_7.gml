/// @description 
with (o_card) {
	if (id == other.id) { 
		global.card_selected = image_index;
		if (floating) {
			
		} else {
			y -= fdis;
			floating = true;
		}
	} else { // another card
		if (floating) {
			y += fdis;
			floating = false;
		}
	}
}
