/// @description Handle movement

#region movement

if (!instance_exists(obj_enemy)) {
	room_goto_next()	
}

var xx = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var yy = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if (gamepad_is_connected(0) && (xx == 0 && yy == 0)) {
	xx = gamepad_axis_value(0, gp_axislh);
	yy = gamepad_axis_value(0, gp_axislv);
} 

xx = clamp(xx, -1, 1)
yy = clamp(yy, -1, 1)

var moving = false
var movement = movement_speed
var velocity = [0, 0]

if (xx != 0 || yy != 0)
	moving = true
	
if (moving && !dash && keyboard_check(vk_space)) {
	dash = true	
}
	
if (moving && !dash && gamepad_is_connected(0) && (gamepad_button_check_pressed(0, gp_shoulderl) || gamepad_button_check_pressed(0, gp_shoulderr))) {
	dash = true
} 
	
if (moving) {
	if (abs(xx) == 1 && abs(yy) == 1)
		movement = diagonal_speed
	if (dash) movement *= 2
	velocity[0] = xx * movement * delta_time / 1000000
	velocity[1] = yy * movement * delta_time / 1000000
	last_velocity = velocity
	angle = point_direction(x, y, x + velocity[0], y + velocity[1])
	
	move_and_contact_tiles(collision_tile_map_id, 16, velocity)
	image_speed = 1
} else if (dash) {
	image_speed = 1
	angle = point_direction(x, y, x + last_velocity[0], y + last_velocity[1])
	move_and_contact_tiles(collision_tile_map_id, 16, last_velocity)
} else {
	image_speed = 0	
}

#endregion

#region interact 

current_interaction = interaction.none

#macro GP_CNN gamepad_is_connected(0)

if (keyboard_check_pressed(vk_up) || (GP_CNN && (gamepad_button_check_pressed(0, gp_face4) || gamepad_axis_value(0, gp_axisrv) < 0))) {
	current_interaction = interaction.up
} else if (keyboard_check(vk_down) || (GP_CNN && (gamepad_button_check_pressed(0, gp_face1) || gamepad_axis_value(0, gp_axisrv) > 0))) {
	current_interaction = interaction.down
} else if (keyboard_check_pressed(vk_left) || (GP_CNN && (gamepad_button_check_pressed(0, gp_face3) || gamepad_axis_value(0, gp_axisrh) < 0))) {
	current_interaction = interaction.left
} else if (keyboard_check_pressed(vk_right) || (GP_CNN && (gamepad_button_check_pressed(0, gp_face2) || gamepad_axis_value(0, gp_axisrh) > 0))) {
	current_interaction = interaction.right
}

if (current_weapon != weapon.none && current_interaction != interaction.none) {
	if (can_use_weapon) {
		instance_create_layer(x + sprite_width / 2, y + sprite_height / 2, "Objects", current_weapon)
		current_weapon = weapon.none
		can_use_weapon = false
	}
}

if (current_interaction != interaction.none) {
	last_interaction = current_interaction	
}

#endregion

#region sprite images
	

if (dash) {
	if (angle < 180) {
		sprite_index = spr_player_roll_up
	} else {
		sprite_index = spr_player_roll_up
	}
} else if (current_interaction == interaction.up) {
	sprite_index = spr_player_right_up	
} else if (current_interaction == interaction.left) {
	sprite_index = spr_player_left_down	
} else if (current_interaction == interaction.left) {
	sprite_index = spr_player_right_down
} else if (current_interaction == interaction.none) {
	if (angle < 90) {
		sprite_index = spr_player_right_up	
	} else if (angle < 180) {
		sprite_index = spr_player_left_up	
	} else if (angle < 270) {
		sprite_index = spr_player_left_down	
	} else if (angle < 360) {
		sprite_index = spr_player_right_down	
	}
}

if (dash && image_index >= image_number - 1) {
	dash = false	
}

#endregion