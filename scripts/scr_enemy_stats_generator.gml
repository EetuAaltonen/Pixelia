//Stats generator
var def, str, mag, def_, str_, mag_;

def = 0;
str = 0;
mag = 0;

def_ = 0;
str_ = 0;
mag_ = 0;

rand = random_range(1, 60);
if (rand < 10 )
{
    str_ = 1;
}
else if (rand >= 10 and rand <= 20)
{
    def_ = 1;
}
else if (rand > 20 and rand < 30)
{
    mag_ = 1; 
}

//Strength
str = 1 + str_;

//Defence
def = 1 + def_;

//Magic
mag = 1 + mag_;

return str_;
return def_;
return mag_;
