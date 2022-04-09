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

