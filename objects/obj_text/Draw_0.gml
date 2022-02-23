/// @desc

var half_w = w * 0.5;

// Draw the box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x - half_w - border, y - h - (border * 2), x + half_w + border, y, 15, 15, false);
draw_sprite(spr_marker, 0, x, y);
draw_set_alpha(1);

// Draw text
Draw_set_text(c_white, ft_menu, fa_center, fa_top);			// in Script
draw_text(x, y - h - border, text_current);
