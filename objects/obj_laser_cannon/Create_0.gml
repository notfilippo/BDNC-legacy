/// @description Create position and laser variables

shut_down = false
radius = 12
scale = 1.2
duration = room_speed

laser_max_lenght = 16 * 20
laser_shooting = false

image_angle = obj_player.current_interaction

image_xscale = scale
image_yscale = scale

x = x + radius * dcos(image_angle)
y = y + radius * dsin(image_angle + 180) // beacause y is inverted

audio_play_sound(snd_laser_charge, 1, false)

alarm[0] = duration