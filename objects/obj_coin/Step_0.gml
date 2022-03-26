/// @desc
 
// Collect coin
if (place_meeting(x, y, obj_player) && !collected)
{
	obj_player.coins++;
	image_index = 0;
	collected = true;
	audio_play_sound(snd_coin_collect, 10, false);
}

// Collected
if (collected)
{
	sprite_index = spr_collectible_effect;
	
	if (floor(image_index) >= image_number - 1)
	{
		instance_destroy();
	}
}
