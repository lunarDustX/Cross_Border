/// @description 
event_inherited();

// monster info
monsterNumber = 1;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_ox;
monster_grid[# 0, 1] = [1, 1];


// biome info
biome = BIOME.snow;
//image_index = biome;
sprite_index = s_card_snow;