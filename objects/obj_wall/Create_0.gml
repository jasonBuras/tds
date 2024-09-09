/// @description Insert description here
event_inherited()
polygon = polygon_from_instance(id)

instance_create_layer(x,y,"Walls",obj_light_blocker)

f_hit = function(_id, _damage){
	instance_destroy(_id)	
}
