/// @description  enum_master()
function enum_master() {
	 // Enum values for various things.

	 // Bounding box sides.
	    enum bbox 
	    {
	         top    = 0,
	         bottom = 1,
	         left   = 2,
	         right  = 3
	    }
    
	 // Culling modes.
	    enum culling
	    {
	         ignore           = 0,
	         deactivate       = 1,
	         reset            = 2,
	         reset_deactivate = 3,
	         destroy          = 4
	    }
    
	 // Input.
	    enum input
	    {
	         press   = 0,
	         hold    = 1,
	         release = 2
	    }



}
