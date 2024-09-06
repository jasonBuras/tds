/// @description Insert description here
// You can write your code in this editor
if(health < max_health){
	if(max_health - health >= 30){
		health += 30
		instance_destroy(obj_health_pack)
	}else{
		health = max_health	
		instance_destroy(obj_health_pack)
	}
	
	if(health > max_health){
		health = max_health	
	}
	
}