List myAverage := method(
  sum := 0
  call target foreach(i, v, if(v type != "Number", Exception raise("Not number"), sum = sum + v))
  if((call target size == 0), Exception raise("Empty list"), sum / (call target size))
)
data := list(1,2,3,4,5,6,7)
data myAverage println

data := list(1,2,3,4,"a",6,7)
data myAverage println
