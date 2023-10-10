/// @description  fs_character_movement()
function fs_character_movement() {
	 // Handle the horizontal movement for the character.
 
	// Step sound effect
	    move_speed = 2;
	    if(player_state != S_ATTACK)
	    {
	        if(dpad_right[input.hold])
	        {
	            player_direction = D_RIGHT;
	            x_speed = move_speed;
	            if(player_state != S_WALK)
	            {
	                player_state = S_WALK;
	            }
	        }
	        if(dpad_left[input.hold])
	        {
	            player_direction = D_LEFT;
	            x_speed = -move_speed;
	            if(player_state != S_WALK)
	            {
	                player_state = S_WALK;
	            }
	        }
	        if(!dpad_left[input.hold] && !dpad_right[input.hold])
	        {
	            x_speed = 0;
	        }
        
	        if(dpad_up[input.hold])
	        {
	            player_direction = D_BACK;
	            y_speed = -move_speed;
	            if(player_state != S_WALK)
	            {
	                player_state = S_WALK;
	            }
	        }
	        if(dpad_down[input.hold])
	        {
	            player_direction = D_FRONT;
	            y_speed = move_speed;
	            if(player_state != S_WALK)
	            {
	                player_state = S_WALK;
	            }
	        }
	        if(!dpad_up[input.hold] && !dpad_down[input.hold])
	        {
	            y_speed = 0;

	        }
	    }
    
	    if(x_speed == 0 && y_speed == 0)
	    {
	        if(player_state == S_WALK)
	        {
	            player_state = S_NORMAL;
	        }
	    }



}
