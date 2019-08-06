/// @function events_fire(event)
/// @description Fire a specific event
/// @param {enum} event

with (obj_events_manager) {
	var ev = argument0
	
	// Check if there is event entr
	if (ds_map_exists(event_map, ev)) {
		var listeners = event_map[? ev]
		var len = ds_list_size(listeners)
		var listener_info
		var listener
		var script
		var args
		
		var i = 0; repeat (len) {
			// Get variables for current listner
			listener_info = listeners[| i]
			listener = listener_info[0]
			script = listener_info[1]
			
			var args_len = array_length_1d(listener_info) - 2
			var unregister = false
			
			if (instance_exists(listener)) {
				if (args_len <= 0) {
					with (listener) unregister = script_execute(script)	
				} else {
					args = array_create(args_len, 0)
					array_copy(args, 0, listener_info, 2, args_len)
					with (listener) unregister = script_execute_alt(script, args)	
				}
			} else {
				unregister = true	
			}
			
			if (unregister) {
				events_unregister(ev, listener)
				i--
			}
			
			i++	
		}
	}
}