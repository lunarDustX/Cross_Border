/// @description 
if (o_game.state == TURN.computer) exit;

event_user(state);

// Update the position & depth
patch_number = calculate_patch_number(x, y);
depth = -y;


if (hp <= 0) { // dead
	//show_message("GAME OVER");	
	//game_end();
}
