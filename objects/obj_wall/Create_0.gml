/// @description Insert description here
event_inherited()
polygon = polygon_from_instance(id)
var x_scale = image_xscale
var y_scale = image_yscale
instance_create_layer(x,y,"Walls",obj_light_blocker,{image_xscale: x_scale, image_yscale: y_scale})
f_hit = function(_id, _damage){
	instance_destroy(_id)	
}
