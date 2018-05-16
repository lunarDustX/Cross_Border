/// @description 
event_inherited();

// monster info
monsterNumber = 3;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_zombie;
monster_grid[# 0, 1] = [4, 4];

monster_grid[# 1, 0] = o_bat;
monster_grid[# 1, 1] = [3, 5];

monster_grid[# 2, 0] = o_zombie;
monster_grid[# 2, 1] = [0, 1];


// biome info
biome = BIOME.grave;
sprite_index = s_card_grave;