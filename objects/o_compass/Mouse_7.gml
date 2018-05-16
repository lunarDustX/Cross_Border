/// @description  
if (!visible) exit;

if (!global.map) {
	OpenMap();	
} else {
	if (global.remap) {
		ExitMapAfterPlacing();		
	} else {
		CloseMap();	
	}
}

PlaySound(a_click);
