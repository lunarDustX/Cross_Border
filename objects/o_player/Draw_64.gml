/// @description show player state

// state panel
draw_sprite(s_player_panel, 0, 1326, 976);

// compass & setting
draw_sprite(s_compass, 0, 24, 1004);
draw_sprite(s_setting, 0, 26, 1110);

// 1. hp
if (hp > 0) {
	for (var i = 0; i < maxhp; i++) {
		if (i+1 <= hp) {
			draw_sprite(s_onehp, 1, 1374+ i*40, 1028);
		} else {
			draw_sprite(s_onehp, 0, 1374+ i*40, 1028);
		}
	}
}

draw_sprite(s_mana, mana, 1420, 1073);

/*
var _sx = global.view_width - 8;
for (var i = 0; i < maxmana; i++) {
	if (i+1 <= mana) {
		draw_sprite(s_mana, 1, _sx - (i+1)*14, 10);
	} else {
		draw_sprite(s_mana, 0, _sx -(i+1)*14, 10);	
	}
}
*/