/// @description alpha
if (image_index > 0) { // not empty
	if (alpha < 1) {
		alpha = lerp(alpha, 1, 0.1);	
	}
} else {
	if (alpha < 0.4) {
		alpha = lerp(alpha, 0.4, 0.05);	
	}
}
