/// @description 
// fall effect
height = 800;
grav = 1.2;
vspd = 0;
onGround = false;

// floating effect
floating = false;
fdis = 5;

// for spawning monster
px = 0;
py = 0;

// monster info
index = 0;
monsterNumber = 2;
monster_grid = ds_grid_create(monsterNumber, 2);

monster_grid[# 0, 0] = o_ox;
monster_grid[# 0, 1] = [2, 1];

monster_grid[# 1, 0] = o_bat;
monster_grid[# 1, 1] = [2, 3];

// biome info
biome = irandom_range(1,5);
image_index = biome;

biome_depth = 1;
//image_speed = 0;

depth = -1;



