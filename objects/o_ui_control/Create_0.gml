/// @description

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
					  
