//Create particle system
wood_dust_particles = part_system_create();
part_system_depth(wood_dust_particles, -100);

//Particle types
wood_dust = part_type_create();
part_type_shape(wood_dust, pt_shape_cloud);
part_type_orientation(wood_dust, 0, 0, 0, 0, 1);
part_type_size(wood_dust, 0.05, 0.25, 0, 0);
part_type_colour1(wood_dust, c_olive);
part_type_life(wood_dust, 50, 80);
part_type_speed(wood_dust, 0.1, 0.2, 0, 0);
part_type_direction(wood_dust, 0, 359, 0, 4);
part_type_gravity(wood_dust, 0.02, 90);
part_type_blend(wood_dust, 1);

//Emitter
wood_dust_emitter = part_emitter_create(wood_dust_particles);
part_emitter_region(wood_dust_particles, wood_dust_emitter, x-20, x+20, y+35, y+35, ps_shape_ellipse, ps_distr_linear);
