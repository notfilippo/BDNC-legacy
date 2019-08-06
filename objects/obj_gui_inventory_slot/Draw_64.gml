/// @description Draw inventory sprite in the bottom center

#macro ITEM_SCALE (1.2 * GUI_SCALE)

var sprite_w = sprite_width * GUI_SCALE
var sprite_h = sprite_height * GUI_SCALE

if (instance_exists(obj_player)) {
	draw_sprite_ext(sprite_index, image_index, (GUI_WIDTH - sprite_w) / 2, GUI_HEIGHT - sprite_h - bottom_padding, GUI_SCALE, GUI_SCALE, 0, c_white, 1)
	
	switch (obj_player.current_weapon) {
		case weapon.sword:
			draw_sprite_ext(spr_sword_icon, 0, GUI_WIDTH / 2,  GUI_HEIGHT - sprite_h / 2 - bottom_padding, ITEM_SCALE, ITEM_SCALE, angle, c_white, 1)
			break
		case weapon.laser_cannon:
			draw_sprite_ext(spr_laser_cannon_icon, 0, GUI_WIDTH / 2, GUI_HEIGHT - sprite_h / 2 - bottom_padding, ITEM_SCALE, ITEM_SCALE, angle, c_white, 1)
			break
		case weapon.rocket_launcher:
			draw_sprite_ext(spr_rocket_launcher_icon, 0, GUI_WIDTH / 2, GUI_HEIGHT - sprite_h / 2 - bottom_padding, ITEM_SCALE, ITEM_SCALE, angle, c_white, 1)
			break
		case weapon.axe:
			draw_sprite_ext(spr_axe_icon, 0, GUI_WIDTH / 2, GUI_HEIGHT - sprite_h / 2 - bottom_padding, ITEM_SCALE, ITEM_SCALE, angle, c_white, 1)
			break
		case weapon.none:
			if (delete_animation_index <= 4) {
				draw_sprite_ext(spr_delete, delete_animation_index, GUI_WIDTH / 2, GUI_HEIGHT - sprite_h / 2 - bottom_padding, GUI_SCALE, GUI_SCALE, angle, c_white, 1)
				delete_animation_index += 0.2
			}
			break
	}

	if (last_weapon != obj_player.current_weapon) {
		last_weapon = obj_player.current_weapon
		if (last_weapon == weapon.none) {
			delete_animation_index = 0	
		}
	}
}