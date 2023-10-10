/// @description  Display variables.

 // Main:
    global.display_width      = 320; // The width of the game display.
    global.display_height     = 240; // The height of the game display.
    global.display_scale      = 4;   // The current scale of the display.
    global.display_fullscreen = 0;   // The current fullscreen state.
    global.display_vsync      = 1;   // Whether the game uses vertical sync.
 
 // Visual effects:
    global.display_filter   = noone; // Current display filter. (Example: Sepia)
    global.display_blackout = 0;     // Fully darkens the display for the given amount of frames. Do this when switching between
                                   // different screen sizes to prevent the player from seeing the switch happen.
                                        
 // Disable the automatic drawing of the display.     
    application_surface_draw_enable(0);

 // Remove the sprite so it won't show up in the surface.
    sprite_index = -1;
   
 // Reset data when (re)starting the game. 
    display_set_gui_maximise(-1, -1); 
    display_set_gui_size(-1, -1);    
    event_user(0);

/// Culling mode.

    fs_instance_set_culling_mode(culling.ignore, 0);

