/// @description loot
event_inherited();

var _loot = noone;
if (normal) { // ox loot
	var _p = random(1);
	if (_p < 0.30) {
		_loot = o_heart;
	} 
} else { // 
	var _p = random(1);
	if (_p < 0.3) {
		with (create_textbox_at_center("暴击斧头 +5%暴击")) {
			alarm[0] = seconds_to_steps(1.2);		
		}
		with (o_player) {
			critical_rate = max(0.4, critical_rate+0.05);	
		}
		//show_message("暴击斧头?");
		//_loot = noone;
	} 
}
if (_loot != noone) {
	instance_create_layer(x, y, "Instances", _loot);
}

