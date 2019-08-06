/// @description Define title & version values. Start menu sound

version = "version v1.0 (post-jam)"

draw_set_font(fnt_pixel_big_bold)
title_height = string_height("BOB")

draw_set_font(fnt_pixel_small)
version_height = string_height(version)

SOUND_MENU = audio_play_sound(snd_menu, 1, true)
