/// @description 
global.bgm = noone;

// State
// 0.normal 1.decrease 2.quiet 3.increase

if (audio_is_playing(a_bgm)) {
	audio_stop_sound(a_bgm);
	global.bgm = noone;
}

global.bgm = audio_play_sound(a_bgm, 10, true);
var _t = irandom_range(30, 40);
alarm[0] = _t *room_speed;