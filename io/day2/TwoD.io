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
