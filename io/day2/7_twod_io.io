a := TwoD clone
a dim(10,2)
a set( 1, 2, 55)
a set( 3, 1, 33)
a data println
a writeFile("output.txt")
b := TwoD readFile("output.txt")
a data println
b data println
a println
b println