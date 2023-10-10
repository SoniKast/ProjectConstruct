/// @description  Loop/Reset or Switch animation.

    switch(anim_sprite)
    {
       case spr_goku_front:
       case spr_goku_back:
       case spr_goku_left:
       case spr_goku_right:
            anim_frame = 0;
       break;
       
       case spr_goku_front_walk:
       case spr_goku_back_walk:
       case spr_goku_left_walk:
       case spr_goku_right_walk:
            anim_frame = 0;
       break;
       
       default:
       break;                              
    }

