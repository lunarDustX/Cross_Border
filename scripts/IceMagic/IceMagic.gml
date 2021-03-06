var _dir;
for (_dir=0; _dir<360; _dir+=90) {
	var _x = o_player.x + lengthdir_x(CELL_WIDTH, _dir);
	var _y = o_player.y + lengthdir_y(CELL_HEIGHT, _dir);
	var _monster = global.unit_grid[# _x div CELL_WIDTH, _y div CELL_HEIGHT];
	if (_monster != noone && object_is_ancestor(_monster.object_index, o_monster)) { 
		//with (instance_position(_x, _y, o_monster)) { // Potential BUG? 
		with (_monster) {
			if (frozen < 0) {
				with (instance_create_layer(_x+CELL_WIDTH/2, _y+CELL_HEIGHT-15, "Instances", o_ice)) { // ice effect		
					parent = other.id;
					depth = parent.depth-1;
					parent.myIce = id;
				}
			} else {
				myIce.image_index = image_number-1;
			}
			frozen = 2; // freeze 2 turns
			image_speed = 0; // stop anim
		
			#region SPECIAL MONSTERS
			if (object_index == o_snowman) {
				hp++;	
				with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
					textColor = c_lime;
					text = "+1";
				}
			}
		
			if (object_index == o_bat) {
				if (global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT] == noone) {
					hp = 0;
				}
			}
			#endregion
		}
	}
}