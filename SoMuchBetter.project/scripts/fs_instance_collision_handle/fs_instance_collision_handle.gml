/// @description  fs_instance_collision_handle()
function fs_instance_collision_handle() {
	 // Handle the instance collision system. 
	 // Only use this on instances setup with fs_instance_common_initialization()
 
	 // Set a handle variable so we can move / collide using sub pixels. 
	    x_real   += (x_speed);
	    x_handle  = round(x_real);
	    x_real   -= x_handle;

	    y_real   += (y_speed);
	    y_handle  = round(y_real);
	    y_real   -= y_handle; 
        
	 // Horizontal.
	    repeat(abs(x_handle))
	    {
	           if(place_meeting(x+sign(x_handle), y, par_solid))
	           {
	              if(!place_meeting(x+sign(x_handle), y-1, par_solid))
	              {
	                 y--;
	                 x += sign(x_handle);
	              }
	              else
	              if(!place_meeting(x+sign(x_handle), y+1, par_solid))
	              {
	                 y++;
	                 x += sign(x_handle);
	              }              
	              else
	              {
	                 wall_hug = sign(x_speed);                     
	                 event_user(1);
	              }
	           }
	           else
	           {
	               if(!place_meeting(x+sign(x_handle), y+1, par_solid) && place_meeting(x+sign(x_handle), y+2, par_solid))
	               {
	                  y++;
	               }
	               if(!place_meeting(x+sign(x_handle), y-1, par_solid) && place_meeting(x+sign(x_handle), y-2, par_solid))
	               {
	                  y--;
	               }               
	               x += sign(x_handle);
	               if(wall_hug != 0)
	               {
	                  wall_hug = 0;
	               }               
	           }
	    }
    
	 // Vertical.
	    repeat(abs(y_handle))
	    {
	           if(y_speed <= 0)
	           {
	              if(place_meeting(x, y+sign(y_handle), par_solid))
	              {
	                 y_speed = 0;
	                 break;
	              }
	              else
	              {
	                 y += sign(y_handle);
	              }
	           }
	           else if(place_meeting(x, y+1, par_solid))
	           {
	                   y_speed = 0
	           }
	           else
	           {
	              y += sign(y_handle)
	           }
	    }    




}
