/// @description Draw title & version

draw_set_valign(fa_middle)
draw_set_halign(fa_center)

draw_set_font(fnt_pixel_big_bold)

draw_text(GUI_WIDTH / 2, 96,                "BOB DOES")
draw_text(GUI_WIDTH / 2, 96 + title_height, "NOT CARE")

draw_set_halign(fa_right)

draw_set_font(fnt_pixel_small)
draw_text(GUI_WIDTH, GUI_HEIGHT - version_height / 2, version)

draw_set_valign(fa_top)
draw_set_halign(fa_left)

