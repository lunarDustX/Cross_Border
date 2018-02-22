/// @description 
event_inherited();

// monster info
monsterNumber = 4;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_ox;
monster_grid[# 0, 1] = [0, 0];

monster_grid[# 1, 0] = o_ox;
monster_grid[# 1, 1] = [0, 5];

monster_grid[# 2, 0] = o_ox;
monster_grid[# 2, 1] = [5, 0];

monster_grid[# 3, 0] = o_ox;
monster_grid[# 3, 1] = [5, 5];

// biome info
biome = BIOME.grass;
image_index = biome;

