/// @description Start for gamepad

if (gamepad_is_connected(0) && gamepad_button_check_pressed(0, gp_start)) {
	alarm[0] = 1	
}