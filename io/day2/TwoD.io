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
  )
  call target setData(x, y, rows)
)

TwoD setData := method(x, y, data, 
  call target data := data
  call target x := x
  call target y := y
)

TwoD set := method(x, y, value,
  call target data at(y-1) atPut(x-1, value)
)

TwoD get := method(x,y,
  call target data at(y-1) at(x-1)
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
  call target data = rows
)

TwoD writeFile := method(filename,
  output := File with(filename) openForUpdating
  for(i, 1, call target y, 1,
    for(j, 1, call target x, 1,
      output write(call target get(j, i) asString(), " ")
    )
    output write("\n")
  )
  output close()
)

TwoD readFile := method(filename,
  input := File with(filename) openForReading
  rows := list()
  while(l := input readLine(), 
    col := list()
    l split(" ") foreach(i, v,
      col append(v asNumber)
    )
    rows append(col)
  )
  input close()
  a := self clone
  a setData(rows at(0) size, rows size,rows)
  a
)
