/// @description 
if (other.webbed) exit;

if (other.state == CREATURE.wait) {
	if (in_same_cell(self, other)) {
		other.webbed = true;
		other.myWeb = self;
		other.image_speed = 0;
	}
}