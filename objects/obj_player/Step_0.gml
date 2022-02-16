/// @desc Player core logic

// Player inputs
var h_direction = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var on_ground = place_meeting(x, y + 1, obj_solid_wall);

#region // Animations & movement

if (h_direction != 0) 
{
	image_xscale = h_direction;
}

h_speed = h_direction * walk_speed;
v_speed += _gravity;

if (on_ground)
{
	coyote_counter = coyote_max;								// When on gound reset coyote jump buffer
	if (h_direction != 0)
	{
		sprite_index = spr_player_run;
	}
	else sprite_index = spr_player_idle;
}
else
{
	coyote_counter -= 1;										// When jumping decrease buffer by 1 every frame
	sprite_index = spr_player_jump;
}

if (jump && coyote_counter > 0)									// Jumping ** while jump buffer is higher than 0 we can jump
{
	v_speed = -7;
}
	
#endregion

#region // Collisions

Collisions();													// In Script
	
#endregion

#region // Sounds

if (sprite_index == spr_player_run && footstep_wait == 0)
{
	audio_play_sound(choose(snd_player_footstep1, snd_player_footstep2, snd_player_footstep3), 1, false);
	footstep_wait = 30;
}
else if (footstep_wait > 0)
{
	footstep_wait--;
}

#endregion