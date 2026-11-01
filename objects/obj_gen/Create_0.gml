cell = 16;
cell_w = room_width div cell;
cell_h = room_height div cell;
grid = ds_grid_create(cell_w,cell_h);
ds_grid_clear(grid,0);
var _tile = layer_tilemap_get_id("Terrain");

for(var _i = 0; _i < cell_w; _i++){
    for(var _j = 0; _j < cell_h; _j++){
        var _grid = grid[# _i,_j] = 1;
        tilemap_set(_tile,1,_i,_j);
    }
}