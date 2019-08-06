/// @description Draw instances in depthgrid

if(ds_exists(depthgrid, ds_type_grid)) {
	
	ds_grid_sort(depthgrid, 1, true)
	for(var yy = 0; yy < ds_grid_height(depthgrid); yy += 1) {
		var instanceID = depthgrid[# 0, yy]
		with(instanceID){
			draw_self()
		}
	}
	
	ds_grid_destroy(depthgrid)
}