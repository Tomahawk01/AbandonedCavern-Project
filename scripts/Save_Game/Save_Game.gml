// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Save_Game(){
	// Saving coins objects
	
	
	// Saving other data
	if (file_exists("Save.sav"))
	{
		file_delete("Save.sav");
	}
	
	ini_open("Save.sav");
	
	ini_write_real("Autosave", "room", global.checkpointR);
	ini_write_real("Autosave", "x", global.checkpointx);
	ini_write_real("Autosave", "y", global.checkpointy);
	ini_write_real("Autosave", "coins", global.coins);
	
	ini_close();
}