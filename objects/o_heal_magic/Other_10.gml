/// @description fireball

PlaySound(a_heal);

with(o_player) {
	magic = MAGIC.heal;
	change_state(PLAYER.magic);
	if (instance_exists(o_action_cue)) {
		instance_destroy(o_action_cue);
	}
}
