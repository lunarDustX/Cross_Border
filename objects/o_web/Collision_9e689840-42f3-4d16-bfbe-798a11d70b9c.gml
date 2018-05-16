/// @description 
/*
if (other.object_index == o_spider) exit;

if (other.webbed) exit;

if (other.state == CREATURE.wait) { // not correct
	if (in_same_cell(self, other)) {
		other.webbed = true;
		other.myWeb = self;
		other.image_speed = 0;
	}
}