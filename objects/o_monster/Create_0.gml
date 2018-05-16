/// @description 

// Inherit the parent event
event_inherited();

action = true;

SPEED = 6.6;

//
frozen = -1;
myIce = noone;

monsterName = " ";
monsterID = -1;

normal = true;
normal_arr = array_create(5, false); // BIOME numbers

delta_hp = 0;
delta_atk = 0;
delta_move = 0;
delta_critical = 0;

moves = 1;
hp = 1;
atk = 0;

path = path_add();

lootChance = 0;

// random diection
image_xscale = choose(-1, 1);