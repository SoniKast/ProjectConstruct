/// @description  fs_instance_animation_set(animationID, animationSpeed, animationCount, frameReset, animationUpdate)
/// @param animationID
/// @param  animationSpeed
/// @param  animationCount
/// @param  frameReset
/// @param  animationUpdate
function fs_instance_animation_set(argument0, argument1, argument2, argument3, argument4) {
	 // Sets a new animation for the current instance.
	 /*
	    "animationID"     > being the animation sprite to use.
	    "animationSpeed"  > being how fast the animation plays back.
	    "animationCount"  > how many frames a animation has.
	    "frameReset"      > to reset the animation frame back to 0 once the animaton switches. 
	    "animationUpdate" > to update the animation speed and count every step.
	 */

	    var v_animation_id           = argument0;
	    var v_animation_speed        = argument1;
	    var v_animation_count        = argument2;
	    var v_animation_frame_reset  = argument3;
	    var v_animation_speed_update = argument4;
 
	    if(anim_sprite != v_animation_id)
	    {
	       anim_sprite = v_animation_id;
	       if(v_animation_frame_reset = true)
	       {
	          anim_frame = 0;
	       }
	       anim_speed = v_animation_speed;
	       anim_count = v_animation_count;
	    }
 
	 // Force animation speed/count update.
	    if(v_animation_speed_update == true)
	    {
	       anim_speed = v_animation_speed;
	       anim_count = v_animation_count;
	    }



}
