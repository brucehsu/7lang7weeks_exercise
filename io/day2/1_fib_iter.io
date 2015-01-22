fib := method(lvl,
  sum := list(1, 1)
  for(i, 2, lvl-1, 1, sum append(sum at(i-2) + sum at(i-1)))
  sum at(lvl-1)
)
fib(8) println