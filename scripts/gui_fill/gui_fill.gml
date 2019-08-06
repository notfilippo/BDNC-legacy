/// @function gui_fill()
/// @description Resize the GUI layer.

if (ASPECT > 1) {
	GUI_WIDTH = BASE_HEIGHT * ASPECT
	GUI_HEIGHT = BASE_HEIGHT
    GUI_WIDTH *= GUI_SCALE
	GUI_HEIGHT *= GUI_SCALE
	display_set_gui_size(GUI_WIDTH, GUI_HEIGHT)
	// display_set_gui_maximise((WINDOW_WIDTH / GUI_WIDTH), (WINDOW_HEIGHT / GUI_HEIGHT), 0, 0)
} else {
	GUI_WIDTH = BASE_WIDTH
	GUI_HEIGHT = BASE_WIDTH / ASPECT
	GUI_WIDTH *= GUI_SCALE
    GUI_HEIGHT *= GUI_SCALE
	display_set_gui_size(GUI_WIDTH, GUI_HEIGHT)
	// display_set_gui_maximise((WINDOW_WIDTH / GUI_WIDTH), (WINDOW_HEIGHT / GUI_HEIGHT), 0, 0)
}


events_fire(event.resize_gui)