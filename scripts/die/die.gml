/// @fucntion die(?reason)
/// @description Destroy the player and summon a restart prompt
/// @param reason

with (obj_player) {
	instance_create_layer(x, y, "FX", obj_explosion)
	var restart = instance_create_layer(x, y, "GUI", obj_restart) 
	instance_destroy()
	instance_destroy(obj_laser_cannon)
	instance_destroy(obj_sword)
	
	if (argument_count > 0) {
		with (restart) {
			reason = argument[0]
		}
	}
	
	audio_play_sound(snd_death, 1, false)
	
	camera_fade_to(0.8)
}