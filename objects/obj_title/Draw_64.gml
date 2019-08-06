/// @description Insert description here
// You can write your code in this editor

draw_set_valign(fa_middle)
draw_set_halign(fa_center)

draw_set_font(fnt_pixel_big_bold)

var h = string_height("BOB")
draw_text(GUI_WIDTH / 2, 48,     "BOB DOES")
draw_text(GUI_WIDTH / 2, 48 + h, "NOT CARE")

draw_set_valign(fa_top)
draw_set_halign(fa_left)