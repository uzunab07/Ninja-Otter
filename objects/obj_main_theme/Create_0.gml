/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(snd_title_theme)
if (!audio_is_playing(snd_main_theme)){
	audio_play_sound(snd_main_theme, 1000, true);
}