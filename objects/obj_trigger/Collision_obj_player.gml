/// @description Insert description here
// You can write your code in this editor
if(!global.triggered){
	global.triggered = true
	instance_create_layer(928,544,"Walls",obj_wall)
	instance_create_layer(864,544,"Walls",obj_wall)
	instance_create_layer(608,224,"Walls",obj_wall)
	instance_create_layer(608,288,"Walls",obj_wall)
	show_debug_message("Room Blocked In")
}