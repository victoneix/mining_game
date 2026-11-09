if(!instance_exists(target)) exit;
    x = lerp(x,target.x,0.1);
    y = lerp(y,target.y,0.1);
camera_set_view_pos(view_camera[0],x-view_w/2,y-view_h/2);