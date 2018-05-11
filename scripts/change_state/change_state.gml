///@change_state
///@arg state
var _state = argument0;
state = _state;

#region Fire Hurt
/*
if (state == CREATURE.wait) {
	var _xCell = x div CELL_WIDTH;
	var _yCell = y div CELL_HEIGHT;
	var _tile = global.tile_grid[# _xCell, _yCell];
	if (_tile && _tile.object_index == o_lavaTile) {
		hp--;
		with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
			textColor = c_red;
			text = "-1";
		}
	}	
}
*/
#endregion

#region Spike Hurt
///*
if (state == CREATURE.wait) {
	if (object_index != o_bat) {
		if (place_meeting(x+CELL_WIDTH/2, y+CELL_HEIGHT/2, o_spike)) {
			hp--;
			with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
				textColor = c_red;
				text = "-1";
			}
		}
		//if (in_same_cell(self, ))
	}
}
//*/
#endregion

if (object_index == o_player) {
	switch (state) {
		case PLAYER.wait:
			o_game.state = TURN.computer;
		break;
	}
}

if (object_index == o_bat) {
	switch (state) {
		case BAT.wait:
			if (normal) {
				moves = 2;
			} else {
				moves = 1;	
			}
		break;
	}
}

if (object_index == o_snowman) {
	switch (state) {
		case SNOWMAN.wait:
			if (normal) {
				moves = 1;
			} else {
				moves = 2;	
			}
		break;
	}
}


if (object_index == o_zombie) {
	switch (state) {
		case ZOMBIE.wait:
			if (normal) {
				moves = 1;
			} else {
				moves = 2;	
			}
		break;
	}
}