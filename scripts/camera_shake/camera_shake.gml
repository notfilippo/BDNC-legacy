/// @function camera_shake(duration, force)
/// @description Shake camera
/// @param duration
/// @param force

with (obj_camera) {
	shake = true
	
	if (argument_count > 0) {
		shake_duration = argument[0]	
	}
	
	if (argument_count > 1) {
		shake_force = argument[0]	
	}
}