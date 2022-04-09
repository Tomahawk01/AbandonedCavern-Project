/// @desc

y = y + sin(timer * 0.04) * 0.17;

timer++;

// Collect coin
if (place_meeting(x, y, obj_player) && !collected)
{
	global.coins++;
	image_index = 0;
	collected = true;
	audio_play_sound(snd_coin_collect, 10, false);
	ds_map_replace(game_controller.save_data, key, true);
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
