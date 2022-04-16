/// @desc

if (is_being_dragged)
{
	if (mouse_x > x)
	{
		var xx = abs(x - mouse_x);
		var amount = xx / sprite_width;
	
		amount = clamp(amount, 0, 1);
		amount_current = amount;
	}
	else
	{
		amount_current = 0;
	}
}

