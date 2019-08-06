/// @description Draw laser cannon and beam

draw_self()

if (image_index >= 4) {
	for (var i = 32; i < laser_max_lenght; i += 16) {
		draw_sprite_ext(spr_laser_beam, image_index - 4, x + lengthdir_x(i, image_angle), y + lengthdir_y(i, image_angle), image_xscale, image_yscale, image_angle, c_white, 1)
	}
}
