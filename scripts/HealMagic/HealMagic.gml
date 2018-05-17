
hp = min(hp+1 , maxhp);
with (instance_create_layer(other.x+CELL_WIDTH/2, other.y-CELL_HEIGHT/2, "Instances", o_text)) {
	textColor = c_lime;
	text = "+1";
}

// effect
repeat(10) {
	instance_create_layer(x+random(CELL_WIDTH), y+random(CELL_HEIGHT), "Instances", o_heal_effect);
}

/*
// sound
PlaySound(a_hp);
	

/*
var _dir;
for (_dir=0; _dir<360; _dir+=90) {
	var _x = o_player.x + lengthdir_x(CELL_WIDTH, _dir);
	var _y = o_player.y + lengthdir_y(CELL_HEIGHT, _dir);
	var _monster = global.unit_grid[# _x div CELL_WIDTH, _y div CELL_HEIGHT];
	if (_monster != noone && object_is_ancestor(_monster.object_index, o_monster)) { 
		//with (instance_position(_x, _y, o_monster)) { // Potential BUG? 
		with (_monster) {
			target = o_player.id;
			var _dmg = choose(1,2);
			hp -= _dmg;
			with (instance_create_layer(_monster.x+CELL_WIDTH/2, _monster.y-CELL_HEIGHT/2, "Instances", o_text)) {
				textColor = c_red;
				text = "-" + string(_dmg);
			}
		}
	}
}