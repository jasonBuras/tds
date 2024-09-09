/// @description Insert description here
// You can write your code in this editor
global.lives = 3
global.player_score = 0
global.player_speed = 3
global.reload_speed = 120

global.blood_on = true

global.fire_cooldown = 10
global.fire_cooldown_max = 50
global.fire_cooldown_min = 20

global.max_health = 50

global.level_sequence = [

	rm_menu,
	rm_level_1, 
	rm_shop, 
	rm_level_2, 
	rm_shop,
	rm_level_3, 
	rm_game_over_win]
global.current_room_index = 0

global.message = ""
global.message_timer = 0
global.show_message = false

global.bullet_damage = 2
global.shots_fired = 0
global.shots_hit = 0
global.kill_count = 0
global.bullet_speed = 10

global.zombie_health = 10
