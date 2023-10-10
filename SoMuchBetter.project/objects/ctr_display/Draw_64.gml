/// @description  Draw application.

 // Draw display filter.
    if(global.display_filter != noone && global.shader_enable == true)
    {
       shader_set(global.display_filter);
    }
 
 // Disable alpha blending.
    draw_enable_alphablend(0);
    
 // Draw the application surface.
    draw_surface_stretched(application_surface, 0, 0, global.display_width, global.display_height);
    
 // Enable alpha blending.
    draw_enable_alphablend(1);

 // Reset display filter.
    if(global.display_filter != noone)
    {
       shader_reset();
    }
 
 // Set the GUI scale.
    display_set_gui_maximise(global.display_scale, global.display_scale);
    display_set_gui_size(global.display_width, global.display_height);  

 // Blackout.
    if(global.display_blackout > 0)
    {
       global.display_blackout--;
       draw_set_color(c_black)
       draw_rectangle(0, 0, global.display_width, global.display_height, false);
       draw_set_color(c_white);
    }
    
 // Set the title
    window_set_caption(global.app_title + global.app_version);
/*
 // Debug text.
    if(game.debug == 1)
    { 
       draw_set_font(game.font_dev);
       draw_text(2, 2, "-IDE/DEBUG MODE-");
       draw_text(2, 2+9*2, "FPS: "+string(fps));
       draw_text(2, 2+9*3, "REAL FPS: "+string(fps_real))
       draw_text(2, 2+9*4, "INSTANCE COUNT: "+string(instance_count))  
       if(instance_exists(par_character))
       {
            draw_text(2, 2+9*5, "X SPEED: "+string(par_character.x_speed));
            draw_text(2, 2+9*6, "ALARM 0: "+string(par_character.alarm[0]));
       }
    }


/* */
/*  */
