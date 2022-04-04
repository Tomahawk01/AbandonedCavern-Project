/// @desc spawn fireballs
if (timer > 0)
{
	instance_create_layer(x, y, "Traps", obj_fireball_danger_left);
}

timer--;

