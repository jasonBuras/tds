/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_info)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_text(x,y,"W - UP\nA - LEFT\nS - DOWN\nD - RIGHT\n" +
				"R - Reload\n" +
				"Left Mouse Button- Shoot\n" +
				"Right Mouse Button- Melee\n" +
				"Arrow Keys (for music):\n" + 
				"Up - Pause\nDown - Play\nRight - Skip Track")
				
				/*
				In this top-down 2D zombie shooter, your goal is to survive four increasingly 
				challenging levels filled with zombies, before facing off against a powerful boss. 
				In each level, you must collect a key to unlock the door and progress to the next stage. 
				Every shot on a zombie earns you points, and killing them rewards you with points equal 
				to their total health. You can use these points to purchase upgrades and enhance your abilities. 
				Be careful though... zombies get stronger with each level. 
				Visibility is limited, as you can only see zombies within your line of sight, and firing your 
				gun will attract nearby enemies. In each boss level, the key is dropped by the boss, and defeating 
				it is your only path forward.
				*/