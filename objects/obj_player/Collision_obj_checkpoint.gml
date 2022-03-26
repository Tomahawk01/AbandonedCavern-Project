/// @desc
var collision_sound_played = true;

		if (collision_sound_played = false && image_index = 0)
		{
			audio_play_sound(snd_player_checkpoint, 10, false);
			collision_sound_played = true;
		}
		else
		{
			collision_sound_played = false;
		}