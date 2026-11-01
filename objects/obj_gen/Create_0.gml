cell = 16;
var _sh = (room_height div 2) - floor(random(room_height div 3));
_sh = (_sh div cell) * cell;
var _sh_px = _sh div cell;
var _ah = _sh_px;

cell_w = room_width div cell;
cell_h = room_height div cell;
grid = ds_grid_create(cell_w,cell_h);

ds_grid_clear(grid,0);
var _tile = layer_tilemap_get_id("Terrain");

var _dirt_level;

for(var _i = 0; _i < cell_w; _i++){
    _ah += choose(1,-1,0);
    _dirt_level = ((room_height - _ah) div cell)*cell;
    for(var _j = _ah; _j < _dirt_level; _j++){
        tilemap_set(_tile,1,_i,_j);
    }
}