/// @description 
if (!instance_exists(o_player)) exit;
if (!visible) exit;

if (o_player.mana >= cost) {
	o_player.mana -= cost;
	event_user(0);
} else {
	// PlaySound
	/*
	with (instance_create_layer(0, 0, "Instances", o_hintBox)) {
		text = "法力不足";
	}
	*/
	with (create_textbox_at_center("法力不足")) {
		alarm[0] = seconds_to_steps(1.0);	
	}
	//create_textbox(200, 200, 30, "sdfadgagag");
}