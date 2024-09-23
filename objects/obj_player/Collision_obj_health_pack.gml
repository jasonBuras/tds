/// @description Insert description here
// You can write your code in this editor
var amount_to_heal = global.max_health * .25
if(health < global.max_health){
	if(global.max_health - health >= amount_to_heal){
		health += amount_to_heal
		instance_destroy(other)
	}else{
		health = global.max_health	
		instance_destroy(other)
	}
	
	if(health > global.max_health){
		health = global.max_health	
	}
	
	mspeed = global.player_speed
	if (health >= global.max_health){
		mspeed = 3	
	}
	if(mspeed < 3){
		mspeed++	
	}
	audio_play_sound(snd_heal,5,false)
	
}