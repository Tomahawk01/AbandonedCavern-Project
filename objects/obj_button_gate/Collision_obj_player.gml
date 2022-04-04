/// @desc

if (image_index == 0)
{
	image_index = 1;
	
	with (obj_gate)
	{
		if (gate_id == other.gate_id)
		{
			open = true;
		}
	}
}

