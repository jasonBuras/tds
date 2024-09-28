/// @description Insert description here
// You can write your code in this editor

//create array/list for all sound tracks
//draw sprites for play/pause, skip, mute, shuffle, etc
audio_playlist = [
snd_music,
snd_music_2,
snd_music_3
];

song_titles = [
"Damned (Black Ops Zombies Theme) (Rambeaux Remix)",
"Incubus- Aqueous Transmission (Rambeaux Remix)",
"Magic Sword- Legend of The Keeper"
]
current_song_index = 0
current_song = audio_playlist[current_song_index]

audio_play_sound(audio_playlist[current_song_index], 10, false)
