/// @desc Variables

audio_play_sound(snd_ost_bloodborne_metal, 10, true);
audio_play_sound(snd_rain_forest, 20, true);

footstep_wait = 0;

v_speed = 0;
v_speed_wjump = -5;
v_speed_max_wall = 4;
h_speed = 0;
h_speed_wjump = 4;
_gravity = 0.3;
_gravity_wall = 0.1;
walk_speed = 4;
jump_speed = 6;

coyote_counter = 0;					// for jump buffer
coyote_max = 8;

on_ladder = false;					// Ladder

on_wall = 0;						// Wall
dust = 0;
wall_jump_delay = 0;
wall_jump_delay_max = 17;
