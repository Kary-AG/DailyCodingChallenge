
myLength:: [Int] -> Int
myLength [] = 0
myLength [x] = 1
myLength (x:xs) = 1 + myLength xs

myMaximum:: [Int]-> Int
myMaximum [x] = x
myMaximum (x:y:xs)
  | (x>y) == True = myMaximum (x:xs)
  |otherwise = myMaximum (y:xs)

--average:: (Integral a, Floating b) => [a] -> [b]
--average [] =
--average [x] = x
--average (x:xs) =x + average xs


buildPalindrome::[Int]->[Int]
buildPalindrome [] = []
buildPalindrome [x] = [x]
buildPalindrome xs =  rverse xs ++ xs

rverse::[Int]->[Int]
rverse [] = []
rverse (x:xs) = rverse xs ++ [x]

remove::[Int]->[Int]->[Int]
remove [] _ = []
remove (x:xs) xs'
  | x `elem` xs'= remove xs xs'
  | otherwise = [x] ++ remove xs xs'

flatten::[[Int]]->[Int]
flatten [[]] =[]
flatten [[x]]= [x]
flatten (x:xs) = x ++ flatten xs

oddsNevens::[Int]->([Int],[Int])
oddsNevens [] = ([],[])
oddsNevens xs = (listOdd xs, listEven xs)

listOdd  xs = [x | x <- xs, odd x == True]
listEven xs = [x | x <-xs, even x == True]

factores m = [x | x<-[1..m], m`mod` x == 0]

primos :: Int -> [Int]
primos n = [x | x <- [2..n], esPrimo x]
  where esPrimo y = factores y == [1,y]


primeDivisors:: Int -> [Int]
primeDivisors n = [x | x<-primos n, n`mod` x == 0]
