/// @desc

image_angle += 1;

if (global.checkpoint == id)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
		if (place_meeting(x, y, obj_player))
		{
			global.checkpoint = id;
			global.checkpointx = x;
			global.checkpointy = y;
			global.checkpointR = room;
			
			Save_Game();
			
			audio_play_sound(snd_checkpoint, 1, false);
		}
	}
