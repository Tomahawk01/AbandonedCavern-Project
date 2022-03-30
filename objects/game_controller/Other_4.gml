/// @desc

if (!instance_exists(obj_surface_light) && room != rm_menu)
{
	instance_create_depth(x, y, 99, obj_surface_light);
}
else if (room == rm_menu)
{
	instance_destroy(obj_surface_light);
}
