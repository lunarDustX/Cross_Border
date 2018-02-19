/// @description 
event_inherited();
// effect
floating = false;
fdis = 5;

// monster info
index = 0;
monsterNumber = 1;
monster_grid = ds_grid_create(monsterNumber, 2);

// for spawning monster
px = 0;
py = 0;

// Data
monster_grid[# 0, 0] = o_sheep;
monster_grid[# 0, 1] = [2, 1];

monster_grid[# 0, 0] = o_bat;
monster_grid[# 0, 1] = [2, 3];

// biome info
biome = irandom_range(1,3);
image_index = biome;
image_speed = 0;



