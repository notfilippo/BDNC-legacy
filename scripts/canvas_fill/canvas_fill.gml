/// @function canvas_fill()
/// @description Resize the canvans in an HTML5 context.

camera_set_view_size(view_camera[0], floor(VIEW_WIDTH * CAMERA_ZOOM), floor(VIEW_HEIGHT * CAMERA_ZOOM))
view_wport[0] = WINDOW_WIDTH
view_hport[0] = WINDOW_HEIGHT
surface_resize(application_surface, view_wport[0], view_hport[0])

events_fire(event.resize_window)