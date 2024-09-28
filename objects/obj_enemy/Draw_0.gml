/// @description Insert description here

if(isVisible){
	lastX = x
	lastY = y
	last_sprite = sprite_index
	alpha = 1
	lastAngle = point_direction(xprevious,yprevious,x,y)
	
	draw_sprite_ext(sprite_index,-1, x, y,1,1, lastAngle, -1, 1)
	draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height)
	draw_sprite(spr_healthbar_outline, 0, healthbar_x, healthbar_y)
}else{
	draw_sprite_ext(last_sprite,-1, lastX, lastY,1,1, lastAngle, -1, alpha)
	alpha -= .005
}


//PATH (debug)
//draw_path(path,x,y,1)