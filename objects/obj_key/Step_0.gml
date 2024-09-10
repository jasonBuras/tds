/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_enemy_boss_1)){
	boss_level = true	
	_x = obj_enemy_boss_1.x
	_y = obj_enemy_boss_1.y
}

if(boss_level && !instance_exists(obj_enemy_boss_1)){
	instance_create_layer(_x,_y,"Instances", obj_key)
	boss_level = false
}