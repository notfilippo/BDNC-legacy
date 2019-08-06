/// @description Draw health top left

var xx = GUI_WIDTH - 18
var yy = 18

var ss = sin(t * pi * (frequency / room_speed)) * amplitude
var cc = cos(t * pi * (frequency / room_speed)) * amplitude

xx += cc
yy += ss * cc

if (instance_exists(obj_player)) {
	draw_sprite(sprite_index, image_index, xx, yy)
} else if (delete_animation_index == 4.1) {
	delete_animation_index = 0	
} else if (delete_animation_index < 4) {
	draw_sprite(spr_delete, delete_animation_index, xx, yy)
	delete_animation_index += 0.2
}

t += 1