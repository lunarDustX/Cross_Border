/// @description 
event_inherited();

// monster info
monsterNumber = 2;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_bat;
monster_grid[# 0, 1] = [4, 1];

monster_grid[# 1, 0] = o_ox;
monster_grid[# 1, 1] = [0, 3];


// biome info
biome = BIOME.snow;
//image_index = biome;
sprite_index = s_card_snow;