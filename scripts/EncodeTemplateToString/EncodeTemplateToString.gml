
//xCells = room_width div CELL_WIDTH;
//yCells = room_height div CELL_HEIGHT;

var _layer_id = layer_get_id("Tiles");
var _map_id = layer_tilemap_get_id(_layer_id);

var patch_data = "";


for (var _y = 0; _y < yTiles; _y++) {
	for (var _x = 0; _x < xTiles; _x++) {
		var _tiledata = tilemap_get(_map_id, _x, _y);
		if (_tiledata >= 0 && _tiledata <= 9) { // ord("0") = 48
			patch_data += chr(48 +_tiledata);
		} else if (_tiledata >= 10 && _tiledata <= 35) { // use 'a'-'z' if _tiledata > 9, ord("a") = 97
			patch_data += chr(87 +_tiledata);
		}
	}
}

//show_message(patch_data);
saveDir = get_save_filename("*.txt", room_get_name(room) + ".txt");
file = file_text_open_write(saveDir);
file_text_write_string(file, patch_data);
file_text_close(file);