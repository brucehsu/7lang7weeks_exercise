a := TwoD clone
a dim(10,2)
a set( 1, 2, 55)
a set( 3, 1, 33)
a data println
b := a clone
b transpose
b data println
(a get(1, 2) ==  b get(2,1)) println
(a get(3, 1) ==  b get(1,3)) println