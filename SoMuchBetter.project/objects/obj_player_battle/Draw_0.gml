/// @description  Draw character.

 // Change animation:
 
 // Player:
    switch(chosen_character)
    {
        case P_GOKU:
            switch(player_attack)
            {
                // Standing:
                case S_NORMAL:
                    fs_instance_animation_set(spr_player_battle_idle, 0, 0, true, true);
                break;
            }
        break;
    }
 // Animation playback. (To Switch/Update or loop a animation, see event_user 0.
    fs_instance_animation_playback();
    
 // Draw sprite.
	draw_sprite_ext(anim_sprite, floor(anim_frame), floor(x), floor(y), image_xscale, image_yscale, anim_angle, anim_blend, anim_alpha);
    