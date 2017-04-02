var arrayLength = array_length_2d(Sprite, typeId);
if (typeId == 1) //This is first category of ordering
{
    typeId = 6;
    itemId = 1;
}
if (typeId == 6 and itemId == arrayLength)
{
    typeId = 7;
    itemId = 1;
}
else if(typeId == 7 and itemId == arrayLength)
{
    createOnce = true;
}
