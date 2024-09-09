/// @description Insert description here
// You can write your code in this editor
if(global.player_score >= 50 && global.fire_cooldown_max >= global.fire_cooldown_min){
	global.fire_cooldown_max -= 1
	global.player_score -= 50
	
}