
if (instance_exists(obj_player))
{
	if (place_meeting(x, y - 1, obj_player))
	{
		break_it = true;
	}
	
	if (break_it)
	{
		shaker_timer--;
		x += random_range(-0.5, 0.5);

		if (shaker_timer <= 0)
		{
			y += Approach(0, 10, 5);
		}
	}
}
