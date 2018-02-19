/// @description show player state
// 1. hp
if (hp > 0) {
	for (var i = 0; i < hp; i++) {
		draw_sprite(s_onehp, image_index, 10+ i*16, 10);
	}
}