TwoD := Object clone
TwoD dim := method(x, y,
  self x := x
  self y := y
  rows := list()
  for(i, 1, y, 1,
    col := list()
    for(j, 1, x, 1
      col append(0)
    )
    rows append(col)
    self data := rows
  )
)

TwoD set := method(x, y, value,
  self data at(y-1) atPut(x-1, value)
)

TwoD get := method(x,y,
  self data at(y-1) at(x-1)
)

TwoD transpose := method(
  rows := list()
  for(i, 1, self x, 1, 
    col := list()
    for(j, 1, self y, 1,
      col append(self get(i, j))
    )
    rows append(col)
  )
  self data = rows
)

a := TwoD
a dim(10,2)
a set( 1, 2, 55)
a set( 3, 1, 33)
a data println
b := a clone
b transpose
b data println
(a get(1, 2) ==  b get(2,1)) println
(a get(3, 1) ==  b get(1,3)) println