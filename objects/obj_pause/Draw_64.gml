/// @desc

if (global.pause)
{
	draw_set_color(c_white);
	draw_set_font(ft_menu);
	draw_set_halign(fa_center);
	draw_text(global.view_width, global.view_height, "Game Paused");	// global vars in camera obj.
}
