/// @description Insert description here
// You can write your code in this editor
//draw_text(0,0, "Score: " + string(global.player_score))
if(global.show_message){
	draw_set_font(fnt_game_text)
	draw_text(obj_player.x, obj_player.y - obj_player.sprite_height - 20, global.message)
}