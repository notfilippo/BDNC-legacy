/// @description Setup text

if (!is_undefined(SOUND_GAME) && audio_is_playing(SOUND_GAME)) {
	audio_stop_sound(SOUND_GAME)
	SOUND_GAME = undefined
}

text = "Congratulations!"
credits = ""

alarm[0] = room_speed * 2
audio_play_sound(snd_rocket_launcher, 1, false)
