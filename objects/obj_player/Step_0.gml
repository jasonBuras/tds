/// @description Controls the player's movement, rotation, and weapon
var hor_movement = 0; //horizontal movement
var vert_movement = 0; //vertical movement

healthbar_width = 50
healthbar_height = 8
healthbar_x = (x) - healthbar_width/2
healthbar_y = (y) - global.max_health

switch(state){
	case states.idle: case states.walking: 
		hor_movement = keyboard_check(right_key)-keyboard_check(left_key)
		vert_movement = keyboard_check(down_key)-keyboard_check(up_key)

		x_moveamout = hor_movement * mspeed;
		y_moveamout = vert_movement * mspeed;

		

		#region MOVEMENT
		var hasMoved = false

		//X Movement
		if (!place_meeting(x + x_moveamout, y, par_obstacle)){
			x += x_moveamout
			hasMoved = true
		}
		//X Collision
		else{
			while(!place_meeting(x + sign(x_moveamout), y, par_obstacle)){
					x += sign(x_moveamout)
			}
		}

		//Y Movement
		if(!place_meeting(x, y + y_moveamout, par_obstacle)){
			y += y_moveamout
			hasMoved = true
		}
		//Y Collision
		else{
			while(!place_meeting(x, y + sign(y_moveamout), par_obstacle)){
					y += sign(y_moveamout)
			}
		}
		
		if(hasMoved){
			state = states.walking
		}else{
			state = states.idle	
		}

		
		#endregion
		break;
		
	case states.reloading: 
		hor_movement = keyboard_check(right_key)-keyboard_check(left_key)
		vert_movement = keyboard_check(down_key)-keyboard_check(up_key)

		x_moveamout = hor_movement * mspeed;
		y_moveamout = vert_movement * mspeed;

		#region MOVEMENT
		var hasMoved = false

		//X Movement
		if (!place_meeting(x + x_moveamout, y, par_obstacle)){
			x += x_moveamout
			hasMoved = true
		}
		//X Collision
		else{
			while(!place_meeting(x + sign(x_moveamout), y, par_obstacle)){
					x += sign(x_moveamout)
			}
		}

		//Y Movement
		if(!place_meeting(x, y + y_moveamout, par_obstacle)){
			y += y_moveamout
			hasMoved = true
		}
		//Y Collision
		else{
			while(!place_meeting(x, y + sign(y_moveamout), par_obstacle)){
					y += sign(y_moveamout)
			}
		}
		break;
		
}

//Rotation
var angle_to_mouse = point_direction(x,y,mouse_x,mouse_y)
angle = angle_to_mouse
//Bullet Firing
/*
if(global.player_score >= 100 && !noBrrt && global.fire_cooldown_max < global.fire_cooldown_min){
	fire_cooldown_max -= 10	
	noBrrt = true
}*/

#region FIRING

if mouse_check_button_pressed(mb_left){
	if(mag_current <= 0){
		global.message = "PRESS [R] TO RELOAD"
		global.message_timer = 120
		global.show_message = true	
	}
	
	if (fire_cooldown <= 0 && !isReloading && mag_current > 0){
		is_shooting = true
		alarm[0] = 10
		var gun_barrel_position_x = sprite_width/2
		var gun_barrel_position_y = ((sprite_height)/2) - 20
		
		var rotated_gun_x = gun_barrel_position_x * cos(degtorad(-angle)) - gun_barrel_position_y * sin(degtorad(-angle))
		var rotated_gun_y = gun_barrel_position_x * sin(degtorad(-angle)) + gun_barrel_position_y * cos(degtorad(-angle))
		
		var _bullet_x = x + rotated_gun_x
		var _bullet_y = y + rotated_gun_y
		
		var b = instance_create_depth(_bullet_x, _bullet_y, depth, bullet_type) //b is bullet
		b.speed = bullet_speed;
		b.direction = point_direction(_bullet_x, _bullet_y, mouse_x, mouse_y);
		b.image_angle = b.direction;
		audio_play_sound(snd_gunshot,1000,false)
		image_index = 0
		gunfire_x = _bullet_x
		gunfire_y = _bullet_y
		global.shots_fired++
		fire_cooldown = fire_cooldown_max;
		mag_current--
		
		instance_create_depth(gunfire_x,gunfire_y,5,obj_muzzle_flash)
		if(global.lighting_system_on){
			instance_create_layer(gunfire_x,gunfire_y,"Lights", obj_light_muzzleflash)
		}
	}else{
		is_shooting = false	
	}
}

if(mouse_check_button(mb_right)){
	//state = states.melee	
}

/*if(mag_current == 0 && !isReloading){
	//Consider removing since the player can't move and reload at the same time anymore
	isReloading = true	
	state=states.reloading
	audio_play_sound(snd_reload,1000,false)
}*/


/*if(isReloading){
	reload_countdown--
	if(reload_countdown == 0){
		mag_current = mag_size
		isReloading = false
		reload_countdown = reload_speed
		state = states.idle
	}
}*/

if(fire_cooldown > 0){
	fire_cooldown--;
}
#endregion

//if(state == states.reloading){
//	sprite_index = spr_player_reloading

//}else if(state == states.firing){
//	sprite_index = spr_player_shooting
//	if(image_index >= image_number - 1){
//		sprite_index = spr_player
//		state = states.idle
//	}
//}else if(state == states.walking){
//	sprite_index = spr_player_walkin
//}else{
//	sprite_index = spr_player
//}

//sprite_index = sprites[state]
if(isReloading){
	sprite_index = spr_player_reloading	
	image_speed = global.reload_speed
}else if(is_shooting){
	sprite_index = spr_player_shooting	
	image_speed = 1
}else{
	sprite_index = (state == states.walking) ? spr_player_walkin : spr_player
	image_speed = 1
}

//if(image_index >= image_number - 1){
//	image_speed = 0
	
//	if(isReloading){
//		mag_current = mag_size
//		isReloading = false
//		reload_countdown = reload_speed
//		state = states.idle
//	}else if(is_shooting){
//		is_shooting = false
//		state = states.idle
//	}
//}