/// @desc

image_alpha -= 0.02;
image_xscale -= 0.025;
image_yscale -= 0.025;
image_angle += angleDirection;

if (image_alpha <= 0)
{
	instance_destroy();
}

