/// @description Create movement parameters

movement_direction = obj_rocket_launcher.image_angle
movement_speed = 200

image_angle = obj_rocket_launcher.image_angle

var layer_id = layer_get_id("Collision")
collision_tile_map_id = layer_tilemap_get_id(layer_id)

alarm[0] = 10