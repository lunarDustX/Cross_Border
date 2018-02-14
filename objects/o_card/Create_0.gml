/// @description 
event_inherited();
// effect
floating = false;
fdis = 5;

// biome info
image_speed = 0;
biome = irandom_range(1,3);
image_index = biome;

// monster info
index = 0;
monsterNumber = 1;
monster_grid = ds_grid_create(monsterNumber, 2);

// for spawning monster
px = 0;
py = 0;

// example 
monster_grid[# 0, 0] = o_fall_monster;
monster_grid[# 0, 1] = [2, 1];


