/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(Font2)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if(global.lives > 0){
	draw_text(room_width/2,room_height/2,"You survived... for now")
}else{
	draw_text(room_width/2,room_height/2,"You have become what you set out to irradicate")
}
	draw_text(room_width/2,room_height/2 + 50,"Kills: " + string(global.kill_count))
	draw_text(room_width/2,room_height/2 + 100,"Accuracy: " + string((global.shots_hit/global.shots_fired) * 100) + "%")
draw_set_halign(fa_left)
draw_set_valign(fa_top)