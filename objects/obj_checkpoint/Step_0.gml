/// @desc

image_angle += 1;

if (place_meeting(x, y, obj_player))
{
	global.checkpoint = id;
	global.checkpointx = x;
	global.checkpointy = y;
	global.checkpointR = room;
}

if (global.checkpointR == room)
{
	if (global.checkpoint == id)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}
