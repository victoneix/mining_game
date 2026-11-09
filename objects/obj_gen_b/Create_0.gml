cell = 16;

var _noise = new FastNoiseLite();
_noise.SetNoiseType(FastNoiseLite.NoiseType.OpenSimplex2);
_noise.SetSeed(irandom(999999999));
_noise.SetFrequency(0.05);

cell_w = room_width div cell;
cell_h = room_height div cell;

var _tile = layer_tilemap_get_id("Terrain_b");

for(var i = 0; i < cell_w; i++){
    //var _noises = _noise.GetNoise(i, 0);
    //var _height = ground_level + (_noises * amplitude);
    var _noisees = _noise.GetNoise(i,0);
    var _height = 15 + (_noisees * 10);
    for(var j = _height; j < cell_h; j++){
        tilemap_set(_tile,4,i,j);
        
        //if(j == _height){
            //tilemap_set(_tile,1,i,j);
        //} else if(j < _height + 16){
            //tilemap_set(_tile,1,i,j);
        //}
    }
}

//var _sh = (cell_h div 2) - floor(irandom(cell_h div 3));
//var _ah = _sh;

//var _dirt_level;
//var _stone_level;
//var _l;

//for(var _i = 0; _i < cell_w; _i++){
    //
    //tilemap_set(_tile,2,_i,_ah);
    //
    //_dirt_level = ((cell_h - _ah) div 2)* 2;
    //_stone_level = ((cell_h) div 2)* 2;
    //
    //for(var _j = _ah; _j < _dirt_level; _j++){
        //tilemap_set(_tile,3,_i,_j+1);
        //_l = _j;
    //}
    //
    //for(var _j = _l; _j < _stone_level; _j++){
        //if(_j >= _ah){
            //tilemap_set(_tile,4,_i,_j+1);
        //}
    //}
    //_ah += choose(1,-1,0);
//}
