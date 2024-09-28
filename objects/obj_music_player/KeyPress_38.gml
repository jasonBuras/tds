/// @description Insert description here
// You can write your code in this editor
if(!obj_play_button.audio_playing){
	obj_play_button.sprite_index = spr_play_button	
	show_debug_message("AUDIO PLAYING")
	audio_resume_sound(obj_music_player.audio_playlist[current_song_index])
}