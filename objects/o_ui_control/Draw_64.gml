/// @description Manage all GUI

// Monster Log ["M"]
if (global.monsterLog) {
	var _margin = 5;
	DrawGUIBackground();	
	for (var i = 0; i < monsterAmount; i++) {
		var _x = 20 +(i % 3)*(_margin + sprite_get_width(s_monsterNotFound));  
		var _y = 60 +(i div 3)*(_margin + sprite_get_height(s_monsterNotFound));
		if (monsterLogFound_arr[i]) { // found
			draw_sprite(monsterLogSprites_arr[i], 0, _x, _y);	
			if (i == monsterLogIndex) { // play anim
				draw_sprite(monsterLogSprites_arr[i], image_index, _x, _y);	
			}
		} else {
			//draw_sprite(s_monsterNotFound, 0, _x, _y);
		}
		if (i == monsterLogIndex) { // rectangle
			draw_sprite(s_currentMonsterLog, 0, _x, _y);
		}
	}
}

if (global.map) {
	DrawGUIBackground();	
}
