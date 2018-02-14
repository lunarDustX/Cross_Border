/// @description 
floating = false;
fdis = 5;
image_speed = 0;
image_index = irandom_range(1,3); // biome type

monsterNumber = 1;
monster_grid = ds_grid_create(monsterNumber, 2);
//monster_grid[# 0, 0] = o_fall_monster;
//monster_grid[# 0, 1] = [128, 144];

/*
for (var i = 0; i < ds_grid_width(monster_grid); i++) {
	var _pos = monster_grid[# i, 1];
	var _monster = monster_grid[# i, 0];
	instance_create_layer(_pos[0], _pos[1], "Instances", _monster);
}


