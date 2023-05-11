/// fs_instance_input_setup()
 // Setup input variables for the current instance. 
 // You probably only need this for character and menus.
 
    dpad_up           = 0;
    dpad_down         = 0;
    dpad_left         = 0;
    dpad_right        = 0;
    button_a          = 0;
    button_b          = 0;
    button_start      = 0;
    button_select     = 0;
    val_dpad_up       = (global.key_up);
    val_dpad_down     = (global.key_down);
    val_dpad_left     = (global.key_left);
    val_dpad_right    = (global.key_right); 
    val_button_a      = (global.key_action);
    val_button_b      = (global.key_special);
    val_button_start  = (global.key_enter);
    val_button_select = (global.key_select);
    input_up_count      = 0; input_up_mtimer      = 0;
    input_down_count    = 0; input_down_mtimer    = 0;    
    input_left_count    = 0; input_left_mtimer    = 0;
    input_right_count   = 0; input_right_mtimer   = 0;   
    input_action_count  = 0; input_action_mtimer  = 0;
    input_special_count = 0; input_special_mtimer = 0;  
