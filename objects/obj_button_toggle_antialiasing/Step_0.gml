/// @desc

if (gpu_get_tex_filter())
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
			gpu_set_tex_filter(true);
			global.anti_aliasing = 1;

			ini_open("Save.sav");
				Save_Game();
			ini_close();
		}
		else
		{
			gpu_set_tex_filter(false);
			global.anti_aliasing = 0;

			ini_open("Save.sav");
				Save_Game();
			ini_close();
		}
	}
}
else
{
	hover = false;
}

