/// @description 
if (!instance_exists(o_player)) exit;
if (!visible) exit;

if (o_player.webbed || o_player.myIce != noone) exit;

if (o_player.mana >= cost) {
	o_player.mana -= cost;
	event_user(0);
} else {
	PlaySound(a_no_mana);
	with (create_textbox_at_center("法力不足")) {
		alarm[0] = seconds_to_steps(1.0);	
	}
}

if (instance_exists(tip)) instance_destroy(tip);