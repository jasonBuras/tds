/// @description Insert description here
// You can write your code in this editor
if(global.player_money >= 25){
	global.bullet_speed += 1
	global.player_money -= 25
	sprite_index = spr_button_item_shop_pressed
	alarm[0] = 10
}