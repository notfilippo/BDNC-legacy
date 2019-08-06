/// @description Move cannon with mouse

if (!instance_exists(obj_player)) {
	instance_destroy()
	return
}

image_angle = obj_player.last_interaction

x = obj_player.x + obj_player.sprite_width / 2 + radius * dcos(image_angle)
y = obj_player.y + obj_player.sprite_height / 2 + radius * dsin(image_angle + 180) // beacause y is inverted

if (image_index >= 4) {
	if (image_index >= image_number - 1) {
		image_index = 4	
	}
	
	if (!laser_shooting) {
		audio_play_sound(snd_laser_shoot, 1, false)
		camera_shake(duration)
	}
	laser_shooting = true
} else {
	laser_shooting = false	
}

if (shut_down && floor(image_index) == 0) {
	obj_player.alarm[0] = 0.2 * room_speed // cooldown
	instance_destroy()	
}

var x1 = x
var x2 = x + lengthdir_x(laser_max_lenght, image_angle)
var y1 = y
var y2 = y + lengthdir_y(laser_max_lenght, image_angle)

if (laser_shooting) {
	with (obj_enemy) {
		if (collision_line_width(x1, y1, x2, y2, 8, id)) {
			hp -= 30
		}
	}
	with (obj_laser_projectile) {
		if (collision_line_width(x1, y1, x2, y2, 8, id)) {
			instance_destroy()
		}
	}
}