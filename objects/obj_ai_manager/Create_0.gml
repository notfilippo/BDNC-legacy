/// @description Setup AI A* grid

global.ai_grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16)

var layer_id = layer_get_id("Collision")
var collision_tile_map_id = layer_tilemap_get_id(layer_id)

var _w = room_width;
var _h = room_height;

for (var xx = 0; xx < _w; xx += 16) {
	for (var yy = 0; yy < _h; yy += 16) {
		var i = tile_get_index(tilemap_get_at_pixel(collision_tile_map_id, xx, yy))
		if (i != 0) {
			mp_grid_add_cell(global.ai_grid, xx / 16, yy / 16)
		}
    }
}