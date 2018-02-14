/// @description 
with (o_card) {
	if (id == other.id) { 
		global.card_selected = id;
		if (floating) {
			
		} else {
			ui_y -= fdis;
			floating = true;
		}
	} else { // another card
		if (floating) {
			ui_y += fdis;
			floating = false;
		}
	}
}
