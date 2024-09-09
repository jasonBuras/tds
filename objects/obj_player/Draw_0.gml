//player sprite
if(y_moveamout > 0 || x_moveamout > 0 || y_moveamout < 0 || x_moveamout < 0){
	sprite_index = spr_player_walking	
}else{
	sprite_index = spr_player_idle	
}
draw_sprite_ext(sprite_index,-1, x, y,1,1, angle, -1, 1)


//health bar
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(health/global.max_health) * healthbar_width, healthbar_height)
draw_sprite(spr_healthbar_outline, 0, healthbar_x, healthbar_y)

//ammo
draw_text(x,y + sprite_height, string(mag_current) + "/" + string(mag_size))

draw_sprite_ext(spr_crosshair, 0, mouse_x, mouse_y, 1, 1, 0, c_white, 1)


