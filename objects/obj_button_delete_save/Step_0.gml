/// @desc

if (distance_to_point(mouse_x, mouse_y) <= 0)
{
	if (!hover) audio_play_sound(snd_menu_button_hover, 1, false);
	hover = true;
	if (mouse_check_button_pressed(mb_any))
	{
		audio_play_sound(snd_menu_button_selected, 1, false);
		
		if (file_exists("Save.sav") || file_exists("CoinsData.sav"))
		{
			file_delete("Save.sav");
			file_delete("CoinsData.sav");
		}
		
		Init();
		
		instance_destroy();
	}
}
else
{
	hover = false;
}
