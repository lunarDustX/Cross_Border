var _dir;
for (_dir=0; _dir<360; _dir+=90) {
	var _x = o_player.x + lengthdir_x(CELL_SIZE, _dir);
	var _y = o_player.y + lengthdir_y(CELL_SIZE, _dir);
	with (instance_position(_x, _y, o_monster)) {
		frozen = 2;
		if (object_index == o_snowman) {
			hp++;	
			with (instance_create_layer(x+CELL_SIZE/2, y-CELL_SIZE/2, "Instances", o_text)) {
				//image_blend = make_color_hsv(150, 160, 255);
				textColor = c_lime;
				text = "+1";
			}
		}
		
		if (object_index == o_bat) {
			if (global.tile_grid[# x div CELL_SIZE, y div CELL_SIZE] == noone) {
				hp = 0;
				//instance_destroy();
			}
		}
	}
}