/// @description Shoot

if (distance_to_object(obj_player) < line_of_sight) {
	var spawn_x = x + sprite_width / 2
	var spawn_y = y + sprite_height / 2
	with (instance_create_layer(spawn_x, spawn_y, "Projectiles", obj_laser_projectile)) {
		movement_direction = point_direction(x, y, obj_player.x, obj_player.y)	
	}
	
	alarm[0] = 60
} else {
	attacking = false	
}
