/// @desc

if (!instance_exists(obj_surface_light) && room != rm_menu && room != rm_options)
{
	instance_create_depth(x, y, 99, obj_surface_light);
}

if (room == rm_menu || room = rm_options)
{
	instance_destroy(obj_surface_light);
}
