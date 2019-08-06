/// @description Create movement variables

radius = 28
scale = 1.6

image_angle = obj_player.current_interaction
image_xscale = scale
image_yscale = scale

x = x + radius * dcos(image_angle)
y = y + radius * dsin(image_angle + 180) // beacause y is inverted

movement_direction = 180 + image_angle
movement_speed = 150 // per seconds
movement_total = 0
movement_target = 12

camera_shake(6)

with (instance_create_layer(x, y, "Projectiles", obj_rocket)) {
	movement_direction = obj_player.current_interaction	
}