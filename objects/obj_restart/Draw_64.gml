/// @description Draw if player is dead

if (!instance_exists(obj_player)) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_alpha(obj_camera.alpha + 0.20)
	
	draw_set_font(fnt_pixel_big_bold)
	if (gamepad_is_connected(0)) {
		draw_text(GUI_WIDTH / 2, GUI_HEIGHT / 2, "Press \"Start\"\nto restart")	
	} else {
		draw_text(GUI_WIDTH / 2, GUI_HEIGHT / 2, "Press R\nto restart")	
	}
	
	draw_set_alpha(1)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
}
