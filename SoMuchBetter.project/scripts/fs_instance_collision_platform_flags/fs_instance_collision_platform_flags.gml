/// @description  fs_instance_collision_platform_flags()
function fs_instance_collision_platform_flags() {
	 // Set platform flag to prevent the instance from jumping-through platform slopes.
 
	    var v_xspeed = x_speed;
    
	    if(place_meeting(x, y+1, par_platform) && !place_meeting(x, y, par_platform) || place_meeting(x+sign(v_xspeed)+(sign(v_xspeed)*3), y, par_platform))
	    {
	       platform = 1;
	    }
	    else if(place_meeting(x, y+1, par_solid) || !ground)
	    {
	            platform = 0;
	    }



}
