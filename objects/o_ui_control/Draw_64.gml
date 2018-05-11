/// @description Manage all GUI
#region Background 
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
	//DrawGUIBackground();	
	draw_sprite(s_mapBG, 0, 0, 0);
	if (global.card_selected && !global.remap) {
		draw_sprite(global.card_selected.sprite_index, 0,200, 300);	
	}
	//if (global.remap) {
	//	draw_text(600, 1000, "Press ESC to contine");	
	//}
}
#endregion

#region Setting
if (global.setting) {
	DrawGUIBackground();	
}
#endregion

#region stats

if (global.stats && instance_exists(o_player)) {
	draw_set_font(f_wawa);
	draw_text(20, 60, "生命值: " + string(o_player.hp) + "/" + string(o_player.maxhp));
	draw_text(20, 100, "法力值: " + string(o_player.mana) + "/" + string(o_player.maxmana));
	draw_text(20, 140, "暴击率: " + string(o_player.critical_rate*100) + "%");
	draw_text(20, 180, "闪避率: " + string(o_player.miss_rate*100) + "%");
}

#endregion