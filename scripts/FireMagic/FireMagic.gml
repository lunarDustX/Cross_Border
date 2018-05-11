var _dir;
for (_dir=0; _dir<360; _dir+=90) {
	var _x = o_player.x + lengthdir_x(CELL_WIDTH, _dir);
	var _y = o_player.y + lengthdir_y(CELL_HEIGHT, _dir);
	var _monster = global.unit_grid[# _x div CELL_WIDTH, _y div CELL_HEIGHT];
	if (_monster != noone && object_is_ancestor(_monster.object_index, o_monster)) { 
		//with (instance_position(_x, _y, o_monster)) { // Potential BUG? 
		with (_monster) {
			target = o_player.id;
			hp--;
			with (instance_create_layer(_monster.x+CELL_WIDTH/2, _monster.y-CELL_HEIGHT/2, "Instances", o_text)) {
				textColor = c_red;
				text = "-1";
			}
		}
	}
}