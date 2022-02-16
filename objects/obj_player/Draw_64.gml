/// @desc Healthbar & Some Info

//Healthbar
draw_sprite(spr_healthbar_bg, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthbar, 0, healthbar_x, healthbar_y, min((global.player_hp / global.player_hp_max)) * healthbar_width, healthbar_height);
draw_sprite(spr_healthbar_border, 0, healthbar_x, healthbar_y);

//Debug Info

draw_set_color(c_black);

draw_text(30, 70, string("FPS: ") + string(fps_real));					// FPS
draw_text(30, 90, string("X: ") + string(x));							// X position of player
draw_text(30, 110, string("Y: ") + string(y));							// Y position of player
draw_text(30, 130, string("Jump buffer: ") + string(coyote_counter));		// Jump buffer
