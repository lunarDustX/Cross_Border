///@description CheckTileDamage

var _tile = global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT];
switch (_tile.object_index) {
	case o_flowerTile:
		PlaySound(a_hit);
		hp--;
		with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
			textColor = c_red;
			text = "-1";
		}
	break;
}