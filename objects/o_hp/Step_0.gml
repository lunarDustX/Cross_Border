/// @description 
if (index == 0) exit;
if (!instance_exists(o_player)) {
	visible = false;
	exit;
} else {
	if (!visible) visible = true;	
}

if (image_speed == 1) { // HP++
	if (image_index >= image_number-1) {
		image_speed = 0;	
	}
}

if (image_speed == -1) { // HP--
	//show_message(string(image_index));
	if (image_index < 1) {
		image_speed = 0;	
	}
}

if (index > o_player.hp) { 
	if (image_speed == 0 && image_index >= 4) {
		image_speed = -1;
	}
} else {
	if (image_speed == 0 && image_index <= 1) {
		image_speed = 1;
	}
}
