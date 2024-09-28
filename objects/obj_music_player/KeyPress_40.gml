/// @description Insert description here
// You can write your code in this editor
if(obj_play_button.audio_playing){
	obj_play_button.sprite_index = spr_pause_button //indicate that pressing the button will pause
	show_debug_message("AUDIO STOPPED")
	audio_pause_sound(obj_music_player.audio_playlist[current_song_index])
}