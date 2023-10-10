/// @description  Initialize controllers, then continue to the next room.

 // Hide the background before doing anything else.
    __background_set( e__BG.Visible, 0, false );
 
 // Create persistent controllers.
 // Do not change the order of creation, otherwise you will run into errors.
    instance_create(0, 0, ctr_display); 
    instance_create(0, 0, ctr_master);
    instance_create(0, 0, ctr_level_up);
 // instance_create(0, 0, ctr_audio);

 // If the game is running from Game Makers IDE, automatically toggle on debug mode. 
 // Otherwise toggle release mode on. This can further improve the games performance.
    if(parameter_count() == 3) && (string_count("gm_ttt_",  parameter_string(2)))
    ||(parameter_count() == 3) && (string_count("_VM", parameter_string(2)))
    {
       global.debug = 1;
       
       // Warn that gmsched is used on GMS2.
          if((parameter_count() == 3) && (string_count("_VM", parameter_string(2))))
          {
             if(file_exists(working_directory+"/gmsched.dll") == true)
             {
                show_message("You're using GMS2 which means that the GMSched extension is NOT necessary. Please remove it if you're using GMS 2.3 or up!");
             }
          }       
    }
    else
    {
       gml_release_mode(true);
    }
    
 // Finally, go to the next room.
    room_goto_next()