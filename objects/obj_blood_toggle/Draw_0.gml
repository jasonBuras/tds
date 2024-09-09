/// @description Insert description here
// You can write your code in this editor
if(global.blood_on){
	sprite_index = spr_blood_on	//blood doesn't look like a word anymore
}else{
	sprite_index = spr_blood_off //it reads like blued in my head now
}
draw_self()
draw_set_font(Font1)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if(global.blood_on){
	draw_text(x,y,"BLOOD: ON")
}else{
	draw_text(x,y,"BLOOD: OFF")
}


draw_set_halign(fa_left)
draw_set_valign(fa_top)