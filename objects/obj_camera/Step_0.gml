/// @desc Cam Logic & Parallax

if not instance_exists(target) exit;

// Smoothly move the camera to the target
x = lerp(x, target.x, CAM_SMOOTH);
y = lerp(y, target.y, CAM_SMOOTH);

// Camera stops when it reaches the end of the room
x = clamp(x, (global.view_width / 2), room_width - (global.view_width / 2));
y = clamp(y, (global.view_height / 2), room_height - (global.view_height / 2));

// Screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_lenght) * shake_magnitude));

camera_set_view_pos(view_camera[0], x - (global.view_width / 2), y - (global.view_height / 2));


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