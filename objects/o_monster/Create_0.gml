/// @description 

// Inherit the parent event
event_inherited();

SPEED = 10;

//
frozen = 0;
animSpd = 5;

monsterName = " ";
monsterID = -1;

normal = true;
normal_arr = array_create(5, false); // BIOME numbers

delta_hp = 0;
delta_atk = 0;
delta_move = 0;

moves = 1;
hp = 1;
atk = 1;

path = path_add();

lootChance = 0;

// diection
image_xscale = choose(-1, 1);