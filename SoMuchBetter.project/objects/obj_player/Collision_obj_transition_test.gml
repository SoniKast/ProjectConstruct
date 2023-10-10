global.temp_player_x = x;
global.temp_player_y = y;
transition_start(rm_battle, sq_fade_out, sq_fade_in);
instance_destroy(other);