/// @description  fs_instance_collision_ground_flags()
function fs_instance_collision_ground_flags() {
	 // Receive the ground flags, such as the id, type and angle of the collision we're grounded on.
 
	    ground     = fs_instance_collision_ground_check();
	    ground_id  = fs_instance_collision_side_check(bbox.bottom);
	    if(ground_id != noone)
	    {
	       tile_type  = ground_id.tile_type;
	       tile_angle = ground_id.tile_angle;
	       if(tile_angle <> 0)
	       {
	          sloped = true;
	       }
	       else
	       {
	          sloped = false;
	       }
	    }
	    if(ground == false)
	    {
	       sloped = false;
	    }




}
