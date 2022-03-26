/// @desc

if (fadeout)		// From clear to black, fade out
{
	if (a < 1)		// If not completely black
	{
		a += fadeoutrate;
	}
	else
	{
		a = 1;		// Set to 100% black screen
		room_goto(targetroom);
	}
}
else				// From black to clear, fade in
{
	if (a > 0)		// If not completely clear
	{
		a -= fadeoutrate;
	}
	else
	{
		a = 0;		// Set to 0% black screen
		instance_destroy();
	}
}
