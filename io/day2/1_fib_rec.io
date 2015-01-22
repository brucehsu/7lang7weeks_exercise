fib := method(lvl, 
  if(lvl<=2, 1, fib(lvl-2) + fib(lvl-1))
)
fib(8) println