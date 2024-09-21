/// @description Insert description here
// You can write your code in this editor
if(obj_player.has_key){
	global.current_room_index++
	window_set_cursor(cr_arrow)
	if(global.current_room_index < array_length(global.level_sequence)){
		global.zombie_health += 5
		global.zombie_defense += 5
		global.zombie_attack += 5
		room_goto(global.level_sequence[global.current_room_index])
	
	}else{
		global.current_room_index = 0
		room_goto(rm_game_over_win)
	}
}else{
	global.message = "YOU NEED THE KEY"
	global.message_timer = 120
	global.show_message = true
}
