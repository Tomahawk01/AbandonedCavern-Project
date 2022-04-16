// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Load_Game(){
	with (game_controller)
	{
		if (!file_exists(file_name)) exit;
		
		ds_map_destroy(save_data);
		save_data = ds_map_secure_load(file_name);
	}
	
	// Load other data
	if (file_exists("Save.sav"))
	{
		ini_open("Save.sav");
		
		global.checkpointR = ini_read_real("Autosave", "room", rm_lobby);
		global.checkpointx = ini_read_real("Autosave", "x", 5120);
		global.checkpointy = ini_read_real("Autosave", "y", 830);
		global.coins = ini_read_real("Autosave", "coins", global.coins);
		global.is_fullscreen = ini_read_real("Settings", "fullscreen", 1);
		global.anti_aliasing = ini_read_real("Settings", "anti-aliasing", 0);
		global.music_gain = ini_read_real("Settings", "volume", 0.95);
		
		ini_close();
		
		Fade_Out(global.checkpointR, global.checkpointx, global.checkpointy);
	}
}
