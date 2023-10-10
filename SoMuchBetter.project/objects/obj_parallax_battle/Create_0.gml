/// @description  Create parallax.

 // First, call the parent. We do this to receive all variables from it.
    event_inherited()
    
 // Create the parallax background:
    var bg_yoffset;
        bg_yoffset = 1; // Offset for the parallax bg.

 // Create the clouds:
    parallax_add_node(1, bg_orange_wedge, 1, -0.6, 0, 80, 0, bg_yoffset, 0, 0, 64, 0, 0, 0, 320, 30); // < Parallax ID 0
    parallax_add_node(1, bg_fire, 1, -0.4, 0, 80, 0, bg_yoffset, 0, 0, 16, 0, 0, 0, 320, 48); // < Parallax ID 1
    parallax_add_node(1, bg_mike, 1, -0.5, 0, 80, 0, bg_yoffset, 0, 0, 32, 0, 0, 0, 320, 64); // < Parallax ID 2
    parallax_add_node(1, bg_pop_line, 1, -0.64, 0, 80, 0, bg_yoffset, 0, 0, 10, 0, 0, 0, 320, 10);  // < Parallax ID 3
    parallax_add_node(1, bg_square, 1, -0.8, 0, 80, 0, bg_yoffset, 0, 0, 76, 0, 0, 0, 320, 24);  // < Parallax ID 4
    parallax_add_node(1, bg_bullseye, 1, -0.36, 0, 80, 0, bg_yoffset, 0, 0, 6, 0, 0, 0, 320, 82);  // < Parallax ID 5

