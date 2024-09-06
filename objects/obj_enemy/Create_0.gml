/// @description Insert description here
/*
Probably will be parent in the future
Can have subclass enemy parent classes to have more dynamic enemies
*/
hp = 10
hp_max = 10
moveDir = irandom_range(0,359)
angle = 0
moveSpd = 1
xSpd = 0
ySpd = 0
damage = 15
attack_cooldown = 0
attack_cooldown_max = 100
blood_amount = 15
hearing_range = 500

gunshot_heard = false
gunfire_sound_cooldown = 1000
gunfire_sound_cooldown_max = 1000



x_speed = lengthdir_x(speed, direction)
y_speed = lengthdir_y(speed, direction)

f_hit = function(_id, _damage){
	hp -= _damage;
	global.player_score++
	audio_play_sound(snd_hitmarker,1000,false)
	gunshot_heard = true
	repeat(random_range(3,blood_amount)){
			bleed(x,y)	
	}
	if(hp <= 0){
		global.player_score += 10
		spawn_dead_body(x,y,angle)
		instance_destroy();//destroys enemy
		
	}
	instance_destroy(_id);//destroys bullet
}
