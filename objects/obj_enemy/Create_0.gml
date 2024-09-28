/// @description Insert description here
/*
Probably will be parent in the future
Can have subclass enemy parent classes to have more dynamic enemies
*/
isVisible = false
alpha = 1
lastX = 0
lastY = 0
lastAngle = irandom_range(0,359)
defense = global.zombie_defense

sleeping_zombie = choose(true,false)
show_debug_message(string(self) + " sleeping_zombie: " + string(sleeping_zombie))

hp = global.zombie_health
hp_max = global.zombie_health
moveDir = 0
angle = 0
moveSpd = global.zombie_speed
xSpd = 0
ySpd = 0
damage = global.zombie_attack
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

// Thank you 1up Indie: https://www.youtube.com/watch?v=gqzsBhb7ov4
valid_target = false
path = path_add()

sprite_index = spr_enemy
target_x = x 
target_y = y 

alarm[0] = 1
last_sprite = sprite_index
x_speed = lengthdir_x(speed, direction)
y_speed = lengthdir_y(speed, direction)

f_hit = function(_id, _damage){
	var base_damage = _damage * 2
	var _calculated_damage = calculate_damage(base_damage, _damage, defense)
	hp -= _calculated_damage
	global.player_money += _calculated_damage
	audio_play_sound(snd_hitmarker,1000,false)
	gunshot_heard = true
	repeat(random_range(3,15)){
			bleed(x,y);
	}
	global.shots_hit++
	
	if(obj_player.bullet_type != obj_bullet_ap){
		instance_destroy(_id);//destroys bullet
	}
}
