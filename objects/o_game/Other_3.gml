/// @description 
ds_grid_destroy(global.unit_grid);
ds_grid_destroy(global.tile_grid);

ds_list_destroy(global.unit_list);

ds_grid_destroy(global.patch_grid);
mp_grid_destroy(global.AIGrid);

audio_emitter_free(global.audio_em);

/* tilemap
ds_list_destroy(global.grass_templates_list);
ds_list_destroy(global.snow_templates_list);
