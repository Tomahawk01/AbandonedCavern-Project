/// @desc Set up
/*
global.pause = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert	= vk_escape;
global.key_enter	= vk_enter;
global.key_left		= vk_left;
global.key_right	= vk_right;
global.key_up		= vk_up;
global.key_down		= vk_down;

display_set_gui_size(global.view_width, global.view_height);

enum menu_page
{
	main,			// 0
	settings,		// 1
	audio,			// 2
	graphics,		// 3
	controls,		// 4
	height			// Last
}

enum menu_element_type
{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

// Create menu pages
ds_main_menu = Create_menu_page
(
	["Continue",	menu_element_type.script_runner,	Continue_game()],
	["New Game",	menu_element_type.script_runner,	New_game()],
	["Settings",	menu_element_type.page_transfer,	menu_page.settings],
	["Exit",		menu_element_type.script_runner,	Exit_game()]
);

ds_settings = Create_menu_page
(
	["Audio",		menu_element_type.page_transfer,	menu_page.audio],
	["Graphics",	menu_element_type.page_transfer,	menu_page.graphics],
	["Controls",	menu_element_type.page_transfer,	menu_page.controls],
	["Back",		menu_element_type.page_transfer,	menu_page.main]
);

ds_menu_audio = Create_menu_page
(
	["Master",		menu_element_type.slider,			Change_volume(),		1,		[0,1]],
	["Sounds",		menu_element_type.slider,			Change_volume(),		1,		[0,1]],
	["Music",		menu_element_type.slider,			Change_volume(),		1,		[0,1]],
	["Back",		menu_element_type.page_transfer,	menu_page.settings]
);

ds_menu_graphics = Create_menu_page
(
	["Resolution",	menu_element_type.shift,			Change_resolution(),	0,		["640 x 480", "768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],
	["Fullscreen mode",	menu_element_type.toggle,		Change_window_mode(),	1,		["Fullscreen", "Windowed"]],
	["Parallax",	menu_element_type.toggle,			Parallax_toggle(),		0,		["Yes", "No"]],
	["Back",		menu_element_type.page_transfer,	menu_page.settings]
);

ds_menu_controls = Create_menu_page
(
	["Up",			menu_element_type.input,			"key_up",				vk_up],
	["Down",		menu_element_type.input,			"key_down",				vk_down],
	["Left",		menu_element_type.input,			"key_left",				vk_left],
	["Right",		menu_element_type.input,			"key_right",			vk_right],
	["Back",		menu_element_type.page_transfer,	menu_page.settings]
);

page = 0;
menu_pages = [ds_main_menu, ds_settings, ds_menu_audio, ds_menu_graphics, ds_menu_controls];

var i = 0, array_len = array_length_1d(menu_pages);
repeat (array_len)
{
	menu_option[i] = 0;
	i++;
}

inputting = false;
*/