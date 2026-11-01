cell = 16;

cell_w = room_width div cell;
cell_h = room_height div cell;

var _sh = (cell_h div 2) - floor(irandom(cell_h div 3));
var _ah = _sh;


var _tile = layer_tilemap_get_id("Terrain");

var _dirt_level;
var _stone_level;
var _l;

for(var _i = 0; _i < cell_w; _i++){
    
    tilemap_set(_tile,2,_i,_ah);
    
    _dirt_level = ((cell_h - _ah) div 2)* 2;
    _stone_level = ((cell_h) div 2)* 2;
    
    for(var _j = _ah; _j < _dirt_level; _j++){
        tilemap_set(_tile,3,_i,_j+1);
        _l = _j;
    }
    
    for(var _j = _l; _j < _stone_level; _j++){
        if(_j >= _ah){
            tilemap_set(_tile,4,_i,_j+1);
        }
    }
    _ah += choose(1,-1,0);
}