/// @desc

part_number = random_range(3, 7);

if (instance_exists(obj_player))
{
	if (place_meeting(x, y - 1, obj_player) && break_it == false)
	{
		audio_play_sound(snd_ground_falling, 10, false);

		break_it = true;
	}
	
	if (break_it)
	{
		repeat (part_number)
		{
			instance_create_layer(x + random_range(-2, 2), y + 1, "Fade", obj_particle_falling_platform);
			instance_create_layer(x + 64 + random_range(-2, 2), y + 1, "Fade", obj_particle_falling_platform);
			instance_create_layer(x + 128 + random_range(-2, 2), y + 1, "Fade", obj_particle_falling_platform);
			instance_create_layer(x + 192 + random_range(-2, 2), y + 1, "Fade", obj_particle_falling_platform);
			instance_create_layer(x + 256 + random_range(-2, 2), y + 1, "Fade", obj_particle_falling_platform);
			instance_create_layer(x + 320 + random_range(-2, 2), y + 1, "Fade", obj_particle_falling_platform);
			instance_create_layer(x + 384 + random_range(-2, 2), y + 1, "Fade", obj_particle_falling_platform);
		}
		
		shaker_timer--;
		x += random_range(-0.7, 0.7);

		if (shaker_timer <= 0)
		{
			y += Approach(0, 100, 10);
		}
	}
}

