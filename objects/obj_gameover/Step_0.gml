/// @description Insert description here
// You can write your code in this editor
if(screen_timer > 0){
	screen_timer--
}else{
	audio_stop_all()
	room_goto(rm_menu)	
}