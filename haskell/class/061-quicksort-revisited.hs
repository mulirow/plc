qs :: [Int] -> [Int]
qs [] = []
qs (x:xs) = qs [y | y <- xs, y <= x] ++ [x] ++ qs [z | z <- xs, z > x]