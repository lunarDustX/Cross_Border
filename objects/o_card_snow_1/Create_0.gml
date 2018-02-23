/// @description 
event_inherited();

// monster info
monsterNumber = 3;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_snowman;
monster_grid[# 0, 1] = [2, 1];

monster_grid[# 1, 0] = o_snowman;
monster_grid[# 1, 1] = [1, 3];

monster_grid[# 2, 0] = o_snowman;
monster_grid[# 2, 1] = [3, 4];

// biome info
biome = BIOME.snow;
image_index = biome;