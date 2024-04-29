# Pinatas

Imagine you’re an 8-year-old kid. You have a list of several pinatas with candies indexed from 0 to “n-1”. Every pinata has a number inside the array “pinatas”. Your mom said that you should smash all of the pinatas.

When you smash the pinata with index “i”, from it drops "pinatas[i-1] * pinatas[i] * pinatas[i+1]" candies. If “i-1” or “i+1” is out of the bounds interpret it, as pinata have number 1.

As a result, receives inputs “array of nums” and return max amount of candies you would have by smashing the pinatas wisely.
