/// @description Create movement variables

radius = 8
scale = 1.6

image_angle = obj_player.current_interaction
image_xscale = scale
image_yscale = scale

x = x + radius * dcos(image_angle)
y = y + radius * dsin(image_angle + 180) // beacause y is inverted

rotation_target = image_angle + 360
rotation_speed = 180 // per second

camera_shake()