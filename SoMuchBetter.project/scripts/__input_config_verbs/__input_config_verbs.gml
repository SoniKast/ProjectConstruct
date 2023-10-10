//Input defines the default profiles as a macro called 
//This macro is parsed when Input boots up and provides the baseline bindings for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The root struct called __input_config_verbs() contains the names of each default profile
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

return {
    
    keyboard_and_mouse:
    {
        up:    [input_binding_key(vk_up)],
        down:  [input_binding_key(vk_down)],
        left:  [input_binding_key(vk_left)],
        right: [input_binding_key(vk_right)],
        
        switch_l:  input_binding_key("Q"),
        switch_r:  input_binding_key("S"),
        action:	   input_binding_key("W"),
        special:   input_binding_key("X"),
        
        start:  input_binding_key(vk_enter),
        select: input_binding_key(vk_backspace),
    },
    
    gamepad:
    {
        up:    [input_binding_gamepad_axis(gp_axislv, true),  input_binding_gamepad_button(gp_padu)],
        down:  [input_binding_gamepad_axis(gp_axislv, false), input_binding_gamepad_button(gp_padd)],
        left:  [input_binding_gamepad_axis(gp_axislh, true),  input_binding_gamepad_button(gp_padl)],
        right: [input_binding_gamepad_axis(gp_axislh, false), input_binding_gamepad_button(gp_padr)],
        
        switch_l:  input_binding_gamepad_button(gp_shoulderl),
        switch_r:  input_binding_gamepad_button(gp_shoulderr),
        action:	   input_binding_gamepad_button(gp_face1),
        special:   input_binding_gamepad_button(gp_face3),
        
        start:  input_binding_gamepad_button(gp_start),
        select: input_binding_gamepad_button(gp_select),
    }
    
};