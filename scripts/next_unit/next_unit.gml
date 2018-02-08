global.list_index++;
var _size = ds_list_size(global.unit_list);

if (global.list_index >= _size) {
	o_game.state = TURN.player;
	global.list_index = 0;
	
	o_player.state = PLAYER.action;
}