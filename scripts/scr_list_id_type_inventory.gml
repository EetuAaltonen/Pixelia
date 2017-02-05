var arrayLength = array_length_2d(Sprite, typeId);
if (typeId == 1 and itemId == arrayLength) //This is first category of ordering
{
    typeId = 2;
    itemId = 1;
}
else if(typeId == 2 and itemId == arrayLength)
{
    typeId = 3;
    itemId = 1;
}
else if(typeId == 3 and itemId == arrayLength)
{
    typeId = 4;
    itemId = 1;
}
else if(typeId == 4 and itemId == arrayLength)
{
    typeId = 5;
    itemId = 1;
}
else if(typeId == 5 and itemId == arrayLength)
{
    createOnce = true;
}
