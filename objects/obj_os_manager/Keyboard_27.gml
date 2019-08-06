/// @description Go to menu
if (room != room_menu) {
	room_goto(room_menu)
} else if (window_get_fullscreen()) {
	window_set_fullscreen(false)
} else {
	game_end()	
}
