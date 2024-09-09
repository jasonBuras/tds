/// @description Insert description here
// You can write your code in this editor
//draw light
draw_primitive_begin(pr_trianglestrip)
	for(var i=0; i<ds_grid_height(grid); i++){
		var p = grid[# 0,i]
		var q = grid[# 0, (i < ds_grid_height(grid) - 1) ? (i+1) : 0]
		
		draw_vertex(x,y)
		draw_vertex(p.x, p.y)
		draw_vertex(q.x,q.y)
	}
draw_primitive_end()

draw_sprite(spr_light,0,x,y)

gpu_set_blendmode_ext(bm_dest_color,bm_zero)
	draw_sprite_tiled(spr_floor, 0, 0, 0)
gpu_set_blendmode(bm_normal)

draw_self()