/// @description Button setup

draw_set_font(fnt_pixel_big_bold)

button_width = string_width("BOB DOES")
button_padding = 4

clicked = false

draw_set_font(fnt_pixel)

button_height = string_height("PLAY") + button_padding * 2