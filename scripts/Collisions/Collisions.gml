function Collisions(){
// Horizontal
if place_meeting(x + h_speed, y, obj_solid_wall)
{
    yplus = 0;										// Slide Up
    while (place_meeting(x + h_speed, y - yplus, obj_solid_wall) && yplus <= abs(1 * h_speed))
	{
		yplus += 1;
	}
    if place_meeting(x + h_speed, y - yplus, obj_solid_wall)
    {
        while (!place_meeting(x + sign(h_speed), y, obj_solid_wall))
		{
			x += sign(h_speed);
		}
        h_speed = 0;
    }
    else
    {
        y -= yplus
    }
}
else
{
    yMinus = 0;										// Slide Down
    while(!place_meeting(x + h_speed, y + yMinus, obj_solid_wall) && yMinus <= abs(1 * h_speed))
	{
        yMinus += 0.5;
    }
    //still not sure why this needs to be here, but it does for math reasons.
    yMinus -= 0.5;
    
    //if there is a place of meeting at yMinus (speed+1) but not at yMinus (speed) AND we're already on the ground, move down
    if(place_meeting(x + h_speed, round(y + yMinus) + 1, obj_solid_wall) && !place_meeting(x + h_speed, round(y + yMinus), obj_solid_wall) && on_ground)
	{
        y += yMinus;
    }
}

x += h_speed;

// Vertical
if (place_meeting(x, y + v_speed, obj_solid_wall))
{
	while (!place_meeting(x, y + sign(v_speed), obj_solid_wall))
	{
		y += sign(v_speed);
	}
	v_speed = 0;
}
y += v_speed;

}
