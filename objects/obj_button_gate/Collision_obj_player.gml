/// @desc

if (image_index == 0)
{
	image_index = 1;
	audio_play_sound(snd_gate_switcher, 10, false);
	
	with (obj_gate)
	{
		if (gate_id == other.gate_id)
		{
			open = true;
		}
	}
}

