/// @description Move these to Create to avoid Step setting them each game frame.
enum states{
	idle,
	walking,
	firing,
	reloading,
	melee
}

state = states.idle

death_penalty = 10
health = global.max_health
//score = 0
//player_score = 0
has_key = false

mag_size = global.magazine_size
mag_current = global.magazine_size
reloading = false
isReloading = false
reload_speed = global.reload_speed
reload_countdown = reload_speed
bullet_type = global.bullet_type
can_shoot = false

up_key = ord("W")
left_key = ord("A")
down_key = ord("S")
right_key = ord("D")
noBrrt = false //idk a better solution

gunfire_x = -500
gunfire_y = -500
isWalking = false

mspeed = global.player_speed;//movement speed
bullet_speed = global.bullet_speed;

fire_cooldown = global.fire_cooldown; //avoids firing when pressing play
fire_cooldown_max = global.fire_cooldown_max;
fire_cooldown_min= global.fire_cooldown_min

is_shooting = false




angle = 0

//vision
vision_length = 200
vision_angle = 45

sprites[states.idle] = spr_player
sprites[states.walking] = spr_player_walkin
sprites[states.reloading] = spr_player_reloading
sprites[states.firing] = spr_player_shooting



//detect hit
f_hit = function(_id, _damage){
	health -= _damage;
	repeat(15){
			bleed(x,y)
		}
		if(mspeed > 1){
		mspeed -= .33 //.5 too much with current health; .25 too little to make a difference
		}
	if(health <= 0){
		audio_play_sound(snd_player_death,1000,false)
		instance_destroy()//destroy player
		if(global.lives > 0){
			global.lives--
			room_restart()
		}else{
			room_goto(rm_game_over)	
		}
		if(global.player_score <= death_penalty){
			global.player_score = 0	//little harsh, may take out later
		}else{
			global.player_score -= death_penalty	
		}
	}
	else{
	sound_index = choose(
		audio_play_sound(snd_ouch_1,1000,false),
		audio_play_sound(snd_ouch_2,1000,false),
		audio_play_sound(snd_ouch_3,1000,false),
		audio_play_sound(snd_ouch_4,1000,false)
	);	
	}
}