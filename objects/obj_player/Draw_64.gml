/// @desc Draw collectibles GUI

var _w = display_get_gui_width();

draw_set_font(ft_gui);
draw_sprite(spr_collectible_coin_gui, 0, _w - 32, 32);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_text(_w - 48, 32, string(global.coins) + " x");
draw_set_halign(fa_left);

