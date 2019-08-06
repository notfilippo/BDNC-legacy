/// @description Draw

if (!instance_exists(obj_player)) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	draw_set_font(fnt_pixel_big_bold)
	draw_text(GUI_WIDTH / 2, GUI_HEIGHT / 2, text)	
	
	if (string_length(credits) > 0) {
		draw_set_font(fnt_pixel_small)	
		draw_text(GUI_WIDTH / 2, GUI_HEIGHT - string_height(credits), credits)	
	}
	
	draw_set_alpha(1)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
}
