/// fs_instance_collision_side_check(side, instance)
 // Returns the collision id in the given bbox side.
 // Use bbox.??? for this. Do not use the default bbox_??? function here.
 // *instance* > optional argument used to check against a specific instance, not solids.
 
 // Checking for another instance?
    if(argument_count > 1)
    {
       var v_inst = argument[1];
    }
    else
    {
       var v_inst = par_solid;
    }
 
 // Do the testing.
    var v_bbox = argument[0];
    if(v_bbox == bbox.top)
    {
       var v_test = collision_rectangle(bbox_left, bbox_top-2, bbox_right, bbox_top, v_inst, 1, 0);
       if(v_test != noone)
       {
          return v_test.id;
       }
       else return noone;
    }
    if(v_bbox == bbox.bottom)
    {
       var v_test = collision_rectangle(bbox_left, bbox_bottom+2, bbox_right, bbox_bottom, v_inst, 1, 0);
       if(v_test != noone)
       {
          return v_test.id;
       }
       else return noone;       
    }
    if(v_bbox == bbox.left)
    {
       var v_test = collision_line(bbox_left-2, bbox_top, bbox_left-2, bbox_bottom, v_inst, 1, 0);
       if(v_test != noone)
       {
          return v_test.id;
       }
       else return noone;  
    }
    if(v_bbox == bbox.right)
    {  
       var v_test = collision_line(bbox_right+3, bbox_top, bbox_right+3, bbox_bottom, v_inst, 1, 0);
       if(v_test != noone)
       {
          return v_test.id;
       }
       else return noone;  
    }
    
 // Failed to return anything, so return nothing.
    return noone;
    
