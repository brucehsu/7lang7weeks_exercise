TwoD := Object clone
TwoD dim := method(x, y,
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

a := TwoD
a dim(10,2)
a data println
a set( 1, 2, 55)
a set( 3, 1, 33)
a data println
a get( 3, 1) println
