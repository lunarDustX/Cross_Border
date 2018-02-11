/// @description 
if (patch_type > 0) exit; // already exist

patch_type = irandom_range(1,3);
image_index = patch_type; 
global.patch_grid[# mx, my] = patch_type + BIGNUM;
global.remap = true;

ExpandMiniMap();