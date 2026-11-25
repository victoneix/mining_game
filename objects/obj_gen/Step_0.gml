if(keyboard_check_pressed(ord("R"))) room_restart();
if(keyboard_check_pressed(vk_escape)) game_end();
    
var _tile = layer_tilemap_get_id("Terrain");
var _mx = (mouse_x div cell);
var _my = (mouse_y div cell);
if(mouse_check_button_pressed(mb_left)){
     tilemap_set(_tile,0,_mx,_my);
}

if(mouse_check_button_pressed(mb_right) && tilemap_get(_tile,_mx,_my) == 0){
     tilemap_set(_tile,8,_mx,_my);
}