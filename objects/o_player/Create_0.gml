/// @description 
event_inherited();

// Magic
#macro MAGIC_COST 2

// State
enum PLAYER {
	wait,
	action,
	move,
	attack,
	atk_back,
	magic = 11,
	heal = 12,
}
state = PLAYER.action;

enum MAGIC {
	ice,
	fire,
	heal,
}
magic = noone;



// Attribute
SPEED = 6;
atk = 1;
critical_rate = 0.15;
miss_rate = 0.05;

hp = 5;
maxhp = 5;

mana = 2;
maxmana = 4;
abc = 0;

spd = 1; //move_range

targets_arr = [o_chest, o_flower, o_tree, o_sheep, o_bat, o_ox, o_zombie, o_snowman, o_ghost, o_spider];
bad_tiles_arr = [o_waterTile];



