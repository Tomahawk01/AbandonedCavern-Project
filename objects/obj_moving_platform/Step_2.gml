/// @desc
// Move
x += moveX;
y += moveY;

// Check if it's at start point
if (going_to_start && point_distance(x, y, startX, startY) < current_speed)
{
	going_to_start = false;
	current_speed = 0;
	alarm[0] = wait_time;
}
// Check if it's at ending point
else if (!going_to_start && point_distance(x, y, endX, endY) < current_speed)
{
	going_to_start = true;
	current_speed = 0;
	alarm[0] = wait_time;
}
