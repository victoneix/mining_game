if(keyboard_check_pressed(ord("R"))) room_restart();
    
var _tile = layer_tilemap_get_id("Terrain");
var _mx = (mouse_x div cell);
var _my = (mouse_y div cell);
if(mouse_check_button_pressed(mb_left)){
     tilemap_set(_tile,0,_mx,_my);
}