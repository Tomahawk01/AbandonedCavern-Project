
part_number = random_range(3, 7);

if (instance_exists(obj_player))
{
	if (place_meeting(x, y - 1, obj_player) && break_it == false)
	{
		repeat (part_number)
		{
			instance_create_layer(x + 48 + random_range(-2, 2), y + 14, "Collectibles", obj_particle_falling_platform);
		}
		repeat (part_number)
		{
			instance_create_layer(x + 1 + random_range(-2, 2), y + 14, "Collectibles", obj_particle_falling_platform);
		}
		
		audio_play_sound(snd_wood_platform_break, 10, false);

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
