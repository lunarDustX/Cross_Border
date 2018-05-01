/// @description Decreasing State
var _t = irandom_range(8, 10);
audio_sound_gain(global.bgm, 0, _t *1000);
alarm[1] = _t *room_speed;