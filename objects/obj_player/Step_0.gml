/// @description Controls the player's movement, rotation, and weapon
var hor_movement = 0; //horizontal movement
var vert_movement = 0; //vertical movement

hor_movement = keyboard_check(right_key)-keyboard_check(left_key)
vert_movement = keyboard_check(down_key)-keyboard_check(up_key)

x_moveamout = hor_movement * mspeed;
y_moveamout = vert_movement * mspeed;

healthbar_width = 50
healthbar_height = 8
healthbar_x = (x) - healthbar_width/2
healthbar_y = (y) - global.max_health


//MOVEMENT
var hasMoved = false
//X Movement
if (!place_meeting(x + x_moveamout, y, par_wall)){
	x += x_moveamout
}
//X Collision
else{
	while(!place_meeting(x + sign(x_moveamout), y, par_wall)){
			x += sign(x_moveamout)
	}
}

//Y Movement
if(!place_meeting(x, y + y_moveamout, par_wall)){
	y += y_moveamout
	
}
//Y Collision
else{
	while(!place_meeting(x, y + sign(y_moveamout), par_wall)){
			y += sign(y_moveamout)
	}
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


if mouse_check_button(mb_left){
	
	if (fire_cooldown <= 0 && !isReloading){
		
		var gun_barrel_position_x = sprite_width/2
		var gun_barrel_position_y = ((sprite_height)/2) - 20
		
		var rotated_gun_x = gun_barrel_position_x * cos(degtorad(-angle)) - gun_barrel_position_y * sin(degtorad(-angle))
		var rotated_gun_y = gun_barrel_position_x * sin(degtorad(-angle)) + gun_barrel_position_y * cos(degtorad(-angle))
		
		var _bullet_x = x + rotated_gun_x
		var _bullet_y = y + rotated_gun_y
		
		var b = instance_create_depth(_bullet_x, _bullet_y, depth, obj_bullet_basic) //b is bullet
		b.speed = bullet_speed;
		b.direction = point_direction(_bullet_x, _bullet_y, mouse_x, mouse_y);
		b.image_angle = b.direction;
		audio_play_sound(snd_gunshot,1000,false)
		gunfire_x = _bullet_x
		gunfire_y = _bullet_y
		global.shots_fired++
		fire_cooldown = fire_cooldown_max;
		mag_current--
		//instance_create_layer(gunfire_x,gunfire_y,"Instances", obj_light_muzzleflash)
	}
}

if(mag_current == 0 && !isReloading){
	isReloading = true	
	audio_play_sound(snd_reload,1000,false)
}


if(isReloading){
	reload_countdown--
}

if(reload_countdown==0){
	mag_current = mag_size
	isReloading = false
	reload_countdown = reload_speed
}

if(fire_cooldown > 0){
	fire_cooldown--;
}

