/// @description 
event_inherited();

// monster info
monsterNumber = 3;
monster_grid = ds_grid_create(monsterNumber, 2);

// monster info
monsterNumber = 3;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_zombie;
monster_grid[# 0, 1] = [2, 2];

monster_grid[# 1, 0] = o_ghost;
monster_grid[# 1, 1] = [3, 3];

monster_grid[# 2, 0] = o_bat;
monster_grid[# 2, 1] = [2, 3];


// biome info
biome = BIOME.grave;
//image_index = biome;
sprite_index = s_card_grave;