/// @description Check enemy collision

if (!instance_exists(obj_player)) {
	instance_destroy()
	return
}

if (image_index == image_number - 1) image_speed = 0

x = obj_player.x + obj_player.sprite_width / 2 + radius * dcos(image_angle)
y = obj_player.y + obj_player.sprite_height / 2 + radius * dsin(image_angle + 180) // beacause y is inverted
movement_total += movement_speed * delta_time / 1000000

x += lengthdir_x(movement_total, movement_direction)
y += lengthdir_y(movement_total, movement_direction)

if (movement_total >= movement_target) {
	obj_player.alarm[0] = 1 * room_speed // cooldown
	audio_play_sound(snd_swoosh, 1, false)
	instance_destroy()	
}

var sword = id
with (obj_enemy) {
	if (place_meeting(x, y, sword)) {
		hp = 0	
		audio_play_sound(snd_swoosh_collision, 2, false)
	}
}

with (obj_laser_projectile) {
	if (place_meeting(x, y, sword)) {
		instance_destroy()
	}	
}

