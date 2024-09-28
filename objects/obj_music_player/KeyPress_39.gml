/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(obj_music_player.audio_playlist[current_song_index])
if(current_song_index < array_length(audio_playlist)){
		current_song_index++	
		if(current_song_index >= array_length(audio_playlist)){
			current_song_index = 0
		}
	}else{
		current_song_index = 0	
	}
	
//audio_play_sound(obj_music_player.audio_playlist[current_song_index])