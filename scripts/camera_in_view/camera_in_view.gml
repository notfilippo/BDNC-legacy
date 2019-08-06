/// @function camera_in_view(object)
/// @desciption Returns if object is in camera view
/// @param object

with (obj_camera) {
	var w = camera_get_view_width(camera) / 2
	var h = camera_get_view_height(camera) / 2
	var x1 = cx - w
	var y1 = cy - h
	var x2 = cx + w
	var y2 = cy + h
	return collision_rectangle(x1, y1, x2, y2, argument0, false, true)
}