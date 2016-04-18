//Particle System
part_system_depth(global.ps, -300);
global.pt_Blood = part_type_create();
var partBlood = global.ps;

//Particle
part_type_shape(partBlood, pt_shape_disk);
part_type_size(partBlood, .05, .08, 0, 0);
part_type_colour2(partBlood, c_red, c_maroon);
part_type_speed(partBlood, 2, 5, -.1, 0);
part_type_direction(partBlood, 0, 360, 0, 0);
part_type_gravity(partBlood, .2, 270);
part_type_life(partBlood, 10, 20);
 
/*
//Particle Emmiter
partBlood_emit = part_emitter_create(partBlood_sys)
part_emitter_region(partBlood_sys, partBlood_emit, x-5, x+5, y-5, y+5, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_stream(partBlood_sys, partBlood_emit, partBlood, 1);

global.p1 = part_type_create();
 part_type_shape(global.p1, pt_shape_square);
 part_type_size(global.p1, 1, 3, 0, 0);
 part_type_scale(global.p1, 1, 1);
 part_type_colour1(global.p1, c_white);
 part_type_alpha2(global.p1, 1, 0);
 part_type_speed(global.p1, 2, 4, 0, 0);
 part_type_direction(global.p1, 0, 180, 0, 0);
 part_type_gravity(global.p1, 0.20, 270);
 part_type_orientation(global.p1, 0, 0, 0, 0, 1);
 part_type_blend(global.p1, 1);
 part_type_life(global.p1, 15, 60);*/
