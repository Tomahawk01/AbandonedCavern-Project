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
walk_speed = 4;
jump_speed = 6;

coyote_counter = 0;					// for jump buffer
coyote_max = 8;

on_ladder = false;					// Ladder

on_wall = 0;						// Wall
dust = 0;
wall_jump_delay = 0;
wall_jump_delay_max = 9;

_gravity_swimming = 0;				// Water
are_in_water = false;

if (global.checkpointR == room)		// Checkpoint
{
	x = global.checkpointx;
	y = global.checkpointy;
}
