/// @description Check enemy collision

if (!instance_exists(obj_player)) {
	instance_destroy()
	return
}

if (image_index == image_number - 1) image_speed = 0

x = obj_player.x + obj_player.sprite_width / 2 + radius * dcos(image_angle)
y = obj_player.y + obj_player.sprite_height / 2 + radius * dsin(image_angle + 180) // beacause y is inverted

if (movement_total >= movement_target && alarm[0] < 1) {
	obj_player.alarm[0] = 1 * room_speed // cooldown
	audio_play_sound(snd_rocket_launcher, 1, false)
	alarm[0] = 10
} else if (movement_total < movement_target) {
	movement_total += movement_speed * delta_time / 1000000
}

x += lengthdir_x(movement_total, movement_direction)
y += lengthdir_y(movement_total, movement_direction)


