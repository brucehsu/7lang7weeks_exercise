List myAverage := method(
  sum := 0
  call target foreach(i, v, sum = sum + v)
  sum / (call target size)
)
data := list(1,2,3,4,5,6,7)
data myAverage println