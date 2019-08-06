/// @description Reload from gamepad

if (gamepad_is_connected(0) && gamepad_button_check_pressed(0, gp_start)) {
	if (room == room_tutorial || room == room_0 || room == room_1 || room == room_2){
	    room_restart()
	    obj_camera.follow = obj_player
	}
}
