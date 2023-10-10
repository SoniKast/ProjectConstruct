// Increase XP requirements when the levels advance
if(global.player_xp >= global.player_max_xp)
{
    global.player_xp = global.player_xp - global.player_max_xp;
    global.player_max_xp += 50;
    global.player_level++;
}

