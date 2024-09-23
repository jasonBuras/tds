/// @description Insert description here
// You can write your code in this editor
if(obj_player.has_key){
	global.current_room_index++
	if(global.triggered){
		global.triggered = false	
	}
	if(global.lives < 3){
			global.lives++
			show_debug_message("You've earned an extra life")
	}
	window_set_cursor(cr_arrow)
	if(global.current_room_index < array_length(global.level_sequence)){
		global.zombie_health += 3
		global.zombie_defense += 3
		global.zombie_attack += 3
		global.current_level++
		
		room_goto(global.level_sequence[global.current_room_index])
	
	}else{
		global.current_level = 1
		global.current_room_index = 0
		room_goto(rm_game_over_win)
	}
}else{
	global.message = "YOU NEED THE KEY"
	global.message_timer = 120
	global.show_message = true
}
