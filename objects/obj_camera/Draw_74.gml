/// @description Draw big rectangle

if (alpha != 0) {
	draw_set_alpha(alpha)
	draw_set_color(c_black)
	draw_rectangle(0, 0, GUI_WIDTH, GUI_HEIGHT, false)
	draw_set_alpha(1)
	draw_set_color(c_white)
}
