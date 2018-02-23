///@change_state
///@arg state
var _state = argument0;
state = _state;

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