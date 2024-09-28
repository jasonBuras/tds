/// @description Insert description here
// You can write your code in this editor
if(!audio_is_playing(audio_playlist[current_song_index])){
	if(current_song_index < array_length(audio_playlist)){
		current_song_index++	
		if(current_song_index >= array_length(audio_playlist)){
			current_song_index = 0
		}
	}else{
		current_song_index = 0	
	}
		audio_play_sound(audio_playlist[current_song_index], 10, false)
		show_debug_message("Now Playing: " + string(song_titles[current_song_index]))
	
}