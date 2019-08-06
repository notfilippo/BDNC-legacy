/// @description events_register_script(event, caller, script, [args..])
/// @param {enum} event
/// @param {real} caller
/// @param {real} script
/// @param {list} [args...]

with (obj_events_manager) {
		var ev = argument[0]
		var caller = argument[1]
		
		if (!ds_map_exists(event_map, ev)) {
			// Add event to event map
			var listeners = ds_list_create()
			ds_map_add_list(event_map, ev, listeners)
		} else {
			var listeners = event_map[? ev]
		}
		
		var listener_info
		listener_info[0] = caller
		
		// Add script & arguments
		var len = argument_count - 2
		var i = 0; repeat (len) {
			listener_info[i + 1] = argument[i + 2]
			i++
		}
		
		ds_list_add(listeners, listener_info)
}