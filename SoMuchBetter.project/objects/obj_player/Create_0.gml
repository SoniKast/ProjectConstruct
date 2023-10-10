/// @description  Variables

 // States & Flags:
    x_speed  = 0;                      // Horizontal speed.
    x_real   = 0;                      // Real horizontal speed, used for sub pixel movement.
    x_handle = 0;                      // Used to store the x_speed.
    
  // Y Speed
    y_speed  = 0;                      // Vertical speed.
    y_real   = 0;                      // Real vertical speed, used for sub pixel movement.
    y_handle = 0;                      // Used to store the y_speed.    
    wall_hug = 0;
    
  // Player 
    player_state       = S_NORMAL;
    player_direction   = D_FRONT;
    chosen_character   = P_GOKU;

/// Input setup.

    fs_instance_input_setup();

/// Sprite & Animation setup.

    fs_instance_animation_setup(null);


