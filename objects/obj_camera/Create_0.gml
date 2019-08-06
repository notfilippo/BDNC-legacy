/// @description Setup view & proj matrices

camera = camera_create()

#macro BASE_WIDTH global.graphics_base_width
#macro BASE_HEIGHT global.graphics_base_height

BASE_WIDTH = 384
BASE_HEIGHT = 224

#macro VIEW_WIDTH global.graphics_view_width
#macro VIEW_HEIGHT global.graphics_view_height

VIEW_WIDTH = BASE_WIDTH
VIEW_HEIGHT = BASE_HEIGHT

#macro GUI_WIDTH global.graphics_gui_width
#macro GUI_HEIGHT global.graphics_gui_height

#macro GUI_SCALE 2

GUI_WIDTH = BASE_WIDTH * GUI_SCALE
GUI_HEIGHT = BASE_HEIGHT * GUI_SCALE

#macro WINDOW_WIDTH global.graphics_window_width
#macro WINDOW_HEIGHT global.graphics_window_height

#macro SCALE global.graphics_scale

#macro CAMERA_ZOOM global.graphics_zoom

CAMERA_ZOOM = 1

enum camera_mode {
	follow
}

follow = obj_player
cx = room_width / 2
cy = room_height / 2
cx_to = room_width / 2
cy_to = room_height / 2
mode = camera_mode.follow

alpha = 0.0
alpha_target = 0.0
shake = false
shake_duration = 5;
shake_force = 1;

gif_recording = false
gif = undefined

/*
window_set_cursor(cr_none)
cursor_sprite = spr_cursor
*/


window_set_size(BASE_WIDTH * 2, BASE_HEIGHT * 2)

if (DESKTOP) {
	window_center()
}

WINDOW_WIDTH = window_get_width()
WINDOW_HEIGHT = window_get_height()

#macro ASPECT (WINDOW_WIDTH / WINDOW_HEIGHT)

var scale_x = WINDOW_WIDTH / BASE_WIDTH
var scale_y = WINDOW_HEIGHT / BASE_HEIGHT
SCALE = max(scale_x, scale_y)

var view = matrix_build_lookat(cx, cy, -10, cx, cy, 0, 0, 1, 0)
var proj = matrix_build_projection_ortho(VIEW_WIDTH, VIEW_HEIGHT, 1, 10000)

camera_set_view_mat(camera, view)
camera_set_proj_mat(camera, proj)

camera_set_view_size(camera, floor(VIEW_WIDTH * CAMERA_ZOOM), floor(VIEW_HEIGHT * CAMERA_ZOOM));

view_camera[0] = camera

gui_fill()

if (WEB) {
	canvas_fill()
} else {
	window_fill()	
}