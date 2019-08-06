/// @description Draw health-bar

draw_self()
draw_rectangle_color(x - 1, y - 3, x + sprite_width + 1,                y - 8, c_white, c_white, c_white, c_white, false)
draw_rectangle_color(x,     y - 4, x + (sprite_width * (hp / max_hp)),     y - 7, c_red, c_red, c_red, c_red, false)