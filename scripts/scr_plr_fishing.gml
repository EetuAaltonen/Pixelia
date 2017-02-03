solid = false;
mask_index = spr_no_mask;
hspeed = 0;
vspeed = 0;
x = instance_nearest(x, y, obj_fishing_spot).x;
y = (instance_nearest(x, y, obj_fishing_spot).y)-5;
sprite_index = spr_plr_fishing;
image_xscale = (instance_nearest(x, y, obj_fishing_spot)).direction_of_vein;
