/// @desc
// Button text
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(ft_menu);

draw_text(x + 110, y, string(explain));

draw_set_halign(fa_center);

if (!hover)
{
	draw_set_color(c_aqua);
	draw_rectangle(x1, y1, x2, y2, true);
	draw_text(x, y, text);
}
else
{
	draw_set_color(c_aqua);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_color(c_black);
	draw_text(x, y, text);
}
