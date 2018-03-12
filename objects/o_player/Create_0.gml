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
}
state = PLAYER.action;

// Attribute
SPEED = 10;

hp = 5;
maxhp = 5;

mana = 2;
maxmana = 4;
spd = 1; //move_range

target_arr = [o_sheep, o_bat, o_ox, o_zombie, o_snowman];



