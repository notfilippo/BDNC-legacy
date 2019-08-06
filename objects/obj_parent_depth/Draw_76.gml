/// @description Add self to depthgrid

with(obj_draw_manager) {
	//the first instance creates the grid
	if(!ds_exists(depthgrid, ds_type_grid)) {
		//create the depthgrid datastructure
		depthgrid = ds_grid_create(2,1)

		//add its ID to the grid
		depthgrid[# 0,0] = other

		//add its Y value to the grid
		depthgrid[# 1,0] = other.y
	} else {
	
		//resize the current grid (increment +1)
		var heightOfGrid = ds_grid_height(depthgrid)
		ds_grid_resize(depthgrid, 2, heightOfGrid +1)
		
		//add ourselves to grid
		depthgrid[# 0, heightOfGrid] = other
		
		//add our Y value
		depthgrid[# 1, heightOfGrid] = other.y
	}
}
