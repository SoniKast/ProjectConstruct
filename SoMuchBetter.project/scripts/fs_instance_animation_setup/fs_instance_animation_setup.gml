/// @description  fs_instance_animation_setup(initial sprite)
/// @param initial sprite
function fs_instance_animation_setup(argument0) {
	 // Creates variables required for the animation system.
	 // "initial" > The initial sprite to set. You can also use null.
  
	    var v_initial = argument0;

	 // Set empty sprite if initial is set to null.
	    if(v_initial == null)
	    {
	       v_initial = spr_null;
	    }
    
	    anim_sprite    = v_initial; // Sprite to utilize.
	    anim_frame     = 0;         // The frame to draw.
	    anim_count     = 0;         // How many frames used in the animation.
	    anim_speed     = 0;         // How fast the animation plays.
	    anim_direction = D_FRONT;   // Horizontal facing direction of the sprite.
	    anim_blend     = c_white;   // The sprites color blend. 
	    anim_angle     = 0;         // The sprites angle.
	    anim_alpha     = 1;         // The sprites alpha.
    
	 // Disable the default frame speed function.
	    image_speed = 0;



}
