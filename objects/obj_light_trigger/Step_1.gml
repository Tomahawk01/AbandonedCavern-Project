/// @desc

if (obj_player.y > y)
{
	if (!instance_exists(obj_surface_light))
	{
		instance_create_layer(x, y, "Lightning", obj_surface_light);
	}
	
	if (!audio_is_playing(snd_ost_lobby))
	{
		audio_play_sound(snd_ost_lobby, 10, true);
	}
	
	if (audio_is_playing(snd_ost_test))
	{
		audio_stop_sound(snd_ost_test);
	}
}

if (obj_player.y < y)
{
	instance_destroy(obj_surface_light);
	
	if (audio_is_playing(snd_ost_lobby))
	{
		audio_stop_sound(snd_ost_lobby);
	}
	
	if (!audio_is_playing(snd_ost_test))
	{
		audio_play_sound(snd_ost_test, 10, true);
	}
}

