/// @description 
event_inherited();

// monster info
monsterNumber = 2;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_ox;
monster_grid[# 0, 1] = [1, 2];

monster_grid[# 1, 0] = o_spider;
monster_grid[# 1, 1] = [3, 2];

// biome info
biome = BIOME.grass;
sprite_index = s_card_grass;

