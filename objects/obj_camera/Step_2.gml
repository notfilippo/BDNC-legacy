/// @description Move (x, y) to (x_to, y_to)

if (alpha < alpha_target) {
	alpha += sign(alpha_target - alpha) * 0.02
}

switch (mode) {
	case camera_mode.follow:
		cx += (cx_to - cx) / 15
		cy += (cy_to - cy) / 15

		if (follow != noone && instance_exists(follow)) {
			cx_to = follow.x + follow.sprite_width / 2
			cy_to = follow.y + follow.sprite_height / 2
		}
		break
}

if (keyboard_check_pressed(vk_escape)) {
	window_set_fullscreen(!window_get_fullscreen())	
}

var new_width = window_get_width()
var new_height = window_get_height()

if (new_width != WINDOW_WIDTH || new_height != WINDOW_HEIGHT) {
	WINDOW_WIDTH = new_width
	WINDOW_HEIGHT = new_height
	
	var scale_x = WINDOW_WIDTH / BASE_WIDTH
	var scale_y = WINDOW_HEIGHT / BASE_HEIGHT
	SCALE = max(scale_x, scale_y)
	
	if (WEB) {
		// canvas_fill()
	} else {
		window_fill()	
	}
	
	gui_fill()
}

if (shake) {
	shake_duration--
    cx += choose(-shake_force, shake_force)
    cy += choose(-shake_force, shake_force)
    if(shake_duration <= 0){
        shake = false
        shake_duration = 5
    }
}

cx = clamp(cx, camera_get_view_width(camera) / 2, room_width - camera_get_view_width(camera) / 2)
cy = clamp(cy, camera_get_view_height(camera) / 2, room_height - camera_get_view_height(camera) / 2)

var view = matrix_build_lookat(cx, cy, -10, cx, cy, 0, 0, 1, 0)
camera_set_view_mat(camera, view)