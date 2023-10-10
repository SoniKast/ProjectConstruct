/// @description  Setup view & fps.
 // If no view data is given in the current room, let this object handle it instead.
    
    if(view_enabled[0] == false)
    {
        view_enabled[0] = true;
        __view_set( e__VW.Visible, 0, true );
        __view_set( e__VW.WView, 0, global.display_width );
        __view_set( e__VW.HView, 0, global.display_height );
        __view_set( e__VW.WPort, 0, global.display_width );
        __view_set( e__VW.HPort, 0, global.display_height );
    }
        
 // If the room speed is below the games target framerate, change it.
    if(room_speed != global.framerate_target)
    {
       room_speed  = global.framerate_target;
    }

