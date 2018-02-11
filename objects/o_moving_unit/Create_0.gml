/// @description
event_inherited();

// Effect
yoffset = 0;
JUMP_HEIGHT = 8;
SPEED = 2;
shake = 0;

// Convert
//sprites_arr = [];
//sprites_arr[PATCH_TYPE.empty] = noone;

// Attribute
enum CREATURE {
	wait,
	action,
}
state = 0;

hp = 2;
atk = 1;

xnext = 0;
ynext = 0;
xpre = x;
ypre = y;

target_arr = [];
target = noone;
fov = 4;

bad_tile_arr = [VOID, EMPTY];



