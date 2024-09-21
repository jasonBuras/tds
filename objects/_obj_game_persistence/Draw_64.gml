/// @description Insert description here
// You can write your code in this editor
if(global.current_room_index > 0){
	draw_set_font(fnt_hud_font)
	draw_text(0,0,"Money: $" + string(global.player_money) + " | Score: " + string(global.player_score) )
	draw_text(0,25,"Lives: " + string(global.lives))
	draw_text(0,50,"Kills: " + string(global.kill_count))
	draw_text(0,75,"Level: " + string(global.current_level))
}

if(global.show_message){
	draw_text(obj_player.x,obj_player.y - obj_player.sprite_height, global.message)
}