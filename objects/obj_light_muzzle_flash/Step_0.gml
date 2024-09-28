/// @description move light with player
// You can write your code in this editor

light[| eLight.X] = obj_player.x + obj_player.sprite_width/2 - 3
light[| eLight.Y] = obj_player.y
light[| eLight.Direction] = obj_player.angle