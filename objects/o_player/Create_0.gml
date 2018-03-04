/// @description 
event_inherited();

// State
enum PLAYER {
	wait,
	action,
	move,
	attack,
	atk_back,
}
state = PLAYER.action;

// Attribute
SPEED = 8;

hp = 4;
maxhp = 5;

mana = 2;
maxmana = 4;
spd = 1; //move_range

target_arr = [o_sheep, o_bat, o_ox, o_zombie, o_snowman];



