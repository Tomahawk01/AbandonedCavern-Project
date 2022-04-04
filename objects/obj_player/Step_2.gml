/// @desc Fix for vertical movement
// Moving platforms
if (on_moving_platform && bbox_bottom <= on_moving_platform.bbox_top)
{
	on_ground = true;

	// Add velocity
	x += on_moving_platform.moveX;
	y += on_moving_platform.moveY;
}

