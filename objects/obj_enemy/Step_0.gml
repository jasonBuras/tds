/// @description Insert description here

//sprite rotation
angle = point_direction(xprevious,yprevious,x,y)

healthbar_width = 50
healthbar_height = 8
healthbar_x = (x) - healthbar_width/2
healthbar_y = (y) - 50

//collisions
/*
if (place_meeting(x + x_speed, y, par_obstacle) || place_meeting(x + x_speed, y, obj_enemy)){
	x_speed = 0;
}


if (place_meeting(x, y+y_speed, par_obstacle) || place_meeting(x, y+y_speed, obj_enemy)){
	y_speed = 0;
}*/

if (collision_line(x,y,obj_player.x,obj_player.y,par_wall,1,0)){
	//Thank you Blaze Creates https://www.youtube.com/watch?v=yAfnoyazVyg&t=28s
	isVisible = false	
}else{
	isVisible = true	
}

//actual movement (keep this below collisions)
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
	moveSpd = 1.25
	target_x = obj_player.x 
	target_y = obj_player.y 
	sprite_index = spr_enemy
	
	if(distance_to_object(obj_player) <= attack_distance && attack_cooldown <= 0 && instance_exists(obj_player)){//To ensure player isn't dead
		obj_player.f_hit(id, damage)
		attack_cooldown = attack_cooldown_max
	}
	
}else if(sleeping_zombie){
	target_x = x	
	target_y = y
	sprite_index = spr_enemy_idle
}else{
	 sprite_index = spr_enemy
	 while (!valid_target) {
	    target_x = irandom(room_width-64);
	    target_y = irandom(room_height-64);

	    if (!collision_point(target_x, target_y, par_obstacle, false, true)) {
	        valid_target = true;
		}
		
	}
	if(distance_to_point(target_x,target_y) <= 10){
		valid_target = false		
	}
	 
}


if(gunshot_heard > 0){
	gunfire_sound_cooldown--;	
}

if(attack_cooldown > 0){
	attack_cooldown--;
}

if(hp <= 0){
		global.player_score += hp_max
		global.player_money += hp_max
		spawn_dead_body(x,y,angle)
		global.kill_count++
		instance_destroy();//destroys enemy
		
}