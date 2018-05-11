/// @description fireball

//PlaySound();
with(o_player) {
	magic = MAGIC.fire;
	change_state(PLAYER.magic);
	if (instance_exists(o_action_cue)) {
		instance_destroy(o_action_cue);
	}
}
