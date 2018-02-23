/// @description 
event_inherited();

// monster info
monsterNumber = 3;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_ox;
monster_grid[# 0, 1] = [1, 2];

monster_grid[# 1, 0] = o_ox;
monster_grid[# 1, 1] = [4, 2];

monster_grid[# 2, 0] = o_bat;
monster_grid[# 2, 1] = [3, 3];


// biome info
biome = BIOME.grass;
image_index = biome;

