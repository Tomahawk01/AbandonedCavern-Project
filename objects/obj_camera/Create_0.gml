/// @desc Set up camera

// Enable views
view_enabled = true;
view_visible[0] = true;

// Resize application surface to prevent bug with pixel stretching
surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE);

x = global.checkpointx;
y = global.checkpointy;

target = obj_player;

global.view_height = camera_get_view_height(view_camera[0]);
global.view_width = camera_get_view_width(view_camera[0]);

// Screen shake
shake_lenght = 0;
shake_magnitude = 0;
shake_remain = 0;

