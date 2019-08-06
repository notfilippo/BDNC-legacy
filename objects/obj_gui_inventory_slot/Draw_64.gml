/// @description Draw inventory sprite in the bottom center

#macro ITEM_SCALE 1.2

if (instance_exists(obj_player)) {
	draw_sprite(sprite_index, image_index, (GUI_WIDTH - sprite_width) / 2, GUI_HEIGHT - sprite_height - 5)
	
	switch (obj_player.current_weapon) {
		case weapon.sword:
			draw_sprite_ext(spr_sword_icon, 0, GUI_WIDTH / 2,  GUI_HEIGHT - sprite_height / 2 - 5, ITEM_SCALE, ITEM_SCALE, 45, c_white, 1)
			break
		case weapon.laser_cannon:
			draw_sprite_ext(spr_laser_cannon_icon, 0, GUI_WIDTH / 2, GUI_HEIGHT - sprite_height / 2 - 5, ITEM_SCALE, ITEM_SCALE, 45, c_white, 1)
			break
		case weapon.rocket_launcher:
			draw_sprite_ext(spr_rocket_launcher_icon, 0, GUI_WIDTH / 2, GUI_HEIGHT - sprite_height / 2 - 5, ITEM_SCALE, ITEM_SCALE, 45, c_white, 1)
			break
		case weapon.axe:
			draw_sprite_ext(spr_axe_icon, 0, GUI_WIDTH / 2, GUI_HEIGHT - sprite_height / 2 - 5, ITEM_SCALE, ITEM_SCALE, 45, c_white, 1)
			break
		case weapon.none:
			if (delete_animation_index <= 4) {
				draw_sprite_ext(spr_delete, delete_animation_index, GUI_WIDTH / 2, GUI_HEIGHT - sprite_height / 2 - 5, 1, 1, 45, c_white, 1)
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