/// @description Insert description here

if(isVisible){
	lastX = x
	lastY = y
	alpha = 1
	lastAngle = angle
	
	draw_sprite_ext(spr_enemy_new,-1, x, y,1,1, angle, -1, 1)
	draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height)
	draw_sprite(spr_healthbar_outline, 0, healthbar_x, healthbar_y)
}else{
	draw_sprite_ext(spr_enemy_idle,-1, lastX, lastY,1,1, lastAngle, -1, alpha)
	alpha -= .005
}