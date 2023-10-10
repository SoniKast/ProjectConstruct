/// @description  Global setup.
 
 // Set a initialized flag to run later events.
    initialized = true;
 
 // Define app data.
    global.app_title   = "You Could Have It So Much Better";
    global.app_version = "1.0";
    global.chapter_number = 1;
    global.chapter_string = "THE FALLEN";
        
 // Game variables:
    global.debug            = 0;  // Toggles the games debug mode.
    global.frame_enable     = 0;  // Enables the global frame count. Disable if you pause the game or you don't need it.
    global.frame            = 0;  // The games total frame. This can be used to sync animations or events. Resets on room update.
    global.framerate_target = 60; // The games target framerate. You probably want to keep this at 60 for max compatibility with different hardware.
                                // Besides, GameMaker doesn't quite like displays with +60hz refresh rates anyways.

 // Input variables:
    global.hud_option    = 0;
    global.player_level  = 1;
    global.player_xp     = 0;
    global.player_max_xp = 100;
    global.healthpoints  = 100;
    global.player_char   = P_GOKU;
 
 // Game fonts:
    global.font_dev      = font_add_sprite_ext(fnt_dev, "ABCDEFGHIJKLMNOPQRSTUVWXYZ.?!", 1, 1);
	global.font_menu     = font_add_sprite_ext(fnt_menu, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ", false, -1);
	// scribble_font_force_bilinear_filtering("fnt_menu", false);

 // Sound variables:
    global.sfx_volume   = 1;
    global.bgm_volume   = 1;
 
 // Time variables:
    global.player_x      = -1;
    global.player_y      = -1;
    global.temp_player_x = -1;
    global.temp_player_y = -1;
 
 // Initialize room setup.
    event_user(0);

 // Save / Load data.    
    with(ctr_display)
    {
         event_user(0);
    }                


/// Culling mode.

    fs_instance_set_culling_mode(culling.ignore, 0);

