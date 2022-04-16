/// @desc

if (window_get_fullscreen())
{
	text = "ON";
}
else
{
	text = "OFF";
}

if (distance_to_point(mouse_x, mouse_y) <= 0)
{
	if (!hover) audio_play_sound(snd_menu_button_hover, 1, false);
	hover = true;
	
	if (mouse_check_button_pressed(mb_any))
	{
		audio_play_sound(snd_menu_button_selected, 1, false);
		
		if (text == "OFF")
		{
			window_set_fullscreen(true);
			global.is_fullscreen = 1;
			ini_open("Save.sav");
	
			ini_write_real("Settings", "fullscreen", global.is_fullscreen);
	
			ini_close();
		}
		else
		{
			window_set_fullscreen(false);
			global.is_fullscreen = 0;
			ini_open("Save.sav");
	
			ini_write_real("Settings", "fullscreen", global.is_fullscreen);
	
			ini_close();
		}
	}
}
else
{
	hover = false;
}

