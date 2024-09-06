/// @description Insert description here
// You can write your code in this editor
if(obj_player.has_key){
	if(room_exists(room_next(room))){
		progress_level()
	}else{
		game_end()		
	}
}else{
	show_debug_message("YOU NEED THE KEY")
	draw_text(room_width/2,room_height/2, "YOU NEED THE KEY")	
}
