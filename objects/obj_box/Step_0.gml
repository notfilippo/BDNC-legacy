/// @description Give loot and disappear

if (loot != weapon.none && distance_to_object(obj_player) < 8) {
	if (obj_player.current_weapon == weapon.none) {
		image_index = 1
		
		obj_player.current_weapon = loot
		loot = weapon.none
		audio_play_sound(snd_pickup, 1, false)
	}
}

if (loot == weapon.none) {
	image_alpha -= 0.2
	
	if (image_alpha <= 0) {
		instance_destroy()	
	}
}
