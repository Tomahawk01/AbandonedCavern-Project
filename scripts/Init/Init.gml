// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Init(){
	global.coins = 0;
	
	global.checkpoint = noone;
	global.checkpointR = rm_dev_secret;
	global.checkpointx = 940;
	global.checkpointy = 844;
	global.target_x = 940;
	global.target_y = 844;
	
	// Play music
	if (!audio_is_playing(snd_ost_bloodborne_metal))
	{
		audio_play_sound(snd_ost_bloodborne_metal, 1, true);
	}
	
	window_set_cursor(cr_default);
}