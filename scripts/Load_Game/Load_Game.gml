// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Load_Game(){
	// Loading coins objects
	
	
	// Loading other data
	if (file_exists("Save.sav"))
	{
		ini_open("Save.sav");
		
		global.checkpointR = ini_read_real("Autosave", "room", rm_dev_secret);
		global.checkpointx = ini_read_real("Autosave", "x", 0);
		global.checkpointy = ini_read_real("Autosave", "y", 0);
		global.coins = ini_read_real("Autosave", "coins", global.coins);
		
		ini_close();
		
		Fade_Out(global.checkpointR, global.checkpointx, global.checkpointy);
	}
}