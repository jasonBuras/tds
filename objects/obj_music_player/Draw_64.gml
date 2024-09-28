/// @description Insert description here
// You can write your code in this editor
//instance_create_depth(1300,25,5,obj_play_button) //coming later

//683 is half the room width, 768 is the room height
draw_text(683,768-50, "Now Playing:\n" + string(string(song_titles[current_song_index])))