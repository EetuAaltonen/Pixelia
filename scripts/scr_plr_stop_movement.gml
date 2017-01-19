image_index = 0;

if (hspeed > acceleration)
{
    hspeed -= acceleration;
}
if (hspeed < -acceleration)
{
    hspeed += acceleration;
}
if (hspeed < (acceleration + 0.1) and hspeed > -(acceleration + 0.1))
{
    hspeed = 0;
}
