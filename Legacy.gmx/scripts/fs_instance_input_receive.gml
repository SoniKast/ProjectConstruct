/// fs_instance_input_receive()
 // Receives input presses. Only use on instances that used fs_instance_input_setup().

 // Presses:
    dpad_up      [input.press] = keyboard_check_pressed(val_dpad_up);         
    dpad_down    [input.press] = keyboard_check_pressed(val_dpad_down);     
    dpad_left    [input.press] = keyboard_check_pressed(val_dpad_left);      
    dpad_right   [input.press] = keyboard_check_pressed(val_dpad_right);    
    button_a     [input.press] = keyboard_check_pressed(val_button_a);      
    button_b     [input.press] = keyboard_check_pressed(val_button_b);    
    button_start [input.press] = keyboard_check_pressed(val_button_start);  
    button_select[input.press] = keyboard_check_pressed(val_button_select); 
 
 // Holding Down:
    dpad_up      [input.hold] = keyboard_check(val_dpad_up);        
    dpad_down    [input.hold] = keyboard_check(val_dpad_down);      
    dpad_left    [input.hold] = keyboard_check(val_dpad_left);      
    dpad_right   [input.hold] = keyboard_check(val_dpad_right);     
    button_a     [input.hold] = keyboard_check(val_button_a);       
    button_b     [input.hold] = keyboard_check(val_button_b);      
    button_start [input.hold] = keyboard_check(val_button_start);   
    button_select[input.hold] = keyboard_check(val_button_select);  
    
 // Release:
    dpad_up      [input.release] = keyboard_check_released(val_dpad_up);       
    dpad_down    [input.release] = keyboard_check_released(val_dpad_down);    
    dpad_left    [input.release] = keyboard_check_released(val_dpad_left);     
    dpad_right   [input.release] = keyboard_check_released(val_dpad_right);   
    button_a     [input.release] = keyboard_check_released(val_button_a);      
    button_b     [input.release] = keyboard_check_released(val_button_b);     
    button_start [input.release] = keyboard_check_released(val_button_start);  
    button_select[input.release] = keyboard_check_released(val_button_select);
    
 // Canceling:
    if(dpad_left[input.hold] && dpad_right[input.hold])
    {
       dpad_left [input.hold] = false;
       dpad_right[input.hold] = false;       
    }
    if(dpad_down[input.hold] && dpad_up[input.hold])
    {
       dpad_down [input.hold] = false;
       dpad_up   [input.hold] = false;       
    }
    
 // Count input checks.
    if(dpad_up[input.press])
    {
       input_up_count += 1;
       if(input_up_mtimer != 20) input_up_mtimer = 20;
    }
    if(input_up_mtimer > 0)
    {
       input_up_mtimer -= 1;
    }
    else
    {
       input_up_count = 0;
    }
              
    if(dpad_down[input.press])
    {
       input_down_count += 1;
       if(input_down_mtimer != 20) input_down_mtimer = 20;
    }
    if(input_down_mtimer > 0)
    {
       input_down_mtimer -= 1;
    }
    else
    {
       input_down_count = 0;
    }
              
    if(dpad_left[input.press])
    {
       input_left_count += 1;
       if(input_left_mtimer != 20) input_left_mtimer = 20;
    }
    if(input_left_mtimer > 0)
    {
       input_left_mtimer -= 1;
    }
    else
    {
       input_left_count = 0;
    }
              
    if(dpad_right[input.press])
    {
       input_right_count += 1;
       if(input_right_mtimer != 20) input_right_mtimer = 20;
    }
    if(input_right_mtimer > 0)
    {
       input_right_mtimer -= 1;
    }
    else
    {
       input_right_count = 0;
    }
              
    if(button_a[input.press])
    {
       input_action_count += 1;
       if(input_action_mtimer != 20) input_action_mtimer = 20;
    }         
    if(input_action_mtimer > 0)
    {
       input_action_mtimer -= 1;
    }
    else
    {
       input_action_count = 0;
    }           
    
    if(button_b[input.press])
    {
       input_special_count += 1;
       if(input_special_mtimer != 20) input_special_mtimer = 20;
    }          
    if(input_special_mtimer > 0)
    {
       input_special_mtimer -= 1;
    }
    else
    {
       input_special_count = 0;
    }
