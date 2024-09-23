/// @description Insert description here
// You can write your code in this editor
path_delete(path)
path = path_add()

mp_grid_path(obj_SetupPathway.grid, path, x, y, target_x, target_y, true)

path_start(path, moveSpd, path_action_stop, true) 

alarm_set(0,120)