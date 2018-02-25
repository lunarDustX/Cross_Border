/// @description 
if (!canpick) exit;

if (other.state == PLAYER.wait) {
	instance_destroy(); // destroy the heart
	other.maxhp++;
	// sound
	audio_play_sound(a_hp, 5, false);	
}




