/// @description  Draw character.

 // Change animation:
 
 // Knight:
    switch(chosen_character)
    {
        case P_GOKU:
            switch(anim_direction)
            {
                case D_FRONT:
                    switch(player_state)
                    {
                        // Standing:
                        case S_NORMAL:
                            fs_instance_animation_set(spr_goku_front, 0, 0, true, true);
                        break;
                        
                        // Walk:
                        case S_WALK:
                            fs_instance_animation_set(spr_goku_front_walk, 8, 4, true, true);
                        break;
                        
                        // Run:
                        case S_RUNNING:
                            fs_instance_animation_set(spr_goku_front_walk, 8, 4, true, true);
                        break;
                        
                        // Attack:
                        /*
                        case S_ATTACK:
                            fs_instance_animation_set(spr_goku_, 15, 3, true, false);
                        break;
                        */
                        
                        // Special 1:
                        case S_SPECIAL1:
                            fs_instance_animation_set(spr_goku_front_sp1, 5, 2, false, true);
                        break;
                        /*
                        // Special 2:
                        case S_SPECIAL2:
                            fs_instance_animation_set(char_knight_anim.hurt, 15, 3, true, false);
                        break;
                        
                        // Special 3:
                        case S_SPECIAL3:
                            fs_instance_animation_set(char_knight_anim.hurt, 15, 3, true, false);
                        break;
                        */
                    }
                break;
                case D_BACK:
                    switch(player_state)
                    {
                        // Standing:
                        case S_NORMAL:
                            fs_instance_animation_set(spr_goku_back, 0, 0, true, true);
                        break;
                        
                        // Walk:
                        case S_WALK:
                            fs_instance_animation_set(spr_goku_back_walk, 8, 4, true, true);
                        break;
                        
                        // Run:
                        case S_RUNNING:
                            fs_instance_animation_set(spr_goku_back_walk, 8, 4, true, true);
                        break;
                        
                        // Attack:
                        /*
                        case S_ATTACK:
                            fs_instance_animation_set(spr_goku_, 15, 3, true, false);
                        break;
                        */
                        
                        // Special 1:
                        case S_SPECIAL1:
                            fs_instance_animation_set(spr_goku_back_sp1, 5, 2, false, true);
                        break;
                        /*
                        // Special 2:
                        case S_SPECIAL2:
                            fs_instance_animation_set(char_knight_anim.hurt, 15, 3, true, false);
                        break;
                        
                        // Special 3:
                        case S_SPECIAL3:
                            fs_instance_animation_set(char_knight_anim.hurt, 15, 3, true, false);
                        break;
                        */
                    }
                break;
                case D_RIGHT:
                    switch(player_state)
                    {
                        // Standing:
                        case S_NORMAL:
                            fs_instance_animation_set(spr_goku_right, 0, 0, true, true);
                        break;
                        
                        // Walk:
                        case S_WALK:
                            fs_instance_animation_set(spr_goku_right_walk, 8, 4, true, true);
                        break;
                        
                        // Run:
                        case S_RUNNING:
                            fs_instance_animation_set(spr_goku_right_walk, 8, 4, true, true);
                        break;
                        
                        // Attack:
                        /*
                        case S_ATTACK:
                            fs_instance_animation_set(spr_goku_, 15, 3, true, false);
                        break;
                        */
                        
                        // Special 1:
                        case S_SPECIAL1:
                            fs_instance_animation_set(spr_goku_right_sp1, 5, 2, false, true);
                        break;
                        /*
                        // Special 2:
                        case S_SPECIAL2:
                            fs_instance_animation_set(char_knight_anim.hurt, 15, 3, true, false);
                        break;
                        
                        // Special 3:
                        case S_SPECIAL3:
                            fs_instance_animation_set(char_knight_anim.hurt, 15, 3, true, false);
                        break;
                        */
                    }
                break;
                case D_LEFT:
                    switch(player_state)
                    {
                        // Standing:
                        case S_NORMAL:
                            fs_instance_animation_set(spr_goku_left, 0, 0, true, true);
                        break;
                        
                        // Walk:
                        case S_WALK:
                            fs_instance_animation_set(spr_goku_left_walk, 8, 4, true, true);
                        break;
                        
                        // Run:
                        case S_RUNNING:
                            fs_instance_animation_set(spr_goku_left_walk, 8, 4, true, true);
                        break;
                        
                        // Attack:
                        /*
                        case S_ATTACK:
                            fs_instance_animation_set(spr_goku_, 15, 3, true, false);
                        break;
                        */
                        
                        // Special 1:
                        case S_SPECIAL1:
                            fs_instance_animation_set(spr_goku_left_sp1, 5, 2, false, true);
                        break;
                        /*
                        // Special 2:
                        case S_SPECIAL2:
                            fs_instance_animation_set(char_knight_anim.hurt, 15, 3, true, false);
                        break;
                        
                        // Special 3:
                        case S_SPECIAL3:
                            fs_instance_animation_set(char_knight_anim.hurt, 15, 3, true, false);
                        break;
                        */
                    }
                break;
            }
        break;
    }
    
    if(dpad_left[input.hold])  { anim_direction = D_LEFT; }
    if(dpad_right[input.hold]) { anim_direction = D_RIGHT; }       
    if(dpad_up[input.hold])    { anim_direction = D_BACK; }
    if(dpad_down[input.hold])  { anim_direction = D_FRONT; }
  
 // Animation playback. (To Switch/Update or loop a animation, see event_user 0.
    fs_instance_animation_playback();
    
 // Draw sprite.
    fs_instance_draw();
    


/* */
/*  */
