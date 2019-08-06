/// @description Draw health top left

var xx = GUI_WIDTH - 36
var yy = 36

var ss = sin(t * pi * (frequency / room_speed)) * amplitude
var cc = cos(t * pi * (frequency / room_speed)) * amplitude

xx += cc
yy += ss * cc

if (instance_exists(obj_player)) {
	draw_sprite_ext(sprite_index, image_index, xx, yy, GUI_SCALE, GUI_SCALE, 0, c_white, 1)
} else if (delete_animation_index == 4.1) {
	delete_animation_index = 0	
} else if (delete_animation_index < 4) {
	draw_sprite_ext(spr_delete, delete_animation_index, xx, yy, GUI_SCALE, GUI_SCALE, 0, c_white, 1)
	delete_animation_index += 0.2
}

t += 1