function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // ctr_master
	global.__objectDepths[1] = 0; // ctr_display
	global.__objectDepths[2] = 0; // ctr_culling
	global.__objectDepths[3] = 0; // ctr_level_up
	global.__objectDepths[4] = 0; // par_player
	global.__objectDepths[5] = 0; // par_attack
	global.__objectDepths[6] = -1; // obj_player
	global.__objectDepths[7] = -99999; // obj_level_controller
	global.__objectDepths[8] = 0; // obj_blast
	global.__objectDepths[9] = 0; // par_terrain
	global.__objectDepths[10] = 0; // par_solid
	global.__objectDepths[11] = 0; // obj_collision_solid
	global.__objectDepths[12] = 0; // obj_transition_test
	global.__objectDepths[13] = 0; // par_parallax
	global.__objectDepths[14] = 99999999; // obj_parallax_battle


	global.__objectNames[0] = "ctr_master";
	global.__objectNames[1] = "ctr_display";
	global.__objectNames[2] = "ctr_culling";
	global.__objectNames[3] = "ctr_level_up";
	global.__objectNames[4] = "par_player";
	global.__objectNames[5] = "par_attack";
	global.__objectNames[6] = "obj_player";
	global.__objectNames[7] = "obj_level_controller";
	global.__objectNames[8] = "obj_blast";
	global.__objectNames[9] = "par_terrain";
	global.__objectNames[10] = "par_solid";
	global.__objectNames[11] = "obj_collision_solid";
	global.__objectNames[12] = "obj_transition_test";
	global.__objectNames[13] = "par_parallax";
	global.__objectNames[14] = "obj_parallax_battle";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
