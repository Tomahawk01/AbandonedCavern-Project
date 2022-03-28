/// @desc Some Info

var col_v = c_white;

draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_color(1280, 720, string("v 0.2.04 alpha"), col_v, col_v, col_v, col_v, 1);		// Current version of the game
draw_text_color(40, 720, string(fps), col_v, col_v, col_v, col_v, 1);						// Current FPS


// Draw collectibles GUI
draw_set_font(ft_gui);

var _w = display_get_gui_width();

draw_sprite(spr_collectible_coin_gui, 0, _w - 16, 30);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(_w - 50, 21, global.coins);
draw_set_halign(fa_left);

