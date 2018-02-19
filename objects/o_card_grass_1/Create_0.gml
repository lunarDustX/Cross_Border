/// @description 
event_inherited();

// monster info
monsterNumber = 1;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_ox;
monster_grid[# 0, 1] = [2, 1];

// biome info
biome = BIOME.grass;
image_index = biome;

