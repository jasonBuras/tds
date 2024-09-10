/// @description Insert description here
// You can write your code in this editor

light[| eLight.Intensity] = flash_control
light[| eLight.Direction] = obj_player.angle
flash_control -= 1
if(flash_control <= 0){
	instance_destroy()	
}