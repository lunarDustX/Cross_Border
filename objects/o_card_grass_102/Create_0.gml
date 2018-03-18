/// @description 
event_inherited();

// monster info
monsterNumber = 1;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_bat;
monster_grid[# 0, 1] = [3, 2];


// biome info
biome = BIOME.grass;
//image_index = biome;
sprite_index = s_card_grass;

