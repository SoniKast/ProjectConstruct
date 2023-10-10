/// @description  fs_instance_draw()
function fs_instance_draw() {
	 // Draws a instance with the proper values. Only use this if you're using the custom animation system.
	    draw_sprite(spr_shadow, 0, floor(x), floor(y)); 
	    draw_sprite_ext(anim_sprite, floor(anim_frame), floor(x), floor(y), image_xscale, image_yscale, anim_angle, anim_blend, anim_alpha);

}
