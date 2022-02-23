/// @desc Player core logic

// Player inputs
var h_direction = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var jump_held = keyboard_check(vk_space);
var up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

on_ground = place_meeting(x, y + 1, obj_solid_wall);											// Checking if the player is on ground
on_wall = place_meeting(x + 1, y, obj_solid_wall) - place_meeting(x - 1, y, obj_solid_wall);	// Checking if the player is on a wall
var on_moving_platform = instance_place(x, y + max(1, v_speed), obj_moving_platform);			// For moving platforms

#region // Animations & Movement

wall_jump_delay = max(wall_jump_delay-1, 0);

if (wall_jump_delay == 0)
{
	if (h_direction != 0) 
	{
		image_xscale = h_direction;
	}

	h_speed = h_direction * walk_speed;
}
// Wall jump
if (on_wall != 0) && (!on_ground) && (jump)
{
	wall_jump_delay = wall_jump_delay_max;
	
	h_speed = -on_wall * h_speed_wjump;
	v_speed = v_speed_wjump;
}

// Vertical movement
var _gravity_final = _gravity;
var v_speed_max_final = 7;

if (on_wall != 0) && (v_speed > 0)
{
	_gravity_final = _gravity_wall;
	v_speed_max_final = v_speed_max_wall;
}

v_speed += _gravity_final;
v_speed = clamp(v_speed, -v_speed_max_final, v_speed_max_final);

// Moving platforms
if (on_moving_platform && bbox_bottom <= on_moving_platform.bbox_top)
{
	// Add velocity
	x += on_moving_platform.moveX;
	y += on_moving_platform.moveY;
}

// Checks when on ground or not
if (on_ground)
{
	coyote_counter = coyote_max;								// When on gound reset coyote jump buffer
	if (h_direction != 0)
	{
		sprite_index = spr_player_run;
		image_speed = 1;
	}
	else sprite_index = spr_player_idle;
}
else
{
	coyote_counter -= 1;										// When jumping decrease buffer by 1 every frame
	
	if (on_wall != 0)
	{
		sprite_index = spr_player_wall;
		image_xscale = on_wall;
		
		var side = bbox_left;
		if (on_wall == 1)
		{
			side = bbox_right;
		}
		dust++;
		
		if ((dust > 2) && (v_speed > 0) && (on_ladder = false))
		{
			with (instance_create_layer(side, bbox_top, "Player", obj_player_dust))
			{
				other.dust = 0;
				hspeed = -other.on_wall * 0.5;
			}
		}
	}
	else
	{
		dust = 0;
		if (on_ladder == false)
		{
			sprite_index = spr_player_jump;
		}
	}
	
	if (v_speed < 0 && !jump_held)								// Smooth jumping
	{
		v_speed = max(v_speed, -jump_speed / 2);
	}
}

if (jump && coyote_counter > 0)									// Jumping ** while jump buffer is higher than 0 we can jump
{
	v_speed = -7;
	
	repeat (5)													// Dust from player jump
	{
		with (instance_create_layer(x, bbox_bottom, "Player", obj_player_dust))
		{
			v_speed = 0;
		}
	}
}

// Ladder
if (up || down)
{
	if place_meeting(x, y, obj_ladder) on_ladder = true;
}

if (on_ladder)
{
	sprite_index = spr_player_ladder;
	image_speed = 0;
	v_speed = 0;
	h_speed = 0;												// For lock on the ladder
	if (up)
	{
		v_speed = -2;
		image_speed = 1;
	}
	if (down)
	{
		v_speed = 2;
		image_speed = 1;
	}
	if !place_meeting(x, y, obj_ladder) on_ladder = false;
	if (jump)
	{
		on_ladder = false;
		v_speed = -4;											// For jumping off the ladder (when pressing up or down and try jump off nothing happens) !!!!!
	}
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
