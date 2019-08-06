/// @function collision_line_width(x1, y1, x2, y2, width, obj)
/// @description Check collision with a line with width
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg width
/// @arg obj

var _x1  = argument[0]
var _y1  = argument[1]
var _x2  = argument[2]
var _y2  = argument[3]
var _w   = argument[4] 
var _obj = argument[5]

if(!instance_exists(obj_sensor))
	instance_create_depth(0,0,0,obj_sensor)
	
obj_sensor.x = _x1
obj_sensor.y = _y1
obj_sensor.image_angle = point_direction(_x1, _y1, _x2, _y2)
obj_sensor.image_xscale = point_distance(_x1, _y1, _x2, _y2) / sprite_get_width(obj_sensor.sprite_index)
obj_sensor.image_yscale = _w / sprite_get_height(obj_sensor.sprite_index)

return place_meeting(round(_obj.x), round(_obj.y), obj_sensor)
