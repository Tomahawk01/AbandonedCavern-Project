function Player_death(){
	Screen_Shake(5, 30);
	
	if (global.checkpointR != 0)
	{
		room_goto(global.checkpointR);
	}
	else
	{
		room_restart();
	}
}