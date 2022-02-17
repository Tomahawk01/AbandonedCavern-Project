/// @desc Cam Logic & Parallax

if not instance_exists(target) exit;

x = lerp(x, target.x, 0.1);
y = lerp(y, target.y - global.view_height / 4, 0.1);

x = clamp(x, global.view_width / 2, room_width - global.view_width / 2);					// Camera stops when it reaches the end of the room (horizontal)
y = clamp(y, global.view_height / 2, room_height - global.view_height / 2);					// Camera stops when it reaches the end of the room (vertical)

camera_set_view_pos(view_camera[0], x - global.view_width / 2, y - global.view_height / 2);

// Parallax effect for bg
/*
if (layer_exists("Mountain"))
{
	layer_x("Mountain", x / 2);
}

if (layer_exists("Trees_depth3"))
{
	layer_x("Trees_depth3", x / 1.7);
}

if (layer_exists("Trees_depth2"))
{
	layer_x("Trees_depth2", x / 1.4);
}

if (layer_exists("Trees_depth1"))
{
	layer_x("Trees_depth1", x / 1.2);
}
*/