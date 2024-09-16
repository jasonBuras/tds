/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_enemy_boss_1)){
	/*
	a bug that I'll leave in as a feature
	on later levels where it's not necessarily a "boss" it'll drop a key.
	the player can choose to fight the boss for its key, or take a longer/easier
	path to grab the key that spawns in at the start
	*/
	boss_level = true	
	_x = obj_enemy_boss_1.x
	_y = obj_enemy_boss_1.y
}

if(boss_level && !instance_exists(obj_enemy_boss_1)){
	instance_create_layer(_x,_y,"Instances", obj_key)
	boss_level = false
}