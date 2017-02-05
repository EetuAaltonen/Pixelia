var arrayLength = array_length_2d(Sprite, typeId);
if (typeId == 1) //This is first category of ordering
{
    typeId = 2;
    itemId = 1;
}
else if(typeId == 2 and itemId == arrayLength)
{
    createOnce = true;
}
