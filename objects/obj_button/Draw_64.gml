/// @description Draw play button

var x1 = (GUI_WIDTH - button_width) / 2
var y1 = y
var x2 = (GUI_WIDTH + button_width) / 2
var y2 = y + button_height

var hover = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x1, y1, x2, y2)

if (hover && mouse_check_button(mb_left)) {
	draw_nine_slice(sprite_index, 0, x1, y1, x2, y2)
	clicked = true
} else {
	draw_nine_slice(sprite_index, 1, x1, y1, x2, y2)
	draw_nine_slice(sprite_index, 0, x1, y1 - 4, x2, y2 - 4)
}

if (clicked && mouse_check_button_released(mb_left)) {
	alarm[0] = 1	
}

draw_set_halign(fa_center)
draw_set_font(fnt_pixel)

if (hover && mouse_check_button(mb_left)) {
	draw_set_color(make_color_rgb(64, 64, 64))
	draw_text(GUI_WIDTH / 2, y + button_padding, text)
} else if (hover) {
	draw_set_color(make_color_rgb(64, 64, 64))
	draw_text(GUI_WIDTH / 2, y + button_padding - 4, text)
} else {
	draw_set_color(c_black)
	draw_text(GUI_WIDTH / 2, y + button_padding - 4, text)
}

draw_set_color(c_white)
draw_set_halign(fa_left)