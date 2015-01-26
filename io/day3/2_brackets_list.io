curlyBrackets := method(
  l := list()
  call message arguments foreach(arg,
       l append(arg)
  )
  l
)

a := {"a", "b", "c"}
a println