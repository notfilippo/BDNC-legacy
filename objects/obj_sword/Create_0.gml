/// @description Create movement variables

radius = 8
scale = 1.6

image_angle = obj_player.current_interaction
image_xscale = scale
image_yscale = scale

x = x + radius * dcos(image_angle)
y = y + radius * dsin(image_angle + 180) // beacause y is inverted

movement_direction = image_angle
movement_speed = 150 // per seconds
movement_total = 0
movement_target = 48

camera_shake()