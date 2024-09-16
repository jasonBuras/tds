/// @description Insert description here
// You can write your code in this editor
if(screen_timer > 0){
	screen_timer--
}else{
	instance_destroy(obj_music_player)
	room_goto(rm_menu)	
}