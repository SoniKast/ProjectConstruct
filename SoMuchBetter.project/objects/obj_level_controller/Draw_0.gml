/// @description  Draw the HUD and everything
    draw_sprite(spr_hud, 0, __view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 )+8);

// Draw Goku's skills
    switch(global.player_char)
    {
        case P_GOKU:
            draw_sprite(spr_player1_skills, global.hud_option, __view_get( e__VW.XView, 0 )+10, __view_get( e__VW.YView, 0 )+10);
        break;
    }

// Draw the HP bar
    draw_rectangle_colour(__view_get( e__VW.XView, 0 )+30, __view_get( e__VW.YView, 0 )+14, __view_get( e__VW.XView, 0 )+30+floor(global.healthpoints / 1.74), __view_get( e__VW.YView, 0 )+21, $f5f5f5, $f5f5f5, $f5f5f5, $f5f5f5, false);

// Draw the XP bar
    draw_sprite_part(spr_xp_bar, 0, 0, 0, global.player_xp/global.player_max_xp*(60), 2, __view_get( e__VW.XView, 0 )+28, __view_get( e__VW.YView, 0 )+23);
    
// Draw the XP and Level for test purposes
    scribble("[fnt_menu]XP "+string_hash_to_newline(global.player_xp)).draw(__view_get( e__VW.XView, 0 )+6, __view_get( e__VW.YView, 0 )+60);
    scribble("[fnt_menu]LEVEL "+string_hash_to_newline(global.player_level)).draw(__view_get( e__VW.XView, 0 )+6, __view_get( e__VW.YView, 0 )+80);

