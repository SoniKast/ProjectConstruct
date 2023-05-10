/// fs_instance_collision_movement_handle_horizontal()
 // Send data to moving tiles. (Horizontal)
 // This will send data to moving tiles you're currently colliding with.
 // Make sure that the "Applies To:" setting in the event user is set to "other" or the script is called using with(other).
 
    inst_id = other.id;
    if(instance_exists(inst_id))          
    {           
       if(inst_id.ground && inst_id.ground_id == id)
       {
          inst_id.x += sign(x_handle);
       }               
                          
       // Push the character away from this tile to prevent them getting stuck inside the tile.
       // Do this only if the tile is solid.  
          if(tile_is = "par_solid" && inst_id != noone)
          {
             with(inst_id)
             {
                  if(place_meeting(x+x_handle, y-1, other))
                  { 
                     repeat(abs(x_handle)+1)
                     {
                            if(place_meeting(x+sign(x_handle), y-1, other))
                            {  
                               // First, check if the tile is moving.
                                 _tileTest = instance_place(x+sign(x_handle), y-1, other)
                                 if(_tileTest != noone)
                                 {
                                    if(_tileTest.x_handle != 0)
                                    {
                                       if((_tileTest.x_handle < 0 && x < _tileTest.x) || (_tileTest.x_handle > 0 && x > _tileTest.x)) // Check if the tile is overlapping with the player.
                                       {
                                          // Update the characters position according to the tiles horizontal speed.                                                  
                                             x += _tileTest.x_handle;    
                                    
                                          // Allow the character to move away from the tile.
                                             if(sign(x_handle) == -sign(_tileTest.x_handle))
                                             {
                                                x_handle = 0;
                                             }                    
                                       }
                                    }
                                 }
                                 else // The tile isn't moving so simply force the horizontal speed to 0.
                                 {
                                      // Set the horizontal speed to 0.
                                         x_speed = 0;
                                 }       
                             }
                     }
                  }                
             }
          }           
    }
