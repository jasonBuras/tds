/// @description Insert description here
// You can write your code in this editor
if(zombie_count >= 0 && room_get_name(room) != room_get_name(rm_shop) && room_get_name(room) != room_get_name(rm_menu)){
	draw_set_font(fnt_hud_font)
	draw_text(1200, 0, "Zombies: " + string(zombie_count))
}