/// @desc

if (distance_to_point(mouse_x, mouse_y) <= 0)
{
	if (!hover) audio_play_sound(snd_menu_button_hover, 1, false);
	hover = true;
	
	if (window_get_fullscreen())
	{
		text = "ON";
	}
	else
	{
		text = "OFF";
	}
	
	if (mouse_check_button_pressed(mb_any))
	{
		audio_play_sound(snd_menu_button_selected, 1, false);
		
		window_set_fullscreen(!window_get_fullscreen());
	}
}
else
{
	hover = false;
}
