/// @desc

draw_self();

var knob_amount = amount_current / amount_max;
var knob_position_x = x + (sprite_width * knob_amount);

draw_sprite(spr_audio_music_ball, is_being_dragged, knob_position_x, y);

draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + (sprite_width / 2), y - 32, "Master volume");
draw_text(x + sprite_width + 32, y, string(global.music_gain));

