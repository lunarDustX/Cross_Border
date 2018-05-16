///@description DoDamageTo
///@arg target
var _dmg;
var _target = argument0;

if (random(1) < critical_rate) {
	set_shake(o_camera, 2, seconds_to_steps(.2));
	PlaySound(a_hit_critical);
	_dmg = atk+1;
} else {
	PlaySound(a_hit);
	_dmg = atk;
}

_target.hp -= _dmg;
with (instance_create_layer(_target.x+CELL_WIDTH/2, _target.y-CELL_HEIGHT/2, "Instances", o_text)) {
	textColor = c_red;
	text = "-" + string(_dmg);
}

// Sound Effect
switch (_target.sprite_index) {
	case s_player_idle:
		PlaySound(a_player_hurt);
	break;
}