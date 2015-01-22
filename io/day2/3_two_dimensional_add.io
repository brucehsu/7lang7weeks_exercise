data := list(list(1,2,3,4), list(4,3,2,1))
sum := 0
data foreach(i, v, v foreach(j, vv, sum = sum + vv))
sum println