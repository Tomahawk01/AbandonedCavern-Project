/// @desc Particle Setup	 NOTE: first place the obj_particle_setup

particle_system = part_system_create_layer("Weather", 0);

#region // Rain

particleType_Rain = part_type_create();

part_type_sprite(particleType_Rain, spr_particle_rain_hard, 0, 0, 1);
part_type_size(particleType_Rain, 1, 1, 0, 0);
part_type_gravity(particleType_Rain, 0.05, 250);
part_type_life(particleType_Rain, 200, 260);
part_type_orientation(particleType_Rain, 330, 330, 0, 0, 0);

#endregion
