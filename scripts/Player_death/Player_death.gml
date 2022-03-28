function Player_death(){
	Screen_Shake(5, 30);
	
	if (!file_exists("Save.sav"))
	{
		global.target_x = global.checkpointx;
		global.target_y = global.checkpointy;
		
		Fade_Out(global.checkpointR, global.target_x, global.target_y);
	}
	else // the game has saved at least one time
	{
		Load_Game();
	}
}