/// @description Insert description here
/*
Probably will be parent in the future
Can have subclass enemy parent classes to have more dynamic enemies
*/
isVisible = false
alpha = 1
lastX = 0
lastY = 0
lastAngle = 0
defense = global.zombie_defense

hp = global.zombie_health
hp_max = global.zombie_health
moveDir = irandom_range(0,359)
angle = 0
moveSpd = global.zombie_speed
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

is_tracking = false
tracking_cooldown_max = 300
tracking_cooldown = 300



x_speed = lengthdir_x(speed, direction)
y_speed = lengthdir_y(speed, direction)

f_hit = function(_id, _damage){
	var base_damage = _damage * 2
	var _calculated_damage = calculate_damage(base_damage, _damage, defense)
	hp -= _calculated_damage
	global.player_money += _calculated_damage
	audio_play_sound(snd_hitmarker,1000,false)
	gunshot_heard = true
	repeat(random_range(3,blood_amount)){
			bleed(x,y);
	}
	global.shots_hit++
	if(hp <= 0){
		global.player_score += hp_max
		global.player_money += hp_max
		spawn_dead_body(x,y,angle)
		global.kill_count++
		instance_destroy();//destroys enemy
		
	}
	instance_destroy(_id);//destroys bullet
}
