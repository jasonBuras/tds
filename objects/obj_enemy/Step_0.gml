/// @description Insert description here

//sprite rotation
angle = moveDir;

healthbar_width = 50
healthbar_height = 8
healthbar_x = (x) - healthbar_width/2
healthbar_y = (y) - 50

//get x & y speeds
x_speed = lengthdir_x(moveSpd, moveDir)
y_speed = lengthdir_y(moveSpd, moveDir)

var x_moveamout = x_speed * moveSpd;
var y_moveamout = y_speed * moveSpd;

//collisions
if place_meeting(x + x_speed, y, par_wall){
	x_speed = 0;
	moveDir = irandom_range(0,359)
}

if place_meeting(x, y+y_speed, par_wall){
	y_speed = 0;
	moveDir = irandom_range(0,359)
}

//actual movement (keep this below collisions)
x += x_speed
y += y_speed


var track_distance = 300
var attack_distance = 8

//track player
if(distance_to_point(obj_player.gunfire_x,obj_player.gunfire_y) <= hearing_range){
	gunshot_heard = true	
}

if (distance_to_object(obj_player) <= track_distance || gunshot_heard){
	moveSpd = 2
	moveDir = point_direction(x,y,obj_player.x,obj_player.y)
	if(distance_to_object(obj_player) <= attack_distance && attack_cooldown <= 0 && instance_exists(obj_player)){//To ensure player isn't dead
		obj_player.f_hit(id, damage)
		attack_cooldown = attack_cooldown_max
	}
}

if(gunshot_heard > 0){
	gunfire_sound_cooldown--;	
}

if(attack_cooldown > 0){
	attack_cooldown--;
}