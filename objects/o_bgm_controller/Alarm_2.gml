/// @description Increasing State
var _t = irandom_range(6, 8);
audio_sound_gain(global.bgm, 1, _t *1000);
alarm[3] = _t *room_speed;

