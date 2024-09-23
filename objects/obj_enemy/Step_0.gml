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

if (place_meeting(x + x_speed, y, par_obstacle) || place_meeting(x + x_speed, y, obj_enemy)){
	x_speed = 0;
}


if (place_meeting(x, y+y_speed, par_obstacle) || place_meeting(x, y+y_speed, obj_enemy)){
	y_speed = 0;
}

if (collision_line(x,y,obj_player.x,obj_player.y,par_wall,1,0)){
	//Thank you Blaze Creates https://www.youtube.com/watch?v=yAfnoyazVyg&t=28s
	isVisible = false	
}else{
	isVisible = true	
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

if (distance_to_object(obj_player) <= track_distance && !collision_line(x,y,obj_player.x,obj_player.y,par_wall,1,0)){
	is_tracking = true	
	tracking_cooldown = tracking_cooldown_max
}

if (is_tracking || gunshot_heard){
	moveSpd = 1
	target_x = obj_player.x 
	target_y = obj_player.y 
	alarm[0] = 1
	
	if(distance_to_object(obj_player) <= attack_distance && attack_cooldown <= 0 && instance_exists(obj_player)){//To ensure player isn't dead
		obj_player.f_hit(id, damage)
		attack_cooldown = attack_cooldown_max
	}
	
}else if(x <= target_x - 10 && y <= target_y - 10){
	moveSpd = global.zombie_speed
	while (!valid_target) {
	    target_x = irandom(room_width);
	    target_y = irandom(room_height);

	    if (!collision_point(target_x, target_y, par_obstacle, false, true)) {
	        valid_target = true;
    }
}	
		alarm[0] = 1
	
}


moveDir = point_direction(x,y,target_x,target_y)

if(is_tracking){
	tracking_cooldown--
	if(tracking_cooldown <= 0){
		is_tracking = false
		gunshot_heard = false
		tracking_cooldown = tracking_cooldown_max
	}
}

if(gunshot_heard > 0){
	gunfire_sound_cooldown--;	
}

if(attack_cooldown > 0){
	attack_cooldown--;
}