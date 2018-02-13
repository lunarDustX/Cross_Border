/// @description 
if (other.object_index != o_player && other.object_index != o_vampire) exit;
if (!canpick) exit;

instance_destroy();
other.hp++;
audio_play_sound(a_hp, 5, false);
