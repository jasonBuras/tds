/// @description Insert description here
// You can write your code in this editor
if(global.player_money >= 150){
	global.bullet_type = obj_bullet_ap
	global.player_money -= 150
	sprite_index = spr_button_pressed
	alarm[0] = 60
}