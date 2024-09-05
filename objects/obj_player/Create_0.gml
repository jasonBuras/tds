/// @description Move these to Create to avoid Step setting them each game frame.
/*health = 50
max_health = 50
score = 0
*/
up_key = ord("W");
left_key = ord("A"); 
down_key = ord("S")
right_key = ord("D")
noBrrt = false //idk a better solution

gunfire_x = 0
gunfire_y = 0

mspeed = 3;//movement speed
bullet_speed = 10;

fire_cooldown = 10; //avoids firing when pressing play
fire_cooldown_max = 20;

angle = 0

f_hit = function(_id, _damage){
	health -= _damage;
	repeat(15){
			bleed(x,y)
		}
	if(health <= 0){
		audio_play_sound(snd_player_death,1000,false)
		instance_destroy()//destroy player
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

function heal(){
	if (player_health/max_health <= 1){
			
	}
}