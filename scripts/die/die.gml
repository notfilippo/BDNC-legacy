/// @fucntion die()
/// @description Destroy the player

with (obj_player) {
	instance_create_layer(x, y, "FX", obj_explosion)
	instance_destroy()
	instance_destroy(obj_laser_cannon)
	instance_destroy(obj_sword)
	
	camera_fade_to(0.8)
}