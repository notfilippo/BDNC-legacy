/// @description Destroy depthgrid if it exists

if(ds_exists(depthgrid, ds_type_grid)){
	ds_grid_destroy(depthgrid);
}