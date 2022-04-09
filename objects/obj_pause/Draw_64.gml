/// @desc

if (global.pause)
{
	draw_set_color(c_white);
	draw_set_font(ft_menu);
	draw_set_halign(fa_center);
	draw_text(surface_get_width(application_surface) / 4, surface_get_height(application_surface) / 4, "Game Paused");
}
