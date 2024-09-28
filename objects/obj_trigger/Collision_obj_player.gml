/// @description Insert description here
// You can write your code in this editor
if(!global.triggered){
	global.triggered = true
	instance_create_layer(928,544,"Walls",obj_blocker, {image_angle: 90})
	instance_create_layer(864,544,"Walls",obj_blocker, {image_angle: 90})
	instance_create_layer(608,224,"Walls",obj_blocker)
	instance_create_layer(608,288,"Walls",obj_blocker)
	show_debug_message("Room Blocked In")
}
if(global.triggered && !instance_exists(obj_enemy_boss_1)){
	instance_destroy(obj_blocker)	
}