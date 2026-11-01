repeat(abs(hspd)) {
	if(place_meeting(x+sign(hspd),y,grund)){
        hspd = 0;
        break;
    } else{
        x+=sign(hspd);
    }
}

repeat(abs(vspd)) {
	if(place_meeting(x,y+sign(vspd),grund)){
        vspd = 0;
        break;
    } else{
        y+=sign(vspd);
    }
}