/// @description
// Monster Log
#macro monsterAmount 9
global.monsterLog = false;
monsterLogIndex = 0;
monsterLogFound_arr = array_create(monsterAmount, false);
monsterLogSprites_arr = array_create(monsterAmount, s_monsterNotFound);

#macro MSHEEP 0
#macro MHORSE 0


// map_button
global.map = false;
/*
instance_create_layer(global.view_width-20, 
					  global.view_height-20, 
					  "Instances", 
					  o_map_button);
*/
					  
