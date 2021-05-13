-- |


absValue:: Int -> Int
absValue x
  | x<0 = x*(-1)
  | otherwise = x

power::Int -> Int-> Int
power x 0 = 1
power x p = x * power x (p-1)

isPrime:: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime n
  |  (length [x | x<-[2.. n-1], mod n x == 0]) >0 = False
  | otherwise = True

slowFib:: Int -> Int
slowFib 0 = 0
slowFib 1 = 1
slowFib n = slowFib(n-1) + slowFib(n-2)

quickFib::Int->Int
quickFib n = fibs!!n
  where fibs = 0 : 1 : zipWith(+) fibs (tail fibs)
