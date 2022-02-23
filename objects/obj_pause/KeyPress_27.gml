/// @desc

if (!global.pause)
{
	global.pause = 1;
	instance_deactivate_all(true);
}
else
{
	global.pause = 0;
	instance_activate_all();
}
