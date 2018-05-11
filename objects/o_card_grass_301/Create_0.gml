/// @description 
event_inherited();

// monster info
monsterNumber = 5;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_chest;
monster_grid[# 0, 1] = [2, 2];

monster_grid[# 1, 0] = o_bat;
monster_grid[# 1, 1] = [2, 3];

monster_grid[# 2, 0] = o_bat;
monster_grid[# 2, 1] = [2, 1];

monster_grid[# 3, 0] = o_ox;
monster_grid[# 3, 1] = [1, 2];

monster_grid[# 4, 0] = o_ox;
monster_grid[# 4, 1] = [3, 2];

// biome info
biome = BIOME.grass;
//image_index = biome;
sprite_index = s_card_grass;

