/// @description 
if (other.webbed or other.object_index == o_spider) exit;

if (other.state == CREATURE.wait) {
	if (in_same_cell(self, other)) {
		other.webbed = true;
		other.myWeb = self;
		other.image_speed = 0;
	}
}