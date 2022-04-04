/// @desc
if (sprite_index = spr_fireball_danger_up)
{
	y += 3;
}

if (place_meeting(x, y, obj_solid_wall) || place_meeting(x, y, obj_solid_slope) || place_meeting(x, y, obj_solid_jumpthrough_platform) || place_meeting(x, y, obj_slope_moreangle))
{
	sprite_index = spr_fireball_destroy;
}

if (floor(image_index) >= image_number - 1 && sprite_index == spr_fireball_destroy)
{
	instance_destroy();
}

if (place_meeting(x, y, obj_player) && sprite_index != spr_fireball_destroy)
{
	Player_death();
	if (!audio_is_playing(snd_player_death)) audio_play_sound(snd_player_death, 10, false);
}

