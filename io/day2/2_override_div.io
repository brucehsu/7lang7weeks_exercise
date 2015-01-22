Number div := Number getSlot("/")
Number / := method(num, if(num==0, 0, call target div(num)))
10/0 println
10/2 println