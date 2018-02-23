/// @description show player state
// 1. hp
if (hp > 0) {
	for (var i = 0; i < maxhp; i++) {
		if (i+1 <= hp) {
			draw_sprite(s_onehp, 1, 8+ i*14, 10);
		} else {
			draw_sprite(s_onehp, 0, 8+ i*14, 10);
		}
	}
}

var _sx = global.view_width - 8;
for (var i = 0; i < maxmana; i++) {
	if (i+1 <= mana) {
		draw_sprite(s_mana, 1, _sx - (i+1)*14, 10);
	} else {
		draw_sprite(s_mana, 0, _sx -(i+1)*14, 10);	
	}
}