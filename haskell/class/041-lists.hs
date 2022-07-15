double :: [Int] -> [Int]
double [] = []
double (x:xs) = x * 2 : double xs

member :: [Int] -> Int -> Bool
member [] n = False
member (x:xs) n | x == n = True
                | otherwise = member xs n

digits :: String -> String
digits [] = []
digits (x:xs) | x >= '0' && x <= '9' = x : digits (xs)
              | otherwise = digits (xs)

sumPairs :: [Int] -> [Int] -> [Int]
sumPairs [] [] = []
sumPairs (x:xs) [] = (x:xs)
sumPairs [] (y:ys) = (y:ys)
sumPairs (x:xs) (y:ys) = (x + y) : sumPairs xs ys 