/// @description Insert description here
// You can write your code in this editor
if(global.player_money >= 50 && global.fire_cooldown_max >= global.fire_cooldown_min){
	global.fire_cooldown_max -= 3
	global.player_money -= 50
	sprite_index = spr_button_item_shop_pressed
	alarm[0] = 10
}