/// @description Select enemy sprite and basic traits

ai_path = path_add()
max_hp = 100
movement_speed = 60
animation_frames = 2
line_of_sight = 128
attacking = false

enum enemy_type {
	robot_1 = spr_enemy_robot_1,
	robot_2 = spr_enemy_robot_2,
	alien_1 = spr_enemy_alien_1,
	alien_2 = spr_enemy_alien_2
}

enum enemy_direction {
	right,
	left,
	up
}

type = choose(enemy_type.robot_1, enemy_type.robot_2, enemy_type.alien_1, enemy_type.alien_2)

switch (type) {
	case enemy_type.robot_1:	
		max_hp = 100
		movement_speed = 80
		sprite_index = spr_enemy_robot_1
		break
	case enemy_type.robot_2:	
		max_hp = 120
		movement_speed = 60
		animation_frames = 3
		sprite_index = spr_enemy_robot_2
		break
	case enemy_type.alien_1:	
		max_hp = 50
		movement_speed = 100
		sprite_index = spr_enemy_alien_1
		break
	case enemy_type.alien_2:	
		max_hp = 110
		movement_speed = 70
		sprite_index = spr_enemy_alien_2
		break
}

hp = max_hp

angle = 0
right_frames = 0
left_frames = animation_frames
up_frames = animation_frames * 2