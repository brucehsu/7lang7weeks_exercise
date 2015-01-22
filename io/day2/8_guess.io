i := 0
ans := Random value (100) round
while(i<10,
  guess := File clone standardInput readLine("Enter your guess(1-100): ") asNumber
  while(guess<1 or guess>100, guess := File clone standardInput readLine("Enter your guess(1-100): ") asNumber)
  (guess > ans) ifTrue("colder" println)
  (guess < ans) ifTrue("hotter" println)
  if(guess==ans, "Right on!" println; return)
  i = i + 1
)
"Better luck next time!" println