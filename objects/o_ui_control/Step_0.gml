/// @description map button
if (!instance_exists(o_map_button)) {
	if (instance_number(o_monster) <= 0 && global.map == false) {
		instance_create_layer(global.view_width-20, 
					  global.view_height-20, 
					  "Instances", 
					  o_map_button);
	}
}