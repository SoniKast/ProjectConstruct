/// @description  Receive input.

    fs_instance_input_receive();

/// Movement.
    
    fs_character_movement();

/// Attacks

	switch(global.hud_option)
	{
	    case 0:
	        if(button_b[input.press])
	        {
	            switch(player_direction)
	            {
	                case D_BACK:
	                    player_state = S_SPECIAL1;
	                    if(anim_sprite = spr_goku_back_sp1)
	                    {
	                        x_speed = 0;
	                        y_speed = 0;
	                    }
	                    if(input_special_count mod 2 == 0)
	                    {
	                        anim_frame = 1;   
	                        anim_speed = 0;
	                    }
	                    if(input_special_count mod 2 == 1)
	                    {
	                        anim_frame = 0;
	                        anim_speed = 0;
	                    }
	                    if(instance_number(obj_blast) < 3)
	                    {
	                        with(instance_create(x, y, obj_blast))
	                        {
	                            image_angle = 90;
	                            y_speed -= 2;
	                        }
	                    }
	                break;
	                case D_FRONT:
	                    player_state = S_SPECIAL1;
	                    if(anim_sprite = spr_goku_front_sp1)
	                    {
	                        x_speed = 0;
	                        y_speed = 0;
	                    }
	                    if(input_special_count mod 2 == 0)
	                    {
	                        anim_frame = 1;   
	                        anim_speed = 0;
	                    }
	                    if(input_special_count mod 2 == 1)
	                    {
	                        anim_frame = 0;
	                        anim_speed = 0;
	                    }
	                    if(instance_number(obj_blast) < 3)
	                    {
	                        with(instance_create(x, y, obj_blast))
	                        {
	                            image_angle = 270;
	                            y_speed += 2;
	                        }
	                    }
	                break;
	                case D_LEFT:
	                    player_state = S_SPECIAL1;
	                    if(anim_sprite = spr_goku_left_sp1)
	                    {
	                        x_speed = 0;
	                        y_speed = 0;
	                    }
	                    if(input_special_count mod 2 == 0)
	                    {
	                        anim_frame = 1;  
	                        anim_speed = 0; 
	                    }
	                    if(input_special_count mod 2 == 1)
	                    {
	                        anim_frame = 0;
	                        anim_speed = 0;
	                    }
	                    if(instance_number(obj_blast) < 3)
	                    {
	                        with(instance_create(x, y, obj_blast))
	                        {
	                            image_xscale = -1;
	                            x_speed -= 2;
	                        }
	                    }
	                break;
	                case D_RIGHT:
	                    player_state = S_SPECIAL1;
	                    if(anim_sprite = spr_goku_right_sp1)
	                    {
	                        x_speed = 0;
	                        y_speed = 0;
	                    }
	                    if(input_special_count mod 2 == 0)
	                    {
	                        anim_frame = 1;   
	                        anim_speed = 0;
	                    }
	                    if(input_special_count mod 2 == 1)
	                    {
	                        anim_frame = 0;
	                        anim_speed = 0;
	                    }
	                    if(instance_number(obj_blast) < 3)
	                    {
	                        with(instance_create(x, y, obj_blast))
	                        {
	                            image_xscale = 1;
	                            x_speed += 2;
	                        }
	                    }
	                break;
	            }
	        }
	    break;
	    case 2:
    
	    break;
	}

