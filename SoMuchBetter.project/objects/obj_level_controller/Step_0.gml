// Switch options
	if(input_check_pressed("switch_l"))
	{
		if(global.hud_option < 3)
		{
		    global.hud_option++;
		}
		else
		{
		    global.hud_option = 0;
		}
	}	
	if(input_check_pressed("switch_r"))
	{
		if(global.hud_option > 0)
		{
			global.hud_option--;
		}
		else
		{
			global.hud_option = 3;	
		}
	}