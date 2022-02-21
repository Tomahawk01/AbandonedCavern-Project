/// @desc

if (v_speed >= 0)				// Ghost platforms
{
	with (obj_solid_jumpthrough_platform)
	{
		solid = true;
	}
	move_contact_solid(direction, 1);
	v_speed = 0;
}
else
{
	if (v_speed < 0)
	{
		with (obj_solid_jumpthrough_platform)
		{
			solid = false;
		}
	}
}
