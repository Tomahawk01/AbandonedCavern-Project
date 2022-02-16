/// @desc Variables

audio_play_sound(snd_ost_bloodborne_metal, 20, true);
footstep_wait = 0;

v_speed = 0;
h_speed = 0;
_gravity = 0.35;
walk_speed = 4;						// default 4

coyote_counter = 0;					// for jump buffer
coyote_max = 8;

global.player_hp = 50;
global.player_hp_max = global.player_hp;
healthbar_width = 100;
healthbar_height = 12;
healthbar_x = 40;
healthbar_y = 30;

flash = 0;							// for flashing shader
