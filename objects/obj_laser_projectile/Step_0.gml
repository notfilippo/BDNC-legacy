/// @description Move the projectile and check if disposable

x += lengthdir_x(movement_speed, movement_direction) * delta_time / 1000000
y += lengthdir_y(movement_speed, movement_direction) * delta_time / 1000000

if (x < 0 || x > room_width || y < 0 || y > room_width || tile_collide_at_points(collision_tile_map_id, [x, y])) {
	instance_destroy()	
}

if (place_meeting(x, y, obj_player)) {
	die()
}