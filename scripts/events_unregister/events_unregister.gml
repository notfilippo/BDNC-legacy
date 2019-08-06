/// @function events_unregister(event, caller)
/// @description Register event listerner
/// @param {enum} event
/// @param {real} caller

with (obj_events_manager) {
	var ev = argument0
	var caller = argument1
	
	if (ds_map_exists(event_map, ev)) {
		var listeners = event_map[? ev]
		var len = ds_list_size(listeners)
		
		var i = 0; repeat (len) {
			var listener_info = listeners[| i]
			if (listener_info[0] == caller) {
				if (len == 1) {
					ds_list_destroy(listeners)
					ds_map_delete(event_map, ev)
				} else {
					ds_list_delete(listeners, i)
				}
				break
			}
			i++
		}
	}
}