/// @description Go to menu
if (window_get_fullscreen()) {
	window_set_fullscreen(false)
} else if (room != room_menu) {
	room_goto(room_menu)
} else {
	game_end()	
}
