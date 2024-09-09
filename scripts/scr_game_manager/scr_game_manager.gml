// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_dead_body(_x,_y,_angle){//dead zombie, consider taking in an ID to make this func more flexible
	
	var b = instance_create_depth(_x, _y, 5, obj_enemy_dead);
		b.speed = 0;
		b.direction = random_range(0,359);
		b.image_angle = b.direction;
}

function bleed(_x,_y){//blood, consider taking in ID to have different blood types for different characters
	var	b = instance_create_depth(_x,_y,1,obj_blood)	
		b.speed = random_range(2,5)
		b.direction = random_range(0,365)
		b.friction = random_range(0.3,0.8)
}
