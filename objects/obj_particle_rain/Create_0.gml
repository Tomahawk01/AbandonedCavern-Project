/// @desc NOTE: first place the obj_particle_setup

xStart = camera_get_view_x(view_camera[0]);
yStart = camera_get_view_y(view_camera[0]);

cameraWidth = camera_get_view_width(view_camera[0]);

emitter_rain = part_emitter_create(obj_particle_setup.particle_system);

part_emitter_region(obj_particle_setup.particle_system, emitter_rain, xStart - 800, xStart + cameraWidth + room_width, yStart - 50, yStart - 2150, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(obj_particle_setup.particle_system, emitter_rain, obj_particle_setup.particleType_Rain, 30);
