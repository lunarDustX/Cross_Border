/// @description 
if (patch_type > 0) exit;

patch_type = irandom_range(1,2);
image_index = patch_type;
global.patch_grid[# mx, my] = patch_type + 1001;
global.remap = true;
