/// @description 
event_inherited();

// monster layout
monsterNumber = 4;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_ox;
monster_grid[# 0, 1] = [1, 1];

monster_grid[# 1, 0] = o_ox;
monster_grid[# 1, 1] = [1, global.PATCH_SIZE-2];

monster_grid[# 2, 0] = o_ox;
monster_grid[# 2, 1] = [global.PATCH_SIZE-2, 1];

monster_grid[# 3, 0] = o_ox;
monster_grid[# 3, 1] = [global.PATCH_SIZE-2, global.PATCH_SIZE-2];


// biome info
biome = BIOME.grass;
sprite_index = s_card_grass;

