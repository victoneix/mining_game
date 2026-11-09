cell = 16;

var _noise = new FastNoiseLite();
_noise.SetNoiseType(FastNoiseLite.NoiseType.OpenSimplex2);
//_noise.SetSeed(irandom(999999999));
_noise.SetSeed(15172489);
_noise.SetFrequency(0.07);

var _noise_ore = new FastNoiseLite();
_noise_ore.SetNoiseType(FastNoiseLite.NoiseType.OpenSimplex2);
//_noise.SetSeed(irandom(999999999));
_noise_ore.SetSeed(irandom(999999999));
_noise_ore.SetFrequency(0.15);

cell_w = room_width div cell;
cell_h = room_height div cell;

var _tile = layer_tilemap_get_id("Terrain");
var _tile_b = layer_tilemap_get_id("Terrain_b");

var _c = 0;

for(var i = 0; i < cell_w; i++){
    //var _noises = _noise.GetNoise(i, 0);
    //var _height = ground_level + (_noises * amplitude);
    var _noisees = _noise.GetNoise(i,0);
    var _height = 29 + (_noisees * 4);
    for(var j = _height; j < cell_h; j++){
        
        var _world_end = _height + 91;
        
        if(j < _world_end - 90){
            tilemap_set(_tile_b,3,i,j);
        } else if(j < _world_end - 75){
            tilemap_set(_tile_b,7,i,j);
        } else {
            tilemap_set(_tile_b,4,i,j);
        }
        
        
        if(j < _world_end - 6){
            if(_noise.GetNoise(i,j) < 0.2){
                if(j < _world_end - 90){
                    tilemap_set(_tile,1,i,j);
                } else if(j < _world_end - 75){
                    tilemap_set(_tile,6,i,j);
                    if(tilemap_get(_tile,i,j-1) == 0){
                          tilemap_set(_tile,1,i,j);
                      }
                } else{
                	if(j < _world_end - 68){
                        var _o = irandom(3);
                        if(_o == 3){
                            tilemap_set(_tile,2,i,j);
                        } else if(_o == 2){
                        	tilemap_set(_tile,6,i,j);
                            if(tilemap_get(_tile,i,j-1) == 0){
                                tilemap_set(_tile,1,i,j);
                            }
                        } else if(_o == 1){
                        	tilemap_set(_tile,6,i,j);
                            if(tilemap_get(_tile,i,j-1) == 0){
                                tilemap_set(_tile,1,i,j);
                            }
                        } else {
                        	tilemap_set(_tile,2,i,j);
                        }
                    } else {
                    	  tilemap_set(_tile,2,i,j);
                        var _ore = _noise_ore.GetNoise(i,j);
                        
                        if(_ore > 0.74){
                            var _pos_x = i;
                            var _pos_y = j;
                            var _veio = irandom_range(4,16);

                            repeat (_veio) {
                                
                                if (_pos_x < 0 || _pos_x >= cell_w ||
                                       _pos_y < _world_end - 68 || _pos_y >= _world_end - 53) {
                                       break;
                                   }
                                
                                
                                if(tilemap_get(_tile,_pos_x,_pos_y) == 2){
                                    var _dis_x = choose(-1,1,0);
                                    var _dis_y = choose(-1,1,0);
                                	tilemap_set(_tile,9,_pos_x,_pos_y);
                                    _pos_x += _dis_x;
                                    _pos_y += _dis_y;
                                } else {
                                	break;
                                }
                                
                            }
                        }
                    }
                }
            }
        } else {
            
            var _u = irandom_range(0,4);
            if(j < _world_end - 4){
                if(_u == 4){
                    tilemap_set(_tile,0,i,j);
                } else if(_u == 3){
                    tilemap_set(_tile,2,i,j);
                } else if(_u == 2) {
                	tilemap_set(_tile,2,i,j);
                } else if(_u == 1){
                	tilemap_set(_tile,5,i,j);
                } else {
                	tilemap_set(_tile,5,i,j);
                }
            } else {
            	tilemap_set(_tile,5,i,j);
            }
        }
        
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
