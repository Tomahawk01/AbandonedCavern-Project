/// @desc Variables

footstep_wait = 0;

v_speed = 0;
v_speed_wjump = -5;
v_speed_max_wall = 4;
h_speed = 0;
h_speed_wjump = 4;
_gravity = 0.3;
_gravity_normal = 0.3;
_gravity_wall = 0.1;
walk_speed_max = 4;
walk_speed = walk_speed_max;
walk_speed_water = 2;
jump_speed = 6;

coyote_counter = 0;					// for coyote time
coyote_max = 8;

on_ladder = false;					// Ladder

on_wall = 0;						// Wall
dust = 0;
wall_jump_delay = 0;
wall_jump_delay_max = 7;

dash_duration = 0;					// Dash
dash_speed_max = 9;
dash_speed = dash_speed_max;
dash_speed_water = 5.5;
dash_cooldown = 0;

_gravity_swimming = 0;				// Water
are_in_water = false;

if (global.checkpointR == room)		// Checkpoint
{
	x = global.checkpointx;
	y = global.checkpointy;
}
