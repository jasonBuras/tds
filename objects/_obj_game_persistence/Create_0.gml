/// @description Insert description here
// You can write your code in this editor

//GAME PROPERTIES
global.blood_on = true
global.lighting_system_on = true
global.level_sequence = [
	rm_menu,
	rm_level_1, 
	rm_shop, 
	rm_level_2, 
	rm_shop,
	rm_level_3, 
	rm_shop,
	rm_level_4,
	rm_shop,
	rm_level_5_boss,
	rm_shop,
	rm_level_6,
	rm_shop,
	rm_level_7,
	rm_game_over]
global.current_room_index = 0
global.current_level = 1

//PLAYER PROPERTIES
global.lives = 3
global.player_money = 0
global.player_score = 0
global.player_speed = 3
global.max_health = 50
global.melee_strength = 10

//WEAPON
global.magazine_size = 10
global.bullet_speed = 10
global.bullet_damage = 3
global.reload_speed = 1 //controls animation speed. 1 is default. ++ to speed up
global.fire_cooldown = 50
global.fire_cooldown_max = 50
global.fire_cooldown_min = 20
global.bullet_type = obj_bullet_basic

//ZOMBIE
global.zombie_health = 10
global.zombie_defense = 5
global.zombie_speed = .5
global.zombie_attack = 15

global.message = ""
global.message_timer = 0
global.show_message = false

global.shots_fired = 0
global.shots_hit = 0
global.kill_count = 0

room_goto_next() //cheeky but it works, make sure to keep this obj last in the rm_init Instance list
