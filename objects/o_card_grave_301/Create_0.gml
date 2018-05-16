/// @description 
event_inherited();

// monster layout
monsterNumber = 5;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_chest;
monster_grid[# 0, 1] = [2, 2];

monster_grid[# 1, 0] = choose(o_spider, o_ghost);
monster_grid[# 1, 1] = [2, 3];

monster_grid[# 2, 0] = choose(o_spider, o_ghost);
monster_grid[# 2, 1] = [2, 1];

monster_grid[# 3, 0] = o_zombie;
monster_grid[# 3, 1] = [1, 2];

monster_grid[# 4, 0] = o_zombie;
monster_grid[# 4, 1] = [3, 2];




// biome info
biome = BIOME.grave;
//image_index = biome;
sprite_index = s_card_grave;