var _right  = keyboard_check(ord("D"));
var _left   = keyboard_check(ord("A"));
var _jump   = keyboard_check(vk_space);

hspd = (_right - _left)*spd;
vspd += grav;
vspd = clamp(vspd,-7,7);

if(place_meeting(x,y+1,grund) && _jump){
    vspd -= 7;
}