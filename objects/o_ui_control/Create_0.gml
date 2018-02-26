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
// Monster Log
#macro monsterAmount 9
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

// map
global.map = false;


					  
