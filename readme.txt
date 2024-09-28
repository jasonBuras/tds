Zombie Apocalypse 3 [BETA]

Honestly, the game is a little wonky in its current state, but I've been able to play through each level.
I think I'll roll with this player sprite since it came with all the needed animations. I have a buddy currently drawing up some zombie sprites for me.

Controls:
WASD- Up, Left, Down, Right
LMB- Shoot
RMB- Melee
R- Reload
Right Arrow Key- Skip song
Up/Down Arrow Keys- Pause/Play song (currently broken)

Known Issues:
-Performance with lighting enabled is terrible on less powerful machines
	I do most of the coding for this game on my desktop which is pretty powerful. When I went to playtest on my laptop, the game was unplayable
	I tried on a regular desktop PC in my office and the performance was better, but still laggy. I brainstormed a toggle to turn the lights on/off,
	so turn the lighting off if you have stuttering issues.
-Animations are wonky	
	I wanted to tie the reload speed to the animation time, but this has proven to cause some weird results where reload speed varies more than I'd like
-Collisions can be a bit weird sometimes
	I've been messing with the player's collision mask to get around getting stuck on walls for seemingly no reason.
-Zombies will walk into each other and be on top of each other
	This makes it seem like the player isn't doing any damage if he's hitting the zombie that's at a lower depth, because the zombie at a higher depth
	still has full health.
-Audio play/pause doesn't work. Only skip track (right arrow key) works as of now. The final version will have the left arrow be "Previous Track"

Balancing:
-I can't seem to find a happy medium, but will continue trying.
	I currently have the zombies increasing their health/defense each round, and the player obviously buys upgrades. I need to find a good balance
	between earning enough money to not be shooting BB guns at the zombies, but not being overpowered doing one hit kills by level 3. But at the 
	same time, the current state of the game forces you to spend most of your money in the first two rounds into Bullet Damage.  
-Zombie pathfinding
	I just implemented this the other day. I had to cut a lot of zombies out of the game now that they're smarter. So I'm still playing with balancing here
	Zombies will be randomly assigned as a "sleeper" zombie where they don't move until the player is close by, or fires their weapon. I may take this 
	concept and make a new zombie type. I would like to incorporate a `ranged` zombie at some point.

To-do:
-Fix the game
-Add pause button
-Fix animations (they don't cooperate with me)
-Look into possible performance fixes within the 2D lighting scripts
-Add survival game mode where you survive waves of zombies (thought of this while doing one final playtest before submitting this)
-Add more information to the shop screen, like current levels for each upgrade. Maybe incorporate a cap to each one (Fire rate currently has one due to brrrt)
	but it's not communicated to the player that there is a limit. Will be in the final build
-[SHIFT] to sprint, but the player is already considerably faster than the zombies, this may add more balancing issues.
-Move the "Now Playing" to a better spot.
-Redo the menus to look nicer
-Look into a better way to do the walls (janky solution currently). Currently have the old walls stretched out under the tileset for collisions (player and light)
-Add more music
-Finish the readme



