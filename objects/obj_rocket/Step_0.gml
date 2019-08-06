/// @description Move rocket

x += lengthdir_x(movement_speed, movement_direction) * delta_time / 1000000
y += lengthdir_y(movement_speed, movement_direction) * delta_time / 1000000

if (x < 0 || x > room_width || y < 0 || y > room_width || tile_collide_at_points(collision_tile_map_id, [x, y])) {
	instance_create_layer(x, y, "FX", obj_big_explosion)

	var xx = x
	var yy = y
	with (obj_enemy) {
		if (distance_to_point(xx, yy) < 64) {	
			instance_create_layer(x, y, "FX", obj_explosion)
			hp = 0
		}
	}
	
	audio_play_sound(snd_explosion, 1, false)
	instance_destroy()
}

var rocket = id
with (obj_enemy) {
	if (place_meeting(x, y, obj_rocket)) {
		instance_create_layer(x, y, "FX", obj_big_explosion)
		
		var igniter = id	
		with (obj_enemy) {
			if (distance_to_object(igniter) < 64) {	
				instance_create_layer(x, y, "FX", obj_explosion)
				hp = 0
			}
		}
		
		hp = 0
		audio_play_sound(snd_explosion, 1, false)
		instance_destroy(rocket)
	}
}