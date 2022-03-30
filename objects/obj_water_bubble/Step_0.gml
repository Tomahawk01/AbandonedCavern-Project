/// @desc

y -= float_speed;
x += random_range(-1, 1);

image_yscale -= 0.025;
image_xscale = image_yscale;

live_time -= 1;

if (live_time <= 0 || image_yscale <= 0)
{
	instance_destroy();
}
