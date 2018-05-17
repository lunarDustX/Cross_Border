/// @description

#region BG Anim
bg[1] = s_bg_1;
bg[2] = s_bg_2;
bg[3] = s_bg_3;
bg[4] = s_bg_4;

timer[1] = 0;
timer[2] = 0;
timer[3] = 0;
timer[4] = 0;

animSpd[1] = room_speed;
animSpd[2] = room_speed;
animSpd[3] = room_speed;
animSpd[4] = room_speed;

imageIndex[1] = 0;
imageIndex[2] = 0;
imageIndex[3] = 0;
imageIndex[4] = 0;
#endregion

// Player HP
for (var i = 0; i < 5; i++) {
	with (instance_create_depth(1374 + i*40, 1028, depth-1, o_hp)) {
		index = i+1;
		image_speed = 0;
		image_index = image_number-1;
	}
}

#region Buttons
instance_create_depth(24, 1004, depth-1, o_compass);
instance_create_depth(57, 1141, depth-2, o_setting);

// magic button
instance_create_depth(global.view_width/2, global.view_height-100, depth-1, o_ice_magic);
instance_create_depth(global.view_width/2+100, global.view_height-100, depth-1, o_heal_magic);
#endregion

// Monster Log
#macro monsterAmount 12
global.monsterLog = false;
monsterLogIndex = 0;
monsterLogFound_arr = array_create(monsterAmount, false);
monsterLogSprites_arr = array_create(monsterAmount, s_monsterNotFound);

// MonsterID
#macro ID_OX 0
#macro ID_MINOTAUR 1
#macro ID_BAT 2
#macro ID_VAMPIRE 3
#macro ID_SNOWMAN_SMALL 4
#macro ID_SNOWMAN_BIG 5
#macro ID_ZOMBIE 6
#macro ID_SKELETON_A 7
#macro ID_SKELETON_B 8
#macro ID_SKELETON_C 9
#macro ID_GHOST 10
#macro ID_SPIDER 11

// map & setting
global.map = false;
global.setting = false;

global.stats = false;

					  
