/// @desc
if (place_meeting(x, y, obj_player))
{
	Player_death();
	if (!audio_is_playing(snd_player_death)) audio_play_sound(snd_player_death, 10, false);
}
