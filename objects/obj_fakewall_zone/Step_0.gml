/// @desc

var isColliding = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, 0, 0);

if (isColliding != noone)
{
	thisAlpha -= addUp;
}
else
{
	thisAlpha += addUp;
}

thisAlpha = clamp(thisAlpha, 0.4, 1);

