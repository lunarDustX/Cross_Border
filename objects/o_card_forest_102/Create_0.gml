/// @description 
event_inherited();

// monster info
monsterNumber = 2;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 1, 0] = o_bat;
monster_grid[# 1, 1] = [1, 3];

monster_grid[# 0, 0] = o_bat;
monster_grid[# 0, 1] = [2, 1];

// biome info
biome = BIOME.forest;
sprite_index = s_card_forest;