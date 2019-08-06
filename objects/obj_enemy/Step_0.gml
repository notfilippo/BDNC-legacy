/// @description Animate and move with motion planning

#region movement

if (distance_to_object(obj_player) < line_of_sight) {
	var target_x = obj_player.x + obj_player.sprite_width / 2
	var target_y = obj_player.y + obj_player.sprite_height / 2

	if (mp_grid_path(global.ai_grid, ai_path, x + sprite_width / 2, y + sprite_height / 2, target_x, target_y, true)) {
		path_set_kind(ai_path, 1);
		path_set_precision(ai_path, 8);
		path_start(ai_path, movement_speed / room_speed, path_action_stop, false)
	}

	angle = point_direction(x, y, obj_player.x + obj_player.sprite_width / 2, obj_player.y + obj_player.sprite_height / 2)
}

#endregion

#region sprite

if (angle > 270 && angle < 360 && (image_index < right_frames || image_index > right_frames + animation_frames)) {
	image_index = right_frames
}

if (angle > 0 && angle < 180 && (image_index < up_frames || image_index > up_frames + animation_frames)) {
	image_index = up_frames
}

if (angle > 180 && angle < 270 && (image_index < left_frames || image_index > left_frames + animation_frames)) {
	image_index = left_frames
}

#endregion

#region arrack

if (distance_to_object(obj_player) < line_of_sight && !attacking) {
	alarm[0] = 5
	attacking = true
}

#endregion

#region death

if (hp <= 0) {
	instance_create_layer(x, y, "FX", obj_explosion)
	// instance_create_layer(spawn_x, spawn_y, layer, obj_enemy)
	instance_destroy()
}

#endregion

