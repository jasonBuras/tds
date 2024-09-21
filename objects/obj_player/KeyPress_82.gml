/// @description Insert description here
// You can write your code in this editor
if(!isReloading && mag_current != mag_size){
	state = states.reloading
	isReloading = true
	can_shoot=false
	audio_play_sound(snd_reload,1000,false)
	mag_current = 0
}