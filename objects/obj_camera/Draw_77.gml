/// @description Record gif

if (keyboard_check_pressed(ord("E"))) {
	gif_recording = !gif_recording
	
	if (gif_recording) {
		gif = gif_open(WINDOW_WIDTH, WINDOW_HEIGHT)	
	} else {
		gif_save(gif, "capture.gif")
	}
}

if (gif_recording) {
	gif_add_surface(gif, application_surface, 2)	
}