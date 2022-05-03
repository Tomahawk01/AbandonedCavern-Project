// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Init(){
	#macro RES_W 640
	#macro RES_H 360
	#macro RES_SCALE 2
	#macro CAM_SMOOTH 0.1
	
	global.coins = 0;
	
	global.checkpoint = noone;
	global.checkpointR = rm_lobby;
	global.checkpointx = 5120;
	global.checkpointy = 830;
	global.target_x = 5120;
	global.target_y = 830;
	
	global.is_fullscreen = 1;
	global.anti_aliasing = 0;
	global.music_gain = 0.95;
	
	// Check settings and apply it
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
	}
	
	if (global.is_fullscreen == 1)
	{
		window_set_fullscreen(true);
	}
	else
	{
		window_set_fullscreen(false);
	}
	
	if (global.anti_aliasing == 1)
	{
		gpu_set_tex_filter(true);
	}
	else
	{
		gpu_set_tex_filter(false);
	}
	
	if (global.music_gain >= 0)
	{
		audio_master_gain(global.music_gain);
	}
	
	// Play music
	if (!audio_is_playing(snd_ost_menu))
	{
		audio_play_sound(snd_ost_menu, 1, true);
	}
	
	window_set_size(RES_W * RES_SCALE, RES_H * RES_SCALE);
	window_set_cursor(cr_default);
}