//Set the size of the game window
window_set_size(reso_width, reso_height);

//Set the resolution we've programmed the game for
var base_width = 1024;
var base_height = 768;

var aspect = reso_width/reso_height;

if (reso_width >= reso_height)
{
    reso_height = min(base_width, reso_height);
    reso_width = reso_height * aspect;
}

//Resize the application surface to our adjusted values
surface_resize(application_surface, reso_width, reso_height);
