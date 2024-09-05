//player sprite
draw_sprite_ext(spr_player_idle,-1, x, y,1,1, angle, -1, 1)

//health bar
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(player_health/max_health) * healthbar_width, healthbar_height)
draw_sprite(spr_healthbar_outline, 0, healthbar_x, healthbar_y)