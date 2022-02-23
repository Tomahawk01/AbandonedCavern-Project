/// @desc

// Select target
var _targetX = endX;
var _targetY = endY;

if (going_to_start)
{
	_targetX = startX;
	_targetY = startY;
}

// Set movement
moveX = sign(_targetX - x) * current_speed;
moveY = sign(_targetY - y) * current_speed;
