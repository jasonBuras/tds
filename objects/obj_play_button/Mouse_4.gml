/// @description Insert description here
// You can write your code in this editor
if(audio_playing){
	sprite_index = spr_pause_button //indicate that pressing the button will pause
	show_debug_message("AUDIO STOPPED")
	audio_pause_sound(obj_music_player.audio_playlist[current_song_index])
}else{
	sprite_index = spr_play_button	
	show_debug_message("AUDIO PLAYING")
	audio_resume_sound(obj_music_player.audio_playlist[current_song_index])
}
