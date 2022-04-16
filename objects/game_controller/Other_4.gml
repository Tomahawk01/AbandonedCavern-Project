/// @desc

if (!instance_exists(obj_surface_light) && room != rm_menu && room != rm_options)
{
	instance_create_depth(x, y, 99, obj_surface_light);
}

if (room == rm_menu || room = rm_options)
{
	instance_destroy(obj_surface_light);
}

// Music setup
if (room == rm_dev_secret)
{
	if (!audio_is_playing(snd_rain_forest))
	{
		audio_play_sound(snd_rain_forest, 10, true);
	}
}
else
{
	audio_stop_sound(snd_rain_forest);
}

if (room == rm_menu || room == rm_options)
{
	if (!audio_is_playing(snd_ost_menu))
	{
		audio_play_sound(snd_ost_menu, 10, true);
	}
}
else
{
	audio_stop_sound(snd_ost_menu);
}

if (room == rm_lobby && obj_light_trigger.y < obj_player.y)
{
	if (!audio_is_playing(snd_ost_lobby))
	{
		audio_play_sound(snd_ost_lobby, 10, true);
	}
}
else
{
	audio_stop_sound(snd_ost_lobby);
}

if (room == rm_lobby && obj_light_trigger.y > obj_player.y)
{
	if (!audio_is_playing(snd_ost_test))
	{
		audio_play_sound(snd_ost_test, 10, true);
	}
}
else
{
	audio_stop_sound(snd_ost_test);
}

