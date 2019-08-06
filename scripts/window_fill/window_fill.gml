/// @function window_fill()
/// @description Resize the window in a desktop context.

if (WINDOW_WIDTH < WINDOW_HEIGHT) {
    // Portait
    VIEW_WIDTH = min(BASE_WIDTH, WINDOW_WIDTH);
    VIEW_HEIGHT = VIEW_WIDTH / ASPECT;
} else {
    // Landscape
    VIEW_HEIGHT = min(BASE_HEIGHT, WINDOW_HEIGHT);
    VIEW_WIDTH = VIEW_HEIGHT * ASPECT;
}

camera_set_view_size(view_camera[0], floor(VIEW_WIDTH * CAMERA_ZOOM), floor(VIEW_HEIGHT * CAMERA_ZOOM))
view_wport[0] = WINDOW_WIDTH;
view_hport[0] = WINDOW_HEIGHT;
surface_resize(application_surface, view_wport[0], view_hport[0]);

events_fire(event.resize_window)