/// @desc
/*
if (!global.pause) exit;

input_up		= keyboard_check_pressed(global.key_up);
input_down		= keyboard_check_pressed(global.key_down);
input_enter		= keyboard_check_pressed(global.key_enter);
input_revert	= keyboard_check_pressed(global.key_revert);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

if (inputting)
{
	switch(ds_grid[# 1, menu_option[page]])
	{
		case menu_element_type.shift:
			var h_input = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if (h_input != 0)
			{
				// Audio
				audio_play_sound(snd_menu_switch, 10, false);
				
				ds_grid[# 3, menu_option[page]] += h_input;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]]) - 1);
			}
			
		break;
		
		case menu_element_type.slider:
			var h_input = keyboard_check(global.key_right) - keyboard_check(global.key_left);
			if (h_input != 0)
			{
				ds_grid[# 3, menu_option[page]] += h_input * 0.01;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);
			}
			
		break;
		
		case menu_element_type.toggle:
			var h_input = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if (h_input != 0)
			{
				// Audio
				audio_play_sound(snd_menu_switch, 10, false);
				ds_grid[# 3, menu_option[page]] += h_input;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
			}
			
		break;
		
		case menu_element_type.input:
			var kk = keyboard_lastkey;
			if (kk != vk_enter)
			{
				if (kk != ds_grid[# 3, menu_option[page]]) // Audio
				ds_grid[# 3, menu_option[page]] = kk;
				variable_global_set(ds_grid[# 2, menu_option[page]], kk);
			}
		break;
	}
}
else
{
	var option_change = input_down - input_up;
	if (option_change != 0)
	{
		menu_option[page] += option_change;
		if(menu_option[page] > ds_height - 1)
		{
			menu_option[page] = 0;
		}

		if(menu_option[page] < 0)
		{
			menu_option[page] = ds_height - 1;
		}
		// Audio
		audio_play_sound(snd_menu_selection_click, 9, false);
	}
}
if (input_enter)
{
	switch(ds_grid[# 1, menu_option[page]])
	{
		case menu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]); break;
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case menu_element_type.shift: 
		case menu_element_type.slider:
		case menu_element_type.toggle: if (inputting) { script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]); }
		case menu_element_type.input:
			inputting = !inputting;
		break;
	}
	// Audio
	audio_play_sound(snd_menu_selected, 10, false);
}
*/