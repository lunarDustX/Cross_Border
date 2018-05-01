/// @description 
event_inherited();

abc = false;
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

// Attribute
SPEED = 10;
atk = 1;
critical_rate = 0.2;
miss_rate = 0.1;

hp = 5;
maxhp = 5;

mana = 2;
maxmana = 4;
spd = 1; //move_range

targets_arr = [o_sheep, o_bat, o_ox, o_zombie, o_snowman, o_ghost];
bad_tiles_arr = [o_waterTile];



