/// @description  Change the display size and/or toggle fullscreen.

 // Toggle fullscreen:
   if(global.display_fullscreen == true)
   {
      global.display_blackout = 5;   
      window_set_fullscreen(true);
      with(ctr_master)
      {
           event_user(0);
      } 
   }
   else 
   {             
      // Blackout:
         global.display_blackout = 5;
               
      // Disable fullscreen.
         window_set_fullscreen(false);
         
      // Reset display.
         display_reset(0, global.display_vsync);
    
      // Set up the window.
         window_set_size(global.display_width * global.display_scale, global.display_height * global.display_scale);
    
      // Set up the display.
         display_set_gui_size(global.display_width * global.display_scale, global.display_height * global.display_scale);
    
      // Center the window.
         alarm[0] = 1;
         
      // Update room / fps data.
         with(ctr_master)
         {
              event_user(0);
         }               
    }

