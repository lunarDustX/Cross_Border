/// @description 
with (o_card) {
	if (id == other.id) { 
		if (global.card_selected == id) {
			ui_y += fdis;
			floating = false;
			global.card_selected = noone;
		} else {
			if (floating) {
				
			} else {
				ui_y -= fdis;
				floating = true;
			}
			global.card_selected = id;
		}
	} else { // another card
		if (floating) {
			ui_y += fdis;
			floating = false;
		}
	}
}
