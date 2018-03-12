///@description PlaySound
///@arg sound

var _snd = argument0;
audio_sound_pitch(_snd, random_range(0.98, 1.02));
audio_play_sound(_snd, 5, 0);