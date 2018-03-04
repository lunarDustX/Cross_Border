/// @description Manage all GUI
#region Common Game UI
/*
for (var i = 4; i >=1 ; i--) {
	if (i == 2) continue;
	timer[i]++;
	if (timer[i] == animSpd[i]) {
		timer[i] = 0;
		imageIndex[i] = 1 - imageIndex[i];
	}
	draw_sprite(bg[i], imageIndex[i], 0, 0);
}
*/
draw_sprite(s_bg_4, 1, 0, 0);
draw_sprite(s_bg_3, 1, 0, 0);
//draw_sprite(s_bg_2, 1, 0, 0);
draw_sprite(s_bg_1, 1, 0, 0);
draw_sprite(s_bg_0, 0, 0, 0);
#endregion

#region Monster Log ["M"]
if (global.monsterLog) {
	var _margin = 24;
	DrawGUIBackground();	
	for (var i = 0; i < monsterAmount; i++) {
		var _x = 600 +(i % 3)*(_margin + sprite_get_width(s_monsterNotFound));  
		var _y = 400 +(i div 3)*(_margin + sprite_get_height(s_monsterNotFound));
		if (monsterLogFound_arr[i]) { // found
			draw_sprite(monsterLogSprites_arr[i], 0, _x, _y);	
			if (i == monsterLogIndex) { // play anim
				draw_sprite(monsterLogSprites_arr[i], image_index, _x, _y);	
			}
		} else {
			draw_sprite(s_monsterNotFound, 0, _x, _y);
		}
		if (i == monsterLogIndex) { // rectangle
			draw_sprite(s_currentMonsterLog, 0, _x, _y);
		}
	}
}
#endregion

#region Map
if (global.map) {
	DrawGUIBackground();	
	if (global.remap) {
		draw_text(600, 1000, "Press ESC to contine");	
	}
}
#endregion

